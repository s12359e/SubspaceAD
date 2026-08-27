# AGENT.md

Guidance for AI coding agents (and new contributors) working in this repository.

## Project Overview

**SubspaceAD** is the official implementation of *"SubspaceAD: Training-Free
Few-Shot Anomaly Detection via Subspace Modeling"* (CVPR 2026). It detects
visual anomalies in industrial inspection images with only a few normal
exemplars, with **no training**:

1. Extract patch-level features from normal images with a frozen DINO backbone
   (DINOv2 or DINOv3 ViT via HuggingFace `transformers`).
2. Fit a PCA subspace to those features to model normal appearance.
3. Score anomalies at inference time by the reconstruction residual against
   that subspace.

This is research code accompanying a published paper: prioritize correctness
and reproducibility of results over refactoring. Do not change experiment
defaults, published numbers in the README, or the citation block unless asked.

## Repository Layout

```
main.py                      # Entry point: benchmark loop + all evaluation metrics
                             #   (AUROC, F1, AP, AUPRO, threshold selection)
src/subspacead/
├── config.py                # argparse CLI definition (all flags live here)
├── core/
│   ├── extractor.py         # FeatureExtractor: HF backbone loading, patch tokens,
│   │                        #   saliency masks, layer aggregation
│   ├── pca.py               # PCAModel (two-pass streaming GPU PCA), KernelPCAModel
│   └── patching.py          # Tiled (patch-wise) processing of large images
├── data/
│   ├── datasets.py          # MVTec-AD / MVTec-AD2 / VisA dataset handlers
│   └── transforms.py        # k-shot augmentation transforms
├── post_process/
│   ├── scoring.py           # Anomaly score computation, map post-processing
│   └── specular.py          # Specular reflection filter
└── utils/                   # Logging, run naming, visualization
scripts/                     # SLURM/bash scripts reproducing all paper results
tools/prepare_visa.py        # VisA folder-structure preprocessing
```

## Setup and Commands

```bash
# Environment (python 3.10)
pip install -r requirements.txt
pip install -e .

# Quick smoke run (1-shot, one category) — requires a GPU and datasets on disk
python main.py \
    --dataset_name mvtec_ad \
    --dataset_path datasets/mvtec-ad \
    --categories bottle \
    --k_shot 1 --image_res 672 --aug_count 30 --pca_ev 0.99 \
    --outdir results/debug_run

# Full benchmarks
bash scripts/benchmark_few_shot.sh        # DINOv2-giant, paper setting
bash scripts/benchmark_few_shot_dinov3.sh # DINOv3 ViT-B/16
```

- There is **no test suite and no CI**. Minimum validation for a change:
  `python -m py_compile` on touched files, plus a smoke run if a GPU and
  dataset are available.
- `main.py` must be run **from the repository root**: it imports via
  `from src.subspacead...`, while modules inside `src/` import via
  `from subspacead...` (resolved by the editable install). Keep both styles
  as-is; changing one side breaks the other.
- Results land in `--outdir` as CSV summaries plus a log file; run names are
  auto-generated from the arguments (see `utils/common.py`).

## Backbones: DINOv2 vs DINOv3

| | DINOv2 | DINOv3 (ViT only) |
|---|---|---|
| Checkpoints | `facebook/dinov2-with-registers-*` | `facebook/dinov3-vit*-pretrain-lvd1689m` |
| Patch size | 14 | 16 |
| HF access | public | **gated** — needs `hf auth login` / `HF_TOKEN` |
| transformers | any recent | **>= 4.56** |

- Current CLI defaults: `facebook/dinov3-vitb16-pretrain-lvd1689m` with
  `--layers "2,5,8,11"`. The paper's results use DINOv2-giant with
  `--layers "-12,...,-18"` (set explicitly in `scripts/benchmark_few_shot.sh`).
- `--image_res` should be a multiple of the backbone's patch size (e.g. 672
  works for both: 48×14 and 42×16). `FeatureExtractor.effective_resolution()`
  snaps non-multiples to the nearest multiple and warns.
- DINOv3 **ConvNeXt** variants have no patch-token grid and are rejected at
  load time on purpose.

## Sharp Edges

- **Layer index semantics:** `--layers` indexes the HF `hidden_states` tuple,
  where index 0 is the patch embedding output and positive `i` is the output
  of the *i-th transformer block (1-based)*; negative indices count from the
  last block (`-1` = final block). So `"2,5,8,11"` on a 12-block ViT-B does
  NOT include the final block. Keep this convention; document any change
  loudly in `config.py` help text and the README.
- **Eager attention is required.** The DINO saliency mask reads real attention
  weights, so `extractor.py` loads the model with
  `attn_implementation="eager"`. Do not switch to SDPA/FlashAttention without
  reworking `_get_saliency_mask`.
- **Token layout is validated** in `extract_tokens` (1 CLS + N register +
  h_p×w_p patch tokens). A new backbone with a different layout must update
  `drop_front` logic, not bypass the check.
- **PCA runs in float64 on GPU** (`core/pca.py`) using a two-pass streaming
  algorithm; memory, not compute, is the usual bottleneck. Don't silently
  lower the dtype — it changes results.
- **Evaluation metrics live in `main.py`** (AUPRO implementation included).
  They match paper numbers; treat them as reference implementations and don't
  "simplify" them.
- **Seeding matters:** `--seed` controls the k-shot exemplar selection, so
  results are seed-sensitive by design. Benchmark scripts pin `--seed 42`.
- Build artifacts (`__pycache__/`, `*.egg-info/`) are gitignored; don't add
  them (or other generated files) to commits.

## Conventions

- Python is formatted Black-style (88 cols, double quotes); match the existing
  logging style (`logging.info/warning`) rather than `print` in library code.
- New CLI flags go in `src/subspacead/config.py` inside the matching argument
  group, with a help string.
- New experiment scripts follow the pattern of `scripts/benchmark_*.sh`
  (SLURM header, conda activate, dataset path variables at the top).
- README documents user-facing behavior (new flags, new backbones); update it
  in the same change.
