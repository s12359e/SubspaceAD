# REBUILD.md — Rebuilding This Repository From a Single File

This document contains **every tracked file of the SubspaceAD repository**
embedded verbatim, plus a SHA-256 manifest. Running the embedded script on any
machine with `bash` and `python3` recreates all 30 files
**byte-for-byte identical** to the originals (including executable bits and
files without trailing newlines) and verifies them automatically.

Prefer `git clone` when the machine has GitHub access — this file is for
offline/air-gapped machines. `REBUILD.md` itself is not part of the rebuilt
file set.

## Usage

```bash
# 1. Extract the embedded script from this file
awk '/^# >>> REBUILD-SCRIPT-STAR[T]/{f=1;next} /^# <<< REBUILD-SCRIPT-EN[D]/{f=0} f' \
    REBUILD.md > rebuild.sh

# 2. Run it inside the (empty) directory where the repo should appear
mkdir -p SubspaceAD && cd SubspaceAD
bash ../rebuild.sh
# → prints "OK: all 30 files verified" on success
```

The script is idempotent: re-running it overwrites the files with the same
content. It fails loudly (non-zero exit) if any rebuilt file's checksum
differs from the manifest.

## File manifest (SHA-256)

| File | SHA-256 |
|---|---|
| `.gitignore` | `88a92469dbbfb8484d797b2b078a51e731932c1a26ccd39c95e78395a92f2aa9` |
| `AGENT.md` | `a4c5fdbb6a57facabb10c7e8d22ebf4890bb92f2f0e21c522e60db1e556a805f` |
| `README.md` | `efbfc82bd1a3b193db29d3b140cc9fbc0c9e32720bf095d9b5b66d1dca3c4c15` |
| `main.py` | `25f03bdb7cdd1face8be6cc67ab7435a63f444bd559c853e2a0a85d94026c207` |
| `pyproject.toml` | `e59890ace9303bf3743d083a3842ef77f417e572ada9308c5033461e37490f82` |
| `requirements.txt` | `a7c007871eea777ac7e3fe41aa5d297744c53a87c2b8c2bacf597f2521f87852` |
| `scripts/aggregation_ablation.sh` | `c2bd9aba73ccef36cb40fa8641b8daebc9f3fd09ad42d9974d4416e2435087d6` |
| `scripts/backbone_ablation.sh` | `7eb9a1e3a0ee72aeebfa13bc64fe0d4b1afc8a02dbdadccfd8ef4841908a20fd` |
| `scripts/benchmark_batched0shot.sh` | `d1b2c30be03bd758c3010b2d39ba39a03bbef257580dda5300ffd54caecbd22c` |
| `scripts/benchmark_few_shot.sh` | `40efcfc7f868b1a43497c116939bf95183146797b2c5a7b658dc1cac126df2e6` |
| `scripts/benchmark_few_shot_dinov3.sh` | `dfb7b6265f05fec89c66e545c1d6d114eadcdb4077fa1e6c9127c66e4f0bc7fa` |
| `scripts/benchmark_full_shot.sh` | `b86a435f0da2d96fd02e080f63dba3d942488504b18ab0a176b3ae09b7d64ccc` |
| `scripts/ev_ablation.sh` | `aa6c80915a63ceb124bf2878a566e42f55679383cedcb300a59e9c7f4fe16582` |
| `scripts/resolution_ablation.sh` | `8e94bce0af821d514330835855471f26efc65879fdea5614dc28c5b548df3e1d` |
| `src/subspacead/__init__.py` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `src/subspacead/config.py` | `f7efac7373c7904ef68738f43a03b195215c477800acd93cd3de23eefa62abed` |
| `src/subspacead/core/__init__.py` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `src/subspacead/core/extractor.py` | `c579946f8bf791d6021a9d2bf929ec800bcf17a3bd594084f0581b2eb7abdc3a` |
| `src/subspacead/core/patching.py` | `e21350a524a39a7e6dbe7ec7b9d81aa75a22af4e5f5d0c968ab61677b9ce5b7e` |
| `src/subspacead/core/pca.py` | `e83e7b20eba67a691fa45da46ab49305f174ad05fec454414a684843b41396f6` |
| `src/subspacead/data/__init__.py` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `src/subspacead/data/datasets.py` | `1f857690b538cdd3638f09ccdf232d725c2b15b5b093d2a0d6fed557313e4b62` |
| `src/subspacead/data/transforms.py` | `aeabe4ef72384b1e858d73943f77151ded0301fc817583b4b6d9f5d0a7fb1338` |
| `src/subspacead/post_process/__init__.py` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `src/subspacead/post_process/scoring.py` | `d29da82ae313bad4e95ecec09c4efddc0abd13aa86086c1e538bea76bfe5113f` |
| `src/subspacead/post_process/specular.py` | `1063bb2a95b1707a463903f917099774f56c2c564610c6d51ad42db9b5a3d6fc` |
| `src/subspacead/utils/__init__.py` | `e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855` |
| `src/subspacead/utils/common.py` | `252f478924c4d28f876d7aa71a578cc2044af6bbfdd5cbaf4a6d5ea3fef53b68` |
| `src/subspacead/utils/viz.py` | `7e6404cb3c2cf49e6aa44701bbfb9beb4f7a5b93502e0dbf0c92995a2452fa6e` |
| `tools/prepare_visa.py` | `2cd1def189e691709991f77acba78d5384f7379884bdc4140d220ddde404348e` |

Empty files: `src/subspacead/__init__.py`, `src/subspacead/core/__init__.py`, `src/subspacead/data/__init__.py`, `src/subspacead/post_process/__init__.py`, `src/subspacead/utils/__init__.py`.
Executable (`chmod +x`): `scripts/benchmark_batched0shot.sh`, `scripts/benchmark_few_shot.sh`, `scripts/benchmark_few_shot_dinov3.sh`, `scripts/benchmark_full_shot.sh`.

## Embedded rebuild script

````bash
# >>> REBUILD-SCRIPT-START
#!/usr/bin/env bash
set -euo pipefail

mkdir -p 'scripts' 'src/subspacead' 'src/subspacead/core' 'src/subspacead/data' 'src/subspacead/post_process' 'src/subspacead/utils' 'tools'

cat > '.gitignore' <<'__EOF_REBUILD__'
# Byte-compiled / optimized / DLL files
__pycache__/
*.py[codz]
*$py.class

# C extensions
*.so

# Distribution / packaging
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
share/python-wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# PyInstaller
#   Usually these files are written by a python script from a template
#   before PyInstaller builds the exe, so as to inject date/other infos into it.
*.manifest
*.spec

# Installer logs
pip-log.txt
pip-delete-this-directory.txt

# Unit test / coverage reports
htmlcov/
.tox/
.nox/
.coverage
.coverage.*
.cache
nosetests.xml
coverage.xml
*.cover
*.py.cover
*.lcov
.hypothesis/
.pytest_cache/
cover/

# Translations
*.mo
*.pot

# Django stuff:
*.log
local_settings.py
db.sqlite3
db.sqlite3-journal

# Flask stuff:
instance/
.webassets-cache

# Scrapy stuff:
.scrapy

# Sphinx documentation
docs/_build/

# PyBuilder
.pybuilder/
target/

# Jupyter Notebook
.ipynb_checkpoints

# IPython
profile_default/
ipython_config.py

# pyenv
#   For a library or package, you might want to ignore these files since the code is
#   intended to run in multiple environments; otherwise, check them in:
# .python-version

# pipenv
#   According to pypa/pipenv#598, it is recommended to include Pipfile.lock in version control.
#   However, in case of collaboration, if having platform-specific dependencies or dependencies
#   having no cross-platform support, pipenv may install dependencies that don't work, or not
#   install all needed dependencies.
# Pipfile.lock

# UV
#   Similar to Pipfile.lock, it is generally recommended to include uv.lock in version control.
#   This is especially recommended for binary packages to ensure reproducibility, and is more
#   commonly ignored for libraries.
# uv.lock

# poetry
#   Similar to Pipfile.lock, it is generally recommended to include poetry.lock in version control.
#   This is especially recommended for binary packages to ensure reproducibility, and is more
#   commonly ignored for libraries.
#   https://python-poetry.org/docs/basic-usage/#commit-your-poetrylock-file-to-version-control
# poetry.lock
# poetry.toml

# pdm
#   Similar to Pipfile.lock, it is generally recommended to include pdm.lock in version control.
#   pdm recommends including project-wide configuration in pdm.toml, but excluding .pdm-python.
#   https://pdm-project.org/en/latest/usage/project/#working-with-version-control
# pdm.lock
# pdm.toml
.pdm-python
.pdm-build/

# pixi
#   Similar to Pipfile.lock, it is generally recommended to include pixi.lock in version control.
# pixi.lock
#   Pixi creates a virtual environment in the .pixi directory, just like venv module creates one
#   in the .venv directory. It is recommended not to include this directory in version control.
.pixi/*
!.pixi/config.toml

# PEP 582; used by e.g. github.com/David-OConnor/pyflow and github.com/pdm-project/pdm
__pypackages__/

# Celery stuff
celerybeat-schedule*
celerybeat.pid

# Redis
*.rdb
*.aof
*.pid

# RabbitMQ
mnesia/
rabbitmq/
rabbitmq-data/

# ActiveMQ
activemq-data/

# SageMath parsed files
*.sage.py

# Environments
.env
.envrc
.venv
env/
venv/
ENV/
env.bak/
venv.bak/

# Spyder project settings
.spyderproject
.spyproject

# Rope project settings
.ropeproject

# mkdocs documentation
/site

# mypy
.mypy_cache/
.dmypy.json
dmypy.json

# Pyre type checker
.pyre/

# pytype static type analyzer
.pytype/

# Cython debug symbols
cython_debug/

# PyCharm
#   JetBrains specific template is maintained in a separate JetBrains.gitignore that can
#   be found at https://github.com/github/gitignore/blob/main/Global/JetBrains.gitignore
#   and can be added to the global gitignore or merged into this file.  For a more nuclear
#   option (not recommended) you can uncomment the following to ignore the entire idea folder.
# .idea/

# Abstra
#   Abstra is an AI-powered process automation framework.
#   Ignore directories containing user credentials, local state, and settings.
#   Learn more at https://abstra.io/docs
.abstra/

# Visual Studio Code
#   Visual Studio Code specific template is maintained in a separate VisualStudioCode.gitignore 
#   that can be found at https://github.com/github/gitignore/blob/main/Global/VisualStudioCode.gitignore
#   and can be added to the global gitignore or merged into this file. However, if you prefer, 
#   you could uncomment the following to ignore the entire vscode folder
# .vscode/
# Temporary file for partial code execution
tempCodeRunnerFile.py

# Ruff stuff:
.ruff_cache/

# PyPI configuration file
.pypirc

# Marimo
marimo/_static/
marimo/_lsp/
__marimo__/

# Streamlit
.streamlit/secrets.toml
__EOF_REBUILD__

cat > 'AGENT.md' <<'__EOF_REBUILD__'
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
__EOF_REBUILD__

cat > 'README.md' <<'__EOF_REBUILD__'
# SubspaceAD: Training-Free Few-Shot Anomaly Detection via Subspace Modeling (CVPR2026)

<p align="center">
  <a href="https://huggingface.co/spaces/MoxVox/SubspaceAD-visual-demo" target="_blank">
    <img src="https://img.shields.io/badge/%20Live%20Demo-SubspaceAD-blue?style=for-the-badge" alt="SubspaceAD Demo">
  </a>
</p>

This repository contains the official implementation of the paper:

> [**SubspaceAD: Training-Free Few-Shot Anomaly Detection via Subspace Modeling (CVPR 2026)**](https://openaccess.thecvf.com/content/CVPR2026/html/Lendering_SubspaceAD_Training-Free_Few-Shot_Anomaly_Detection_via_Subspace_Modeling_CVPR_2026_paper.html)
---

## Introduction

Detecting visual anomalies in industrial inspection often requires operating with only a few normal exemplars per category. While many recent approaches rely on large memory banks, auxiliary datasets, or multi-modal tuning, **SubspaceAD** introduces a minimalist, training-free alternative.

SubspaceAD consists of two stages:

1. **Feature Extraction:** Patch-level features are extracted from a small set of normal images using a frozen **DINOv2** backbone.
2. **Subspace Modeling:** A **PCA** model is fit to these features to estimate the low-dimensional manifold of normal appearance.

At inference time, anomalies are detected using the reconstruction residual with respect to this learned subspace.
Despite its simplicity, SubspaceAD achieves **state-of-the-art** performance in one-shot and few-shot settings.

**Main Results (1-Shot)**

* **MVTec-AD:** 97.1% Image AUROC; 97.5% Pixel AUROC
* **VisA:** 93.4% Image AUROC; 98.2% Pixel AUROC

---

## Environment Setup

```bash
# 1. Create environment
conda create -n subspacead python=3.10
conda activate subspacead

# 2. Install dependencies and the package
pip install -r requirements.txt
pip install -e .
```

## Using DINOv3 Backbones

The feature extractor also supports [DINOv3](https://github.com/facebookresearch/dinov3) ViT backbones via HuggingFace (`transformers>=4.56`). Notes:

1. **Gated access:** DINOv3 checkpoints are gated on HuggingFace. Request access on the [model page](https://huggingface.co/facebook/dinov3-vitb16-pretrain-lvd1689m) and authenticate with `hf auth login` (or set `HF_TOKEN`) before running.
2. **Patch size:** DINOv3 uses patch size **16** (DINOv2 uses 14), so `--image_res` should be a multiple of 16 (e.g. 672 = 42×16). Non-multiples are automatically snapped to the nearest multiple with a warning.
3. **Layer indices:** `--layers` are indexed from the end of the backbone, so adjust them to the model depth (ViT-S/B: 12, ViT-L: 24, ViT-H+: 32, ViT-7B: 40 layers).
4. **ViT only:** DINOv3 ConvNeXt variants do not produce a patch-token grid and are not supported.

Supported checkpoints include `facebook/dinov3-vits16-pretrain-lvd1689m`, `facebook/dinov3-vitb16-pretrain-lvd1689m`, `facebook/dinov3-vitl16-pretrain-lvd1689m`, `facebook/dinov3-vith16plus-pretrain-lvd1689m`, and `facebook/dinov3-vit7b16-pretrain-lvd1689m`.

Example (1-shot MVTec-AD on `bottle` with DINOv3 ViT-B/16, the default backbone):

```bash
python main.py \
    --dataset_name mvtec_ad \
    --dataset_path datasets/mvtec-ad \
    --categories bottle \
    --model_ckpt facebook/dinov3-vitb16-pretrain-lvd1689m \
    --image_res 672 \
    --layers="2,5,8,11" \
    --k_shot 1 \
    --aug_count 30 \
    --pca_ev 0.99 \
    --outdir results/debug_run_dinov3
```

A full benchmark script is provided at `scripts/benchmark_few_shot_dinov3.sh`. The paper's results were obtained with DINOv2 (`facebook/dinov2-with-registers-giant`); DINOv3 layer choices may need re-tuning for best performance.

## Data Preparation

### MVTec-AD

Download the dataset from the [MVTec website](https://www.mvtec.com/company/research/datasets/mvtec-ad) and extract it to:

```
datasets/mvtec-ad/
```

### VisA

```bash
# 1. Download and extract
mkdir -p datasets/VisA_20220922
wget https://amazon-visual-anomaly.s3.us-west-2.amazonaws.com/VisA_20220922.tar
tar -xvf VisA_20220922.tar -C datasets/VisA_20220922

# 2. Preprocess (reorganize folder structure)
python tools/prepare_visa.py \
    --data-folder datasets/VisA_20220922 \
    --save-folder datasets/VisA_pytorch
```

## Folder Structure

```text
pca-dino/
├── datasets/                   # Dataset root
│   ├── mvtec-ad/
│   └── VisA_pytorch/
├── logs/                       # Experiment logs
├── scripts/                    # SLURM/Bash benchmark scripts
│   ├── benchmark_few_shot.sh
│   ├── benchmark_full_shot.sh
│   └── ...
├── src/
│   └── subspacead/
│       ├── core/               # PCA + feature extraction code
│       ├── data/               # Dataset loaders & transforms
│       ├── post_process/       # Scoring, pixel maps, filters
│       └── utils/              # Visualization, logging
├── tools/
│   └── prepare_visa.py
├── main.py
└── README.md
```

## Usage

### Benchmark Scripts

Scripts are provided in `scripts/` to reproduce all results.
Edit `MVTEC_PATH` and `VISA_PATH` inside the scripts as needed.

**Few-Shot (1, 2, 4 Shots)**
Selects *k* normal images per category.

```bash
bash scripts/benchmark_few_shot.sh
```

**Batched Zero-Shot**
Fits PCA on the full unlabeled test set.

```bash
bash scripts/benchmark_batched0shot.sh
```

**Full-Shot**
Uses all training images.

```bash
bash scripts/benchmark_full_shot.sh
```

### Manual Execution

Example: 1-shot MVTec-AD on `bottle`:

```bash
python main.py \
    --dataset_name mvtec_ad \
    --dataset_path datasets/mvtec-ad \
    --categories bottle \
    --model_ckpt facebook/dinov2-with-registers-giant \
    --image_res 672 \
    --k_shot 1 \
    --aug_count 30 \
    --pca_ev 0.99 \
    --outdir results/debug_run
```

## Benchmark Results

### Few-Shot (Image AUROC)

| Setting    | Method         | MVTec-AD | VisA     |
| ---------- | -------------- | -------- | -------- |
| **1-Shot** | PromptAD       | 94.2     | 86.9     |
|            | AnomalyDINO    | 96.6     | 87.4     |
|            | **SubspaceAD** | **97.1** | **93.2** |
| **2-Shot** | PromptAD       | 95.7     | 88.3     |
|            | AnomalyDINO    | 96.9     | 89.7     |
|            | **SubspaceAD** | **97.5** | **93.8** |
| **4-Shot** | PromptAD       | 96.6     | 89.1     |
|            | AnomalyDINO    | 97.7     | 92.6     |
|            | **SubspaceAD** | **98.0** | **94.7** |

### Batched Zero-Shot

| Method         | MVTec-AD | VisA     |
| -------------- | -------- | -------- |
| MuSc           | **97.8** | **94.1**     |
| AnomalyDINO    | 94.2     | 90.7     |
| **SubspaceAD** | 96.6     | **94.1** |

## Citation

If you find this repository useful, please consider citing:

```bibtex
@inproceedings{lendering2026subspacead,
  title={SubspaceAD: Training-Free Few-Shot Anomaly Detection via Subspace Modeling},
  author={Lendering, Camile and Akdag, Erkut and Bondarev, Egor},
  booktitle={Proceedings of the IEEE/CVF Conference on Computer Vision and Pattern Recognition (CVPR)},
  pages={28557--28566},
  year={2026}
}
```
__EOF_REBUILD__

cat > 'main.py' <<'__EOF_REBUILD__'
import os
import math
import logging
import time
from pathlib import Path

import numpy as np
import random
import pandas as pd
import torch
import torchvision.transforms.functional as TF
from scipy.ndimage import label as cc_label, generate_binary_structure
from PIL import Image
from tqdm import tqdm
import cv2
from sklearn.metrics import (
    roc_auc_score,
    f1_score,
    precision_recall_curve,
    average_precision_score,
)
from sklearn.decomposition import PCA

from src.subspacead.config import get_args, parse_layer_indices, parse_grouped_layers
from src.subspacead.utils.common import (
    setup_logging,
    save_config,
    min_max_norm,
)
from src.subspacead.data.datasets import get_dataset_handler
from src.subspacead.core.extractor import FeatureExtractor
from src.subspacead.core.pca import PCAModel, KernelPCAModel
from src.subspacead.post_process.scoring import (
    calculate_anomaly_scores,
    post_process_map,
)
from src.subspacead.utils.viz import save_visualization, save_overlay_for_intro
from src.subspacead.post_process.specular import (
    specular_mask_torch,
    filter_specular_anomalies,
)
from src.subspacead.core.patching import process_image_patched, get_patch_coords
from src.subspacead.data.transforms import get_augmentation_transform

DEVICE = "cuda" if torch.cuda.is_available() else "cpu"

print(f"Using device: {DEVICE}")


def _best_f1_threshold_from_scores(y_true, y_score):
    """Return threshold maximizing F1 on validation scores."""
    y_true = np.asarray(y_true).astype(np.uint8)
    y_score = np.asarray(y_score, dtype=np.float64)
    if y_true.size == 0 or y_score.size == 0 or (y_true.max() == y_true.min()):
        return None, 0.0
    p, r, t = precision_recall_curve(y_true, y_score)
    if t.size == 0:
        return None, 0.0
    f1 = (2 * p[:-1] * r[:-1]) / np.clip(p[:-1] + r[:-1], 1e-12, None)
    i = int(np.nanargmax(f1))
    return float(t[i]), float(f1[i])


def _quantile_threshold_from_negatives(y_true, y_score, target_fpr=0.01):
    """
    Fallback: pick threshold so that ~target_fpr of NEGATIVES exceed it.
    y_true in {0,1}, negatives are 0. Returns None if no negatives.
    """
    y_true = np.asarray(y_true).astype(np.uint8)
    y_score = np.asarray(y_score, dtype=np.float64)
    neg = y_score[y_true == 0]
    if neg.size == 0:
        return None
    q = np.clip(1.0 - float(target_fpr), 0.0, 1.0)
    return float(np.quantile(neg, q, interpolation="linear"))


def _pick_threshold_with_fallback(y_true, y_score, target_fpr):
    """
    Try PR-optimal F1; if degenerate (single-class), fall back to negative-quantile.
    Returns (thr, how), where how ∈ {"pr", "quantile", "none"}.
    """
    thr_pr, _ = _best_f1_threshold_from_scores(y_true, y_score)
    if thr_pr is not None:
        return thr_pr, "pr"
    thr_q = _quantile_threshold_from_negatives(y_true, y_score, target_fpr)
    if thr_q is not None:
        return thr_q, "quantile"
    return None, "none"


def topk_mean(arr, frac=0.01):
    flat = arr.ravel()
    k = max(1, int(len(flat) * frac))
    idx = np.argpartition(flat, -k)[-k:]
    return float(np.mean(flat[idx]))


def compute_aupro(
    anomaly_maps,
    gt_masks,
    fpr_limit: float = 0.3,
    num_thresholds: int = 300,
    connectivity: int = 8,
):
    """
    MVTec-AD AUPRO (Bergmann et al.).

    Args:
        anomaly_maps: list/array of [H, W] float prediction maps. Higher = more anomalous.
        gt_masks:     list/array of [H, W] binary masks (uint8/bool). 1 = anomaly.
        fpr_limit:    integration upper bound on Set FPR. MVTec convention: 0.3.
        num_thresholds: number of FPR-linspaced thresholds inside [0, fpr_limit].
        connectivity: 4 or 8 for connected components.

    Returns:
        AUPRO in [0, 1] (perfect detector = 1.0). NaN if undefined.
    """
    preds = np.stack([np.asarray(p, dtype=np.float32) for p in anomaly_maps])
    gts = np.stack([np.asarray(g, dtype=np.uint8) for g in gt_masks])
    assert preds.shape == gts.shape, f"shape mismatch: {preds.shape} vs {gts.shape}"

    if not np.isfinite(preds).all():
        return float("nan")

    # 1. Connected components -> per-region (img_idx, sorted_scores_inside_region).
    structure = generate_binary_structure(2, 2 if connectivity == 8 else 1)
    region_sorted_scores = []  # list of 1D arrays, one per region
    for i in range(gts.shape[0]):
        if gts[i].sum() == 0:
            continue
        labeled, n = cc_label(gts[i], structure=structure)
        for r in range(1, n + 1):
            region_mask = labeled == r
            region_scores = preds[i][region_mask]
            region_sorted_scores.append(np.sort(region_scores))  # ascending

    if len(region_sorted_scores) == 0:
        return float("nan")

    neg_scores = preds[gts == 0]
    if neg_scores.size == 0:
        return float("nan")
    neg_sorted = np.sort(neg_scores)  # ascending
    n_neg = neg_sorted.size

    # 3. Pick thresholds that are linear in FPR over [0, fpr_limit].
    target_fprs = np.linspace(0.0, fpr_limit, num_thresholds + 1)[1:]  # exclude 0
    # quantile(1 - f): use sorted neg array directly for stability
    q_idx = np.clip(
        np.floor((1.0 - target_fprs) * (n_neg - 1)).astype(np.int64), 0, n_neg - 1
    )
    thresholds = neg_sorted[q_idx]  # shape: [num_thresholds]

    # 4. For each threshold, compute realized FPR and mean PRO.
    fp_counts = n_neg - np.searchsorted(neg_sorted, thresholds, side="left")
    fprs = fp_counts.astype(np.float64) / n_neg

    # Mean PRO across regions, vectorized via searchsorted on each region's sorted scores.
    pros_accum = np.zeros(num_thresholds, dtype=np.float64)
    for region_scores in region_sorted_scores:
        rs = region_scores
        area = rs.size
        # for each t: overlap = (rs >= t).sum() / area
        ge_counts = rs.size - np.searchsorted(rs, thresholds, side="left")
        pros_accum += ge_counts / area
    pros = pros_accum / len(region_sorted_scores)

    # 5. Sort by FPR (should already be ascending up to ties), prepend (0, 0) anchor.
    order = np.argsort(fprs, kind="stable")
    fprs_s = np.concatenate([[0.0], fprs[order]])
    pros_s = np.concatenate([[0.0], pros[order]])

    # 6. Clip strictly to [0, fpr_limit] with linear interpolation at the boundary.
    if fprs_s[-1] > fpr_limit:
        cut = np.searchsorted(fprs_s, fpr_limit, side="right")
        # linear interp between fprs_s[cut-1] and fprs_s[cut] at x=fpr_limit
        f0, f1 = fprs_s[cut - 1], fprs_s[cut]
        p0, p1 = pros_s[cut - 1], pros_s[cut]
        p_at = p0 + (p1 - p0) * (fpr_limit - f0) / (f1 - f0) if f1 > f0 else p0
        fprs_s = np.concatenate([fprs_s[:cut], [fpr_limit]])
        pros_s = np.concatenate([pros_s[:cut], [p_at]])
    elif fprs_s[-1] < fpr_limit:
        # didn't reach fpr_limit (rare): extrapolate flat from last point
        fprs_s = np.concatenate([fprs_s, [fpr_limit]])
        pros_s = np.concatenate([pros_s, [pros_s[-1]]])

    aupro = np.trapz(pros_s, fprs_s) / fpr_limit
    return float(aupro)


def main():
    args = get_args()
    run_name = f"{args.dataset_name}_{args.agg_method}_layers{''.join(args.layers.split(','))}_res{args.image_res}_docrop{int(args.docrop)}"
    if args.seed is not None:
        torch.manual_seed(args.seed)
        np.random.seed(args.seed)
        random.seed(args.seed)
        if torch.cuda.is_available():
            torch.cuda.manual_seed(args.seed)
            torch.cuda.manual_seed_all(args.seed)
            torch.backends.cudnn.deterministic = True
            torch.backends.cudnn.benchmark = False
    else:
        print("No seed specified; aborting for reproducibility.")
        return
    if args.patch_size:
        run_name += f"_patch{args.patch_size}"
    if args.use_kernel_pca:
        run_name += f"_kpca-{args.kernel_pca_kernel}"
    if args.use_specular_filter:
        run_name += "_spec-filt"
    if args.bg_mask_method:
        run_name += f"_mask-{args.bg_mask_method}_thr-{args.mask_threshold_method}"
        if args.mask_threshold_method == "percentile":
            run_name += f"{args.percentile_threshold}"
        if args.bg_mask_method == "dino_saliency":
            run_name += f"_L{args.dino_saliency_layer}"
    run_name += f"_score-{args.score_method}"
    run_name += f"_clahe{int(args.use_clahe)}"
    run_name += f"_dropk{args.drop_k}"
    run_name += f"_model-{args.model_ckpt.split('/')[-1]}"
    run_name += (
        f"pca_ev{args.pca_ev}" if args.pca_ev is not None else f"_pca_dim{args.pca_dim}"
    )
    run_name += f"_i-score{args.img_score_agg}"

    # Add k-shot and augmentation info to run name
    if args.k_shot is not None:
        run_name += f"_k{args.k_shot}"
        if args.aug_count > 0 and args.aug_list:
            # Create a short string for augs, e.g., "hrc"
            aug_str = "".join(sorted([a[0] for a in args.aug_list]))
            run_name += f"_aug{args.aug_count}x{aug_str}"

    run_name += f"_seed{args.seed}"

    args.outdir = os.path.join(args.outdir, run_name)
    os.makedirs(args.outdir, exist_ok=True)
    setup_logging(args.outdir, not args.no_log_file)
    save_config(args)

    # Augmentations
    aug_transform = None
    if args.k_shot is not None and args.aug_count > 0 and args.aug_list:
        aug_transform = get_augmentation_transform(args.aug_list, args.image_res)
        if not aug_transform.transforms:
            logging.warning(
                "Augmentation specified but no valid transforms were created. Disabling augmentations."
            )
            aug_transform = None

    # Parse layer args
    layers = parse_layer_indices(args.layers)
    grouped_layers = (
        parse_grouped_layers(args.grouped_layers) if args.agg_method == "group" else []
    )

    # Init model
    extractor = FeatureExtractor(args.model_ckpt)

    # Get dataset categories
    if args.categories:
        categories = args.categories
    else:
        categories = sorted(
            [
                f.name
                for f in Path(args.dataset_path).iterdir()
                if f.is_dir() and f.name != "split_csv"
            ]
        )

    # Main loop
    all_results = []
    for category in categories:
        logging.info(f"--- Processing Category: {category} ---")

        if args.k_shot is not None and args.aug_count > 0 and args.aug_list:
            aug_transform = get_augmentation_transform(args.aug_list, args.image_res)

        else:
            aug_transform = None
        if category in args.no_aug_categories:
            logging.warning(f"Disabling augmentation for {category} category")
            aug_transform = None
        handler = get_dataset_handler(args.dataset_name, args.dataset_path, category)
        train_paths = handler.get_train_paths()
        val_paths = handler.get_validation_paths()
        test_paths = handler.get_test_paths()

        if args.debug_limit is not None:
            logging.warning(
                f"--- DEBUG MODE: Limiting validation and test sets to {args.debug_limit} images ---"
            )
            if val_paths:
                val_paths = val_paths[: args.debug_limit]
            if test_paths:
                test_paths = test_paths[: args.debug_limit]

        if not train_paths:
            logging.warning(f"No training images found for {category}. Skipping.")
            continue

        if args.batched_zero_shot:
            # Batched 0-shot train=test
            logging.info(
                f"--- Batched 0-Shot Mode: Fitting PCA on {len(test_paths)} test images ---"
            )
            train_paths = test_paths.copy()
            val_paths = None

        # K-shot sampling
        if args.k_shot is not None:
            if args.k_shot > len(train_paths):
                logging.warning(
                    f"Requested k_shot={args.k_shot} but only {len(train_paths)} training images available. Using all {len(train_paths)}."
                )
            else:
                logging.info(
                    f"--- K-SHOT: Randomly sampling {args.k_shot} training images ---"
                )
                random.shuffle(train_paths)
                train_paths = (
                    train_paths[: args.k_shot]
                    if args.k_shot <= len(train_paths)
                    else train_paths
                )
                for i, path in enumerate(train_paths):
                    logging.info(
                        f"  K-Shot image {i + 1}/{args.k_shot}: {Path(path).name}"
                    )

        # 1. Fit PCA Model
        if args.patch_size:
            if args.bg_mask_method == "pca_normality":
                logging.error(
                    "PCA Normality mask is not compatible with --patch_size. "
                    "Use 'dino_saliency' or no mask."
                )
                raise ValueError("Cannot use pca_normality mask with patch_size.")

            temp_img = Image.open(train_paths[0]).convert("RGB")
            temp_patch = temp_img.crop((0, 0, args.patch_size, args.patch_size))
            temp_tokens, (h_p, w_p), _ = extractor.extract_tokens(
                [temp_patch],
                args.image_res,
                layers,
                args.agg_method,
                grouped_layers,
                args.docrop,
                use_clahe=args.use_clahe,
                dino_saliency_layer=args.dino_saliency_layer,
            )
            feature_dim = temp_tokens.shape[-1]
            tokens_per_patch = h_p * w_p

            # Calculate total number of patches and tokens (with augmentations)
            total_patches = 0
            num_batches = 0
            # This multiplier accounts for the original image + N augmented images
            num_aug_multiplier = (1 + args.aug_count) if aug_transform else 1

            for path in train_paths:
                img = Image.open(path).convert("RGB")
                patch_coords = get_patch_coords(
                    img.height, img.width, args.patch_size, args.patch_overlap
                )
                total_patches += len(patch_coords) * num_aug_multiplier
                num_batches += (
                    math.ceil(len(patch_coords) / args.batch_size) * num_aug_multiplier
                )
            total_tokens = total_patches * tokens_per_patch

            logging.info(
                f"Feature dim: {feature_dim}, Tokens per patch: {tokens_per_patch}, "
                f"Base train patches: {total_patches // num_aug_multiplier}, "
                f"Total train patches (w/ aug): {total_patches}, Total train tokens: {total_tokens}"
            )

            def feature_generator_patched():
                for path in train_paths:
                    pil_img = Image.open(path).convert("RGB")

                    # Create a list of images to process: original + augmentations
                    images_to_process = [pil_img]
                    if aug_transform:
                        for _ in range(args.aug_count):
                            images_to_process.append(aug_transform(pil_img))

                    # Process each image (original + augmented)
                    for img in images_to_process:
                        patch_coords = get_patch_coords(
                            img.height,
                            img.width,
                            args.patch_size,
                            args.patch_overlap,
                        )
                        for i in range(0, len(patch_coords), args.batch_size):
                            coord_batch = patch_coords[i : i + args.batch_size]
                            patch_batch = [img.crop(c) for c in coord_batch]
                            (
                                tokens_batch,
                                _,
                                saliency_masks_batch,
                            ) = extractor.extract_tokens(
                                patch_batch,
                                args.image_res,
                                layers,
                                args.agg_method,
                                grouped_layers,
                                args.docrop,
                                use_clahe=args.use_clahe,
                                dino_saliency_layer=args.dino_saliency_layer,
                            )
                            tokens_flat = tokens_batch.reshape(-1, feature_dim)

                            if args.bg_mask_method == "dino_saliency":
                                masks_flat = saliency_masks_batch.reshape(-1)
                                try:
                                    if args.mask_threshold_method == "percentile":
                                        threshold = np.percentile(
                                            masks_flat, args.percentile_threshold * 100
                                        )
                                        foreground_tokens = tokens_flat[
                                            masks_flat >= threshold
                                        ]
                                    else:
                                        norm_mask = cv2.normalize(
                                            masks_flat,
                                            None,
                                            0,
                                            255,
                                            cv2.NORM_MINMAX,
                                            dtype=cv2.CV_8U,
                                        )
                                        _, binary_mask = cv2.threshold(
                                            norm_mask,
                                            0,
                                            255,
                                            cv2.THRESH_BINARY + cv2.THRESH_OTSU,
                                        )
                                        foreground_tokens = tokens_flat[
                                            binary_mask.flatten() > 0
                                        ]

                                    if foreground_tokens.shape[0] > 0:
                                        yield foreground_tokens
                                    else:
                                        logging.warning(
                                            "No foreground patch tokens found. Yielding all tokens."
                                        )
                                        yield tokens_flat
                                except Exception as e:
                                    logging.warning(
                                        f"Masking failed: {e}. Yielding all tokens."
                                    )
                                    yield tokens_flat
                            else:
                                yield tokens_flat

            feature_generator = feature_generator_patched

        else:
            # PCA without patching
            temp_img = Image.open(train_paths[0]).convert("RGB")
            temp_tokens, (h_p, w_p), _ = extractor.extract_tokens(
                [temp_img],
                args.image_res,
                layers,
                args.agg_method,
                grouped_layers,
                args.docrop,
                use_clahe=args.use_clahe,
                dino_saliency_layer=args.dino_saliency_layer,
            )
            feature_dim = temp_tokens.shape[-1]
            num_aug_multiplier = (1 + args.aug_count) if aug_transform else 1
            total_train_images = len(train_paths) * num_aug_multiplier
            total_tokens = total_train_images * h_p * w_p

            logging.info(
                f"Feature dim: {feature_dim}, Tokens per image: {h_p * w_p}, "
                f"Base train images: {len(train_paths)}, "
                f"Total train images (w/ aug): {total_train_images}, Total train tokens: {total_tokens}"
            )

            def feature_generator_full():
                all_imgs_to_process = []
                for path in train_paths:
                    pil_img = Image.open(path).convert("RGB")
                    all_imgs_to_process.append(pil_img)
                    if aug_transform:
                        for _ in range(args.aug_count):
                            all_imgs_to_process.append(aug_transform(pil_img))

                # Now process all_imgs_to_process in batches
                for i in range(0, len(all_imgs_to_process), args.batch_size):
                    img_batch = all_imgs_to_process[i : i + args.batch_size]
                    (
                        tokens_batch,
                        _,
                        saliency_masks_batch,
                    ) = extractor.extract_tokens(
                        img_batch,
                        args.image_res,
                        layers,
                        args.agg_method,
                        grouped_layers,
                        args.docrop,
                        use_clahe=args.use_clahe,
                        dino_saliency_layer=args.dino_saliency_layer,
                    )
                    tokens_flat = tokens_batch.reshape(-1, feature_dim)

                    # Train masking logic
                    if args.bg_mask_method == "dino_saliency":
                        masks_flat = saliency_masks_batch.reshape(-1)
                        try:
                            if args.mask_threshold_method == "percentile":
                                threshold = np.percentile(
                                    masks_flat, args.percentile_threshold * 100
                                )
                                foreground_tokens = tokens_flat[masks_flat >= threshold]
                            else:
                                norm_mask = cv2.normalize(
                                    masks_flat,
                                    None,
                                    0,
                                    255,
                                    cv2.NORM_MINMAX,
                                    dtype=cv2.CV_8U,
                                )
                                _, binary_mask = cv2.threshold(
                                    norm_mask,
                                    0,
                                    255,
                                    cv2.THRESH_BINARY + cv2.THRESH_OTSU,
                                )
                                foreground_tokens = tokens_flat[
                                    binary_mask.flatten() > 0
                                ]

                            if foreground_tokens.shape[0] > 0:
                                yield foreground_tokens
                            else:
                                logging.warning(
                                    "No foreground tokens found. Yielding all tokens."
                                )
                                yield tokens_flat
                        except Exception as e:
                            logging.warning(
                                f"Masking failed: {e}. Yielding all tokens."
                            )
                            yield tokens_flat
                    else:
                        yield tokens_flat

            num_batches = math.ceil(total_train_images / args.batch_size)
            feature_generator = feature_generator_full

        if args.use_kernel_pca:
            if args.bg_mask_method == "pca_normality":
                logging.error(
                    "PCA Normality mask is not compatible with Kernel PCA. "
                    "Use 'dino_saliency' or no mask."
                )
                raise ValueError("Cannot use pca_normality mask with use_kernel_pca.")

            logging.info("Collecting all features for Kernel PCA...")
            all_train_tokens = np.concatenate(
                list(
                    tqdm(
                        feature_generator(),
                        desc="Feature Collection",
                        total=num_batches,
                    )
                )
            )
            pca_model = KernelPCAModel(
                k=args.pca_dim,
                kernel=args.kernel_pca_kernel,
                gamma=args.kernel_pca_gamma,
            )
            pca_params = pca_model.fit(all_train_tokens)
        else:
            pca_model = PCAModel(k=args.pca_dim, ev=args.pca_ev, whiten=args.whiten)
            pca_params = pca_model.fit(
                feature_generator,
                feature_dim,
                total_tokens,
                num_batches,
            )

        # 2. Determine PR-optimal F1 thresholds (if validation set exists)
        if val_paths:
            logging.info(
                f"Collecting validation stats on {len(val_paths)} images for PR-optimal F1 thresholds..."
            )
            val_img_scores, val_img_labels = [], []
            val_px_scores_normalized, val_px_gts = [], []
            val_iter = tqdm(val_paths, desc="Validating")
            for i in range(0, len(val_paths), args.batch_size):
                path_batch = val_paths[i : i + args.batch_size]
                pil_imgs = [Image.open(p).convert("RGB") for p in path_batch]
                is_anomaly_batch = [
                    "good" not in str(p) and "Normal" not in str(p) for p in path_batch
                ]

                if args.patch_size:
                    anomaly_maps_batch, _ = process_image_patched(
                        pil_imgs,
                        extractor,
                        pca_params,
                        args,
                        DEVICE,
                        h_p,
                        w_p,
                        feature_dim,
                    )
                    for j, anomaly_map_final in enumerate(anomaly_maps_batch):
                        if args.img_score_agg == "max":
                            img_score = float(np.max(anomaly_map_final))
                        elif args.img_score_agg == "p99":
                            img_score = float(np.percentile(anomaly_map_final, 99))
                        elif args.img_score_agg == "mtop5":
                            img_score = float(
                                np.mean(np.sort(anomaly_map_final.flatten())[-5:])
                            )
                        elif args.img_score_agg == "mtop1p":
                            img_score = topk_mean(anomaly_map_final, frac=0.01)
                        else:
                            img_score = float(np.mean(anomaly_map_final))
                        val_img_scores.append(img_score)
                        val_img_labels.append(1 if is_anomaly_batch[j] else 0)

                        # --- PIXEL METRICS (AUPRO, P-F1) ---
                        anomaly_map_normalized = min_max_norm(anomaly_map_final)
                        H, W = anomaly_map_normalized.shape
                        gt_mask = handler.get_ground_truth_mask(
                            path_batch[j], pil_imgs[j].size
                        )
                        gt_mask = (
                            np.array(
                                Image.fromarray(
                                    (gt_mask.astype(np.uint8) * 255)
                                ).resize((W, H), resample=Image.NEAREST)
                            )
                            > 127
                        )
                        val_px_gts.extend(gt_mask.flatten().astype(np.uint8))
                        val_px_scores_normalized.extend(
                            anomaly_map_normalized.flatten().astype(np.float32)
                        )

                else:
                    (
                        tokens,
                        (h_p, w_p),
                        saliency_masks_batch,
                    ) = extractor.extract_tokens(
                        pil_imgs,
                        args.image_res,
                        layers,
                        args.agg_method,
                        grouped_layers,
                        args.docrop,
                        use_clahe=args.use_clahe,
                        dino_saliency_layer=args.dino_saliency_layer,
                    )
                    b, _, _, c = tokens.shape
                    tokens_reshaped = tokens.reshape(b * h_p * w_p, c)

                    scores = calculate_anomaly_scores(
                        tokens_reshaped,
                        pca_params,
                        args.score_method,
                        args.drop_k,
                    )
                    anomaly_maps = scores.reshape(b, h_p, w_p)

                    # Apply masking to validation
                    if args.bg_mask_method == "dino_saliency":
                        background_mask = np.zeros_like(anomaly_maps, dtype=bool)
                        for j in range(b):
                            saliency_map = saliency_masks_batch[j]
                            try:
                                if args.mask_threshold_method == "percentile":
                                    threshold = np.percentile(
                                        saliency_map, args.percentile_threshold * 100
                                    )
                                    background_mask[j] = saliency_map < threshold
                                else:  # otsu
                                    norm_mask = cv2.normalize(
                                        saliency_map,
                                        None,
                                        0,
                                        255,
                                        cv2.NORM_MINMAX,
                                        dtype=cv2.CV_8U,
                                    )
                                    _, binary_mask = cv2.threshold(
                                        norm_mask,
                                        0,
                                        255,
                                        cv2.THRESH_BINARY + cv2.THRESH_OTSU,
                                    )
                                    background_mask[j] = binary_mask == 0
                            except Exception as e:
                                logging.warning(
                                    f"Saliency mask failed for val image {j}: {e}. Skipping mask."
                                )
                        anomaly_maps[background_mask] = 0.0

                    elif args.bg_mask_method == "pca_normality":
                        # AnomalyDINO PCA mask
                        threshold = 10.0
                        kernel_size = 3
                        border = 0.2
                        grid_size = (h_p, w_p)
                        kernel = np.ones(
                            (kernel_size, kernel_size), np.uint8
                        )  # Pre-define kernel

                        background_mask_batch = np.zeros_like(anomaly_maps, dtype=bool)

                        for j in range(b):
                            img_features = tokens[j].reshape(-1, c)

                            try:
                                pca = PCA(n_components=1, svd_solver="randomized")
                                first_pc = pca.fit_transform(
                                    img_features.astype(np.float32)
                                )

                                mask = first_pc > threshold
                                mask_2d = mask.reshape(grid_size)
                                h_start, h_end = int(grid_size[0] * border), int(
                                    grid_size[0] * (1 - border)
                                )
                                w_start, w_end = int(grid_size[1] * border), int(
                                    grid_size[1] * (1 - border)
                                )
                                m = mask_2d[h_start:h_end, w_start:w_end]

                                if m.sum() <= m.size * 0.35:
                                    mask = -first_pc > threshold
                                    mask_2d = mask.reshape(grid_size)

                                # Post-process foreground mask
                                mask_processed = cv2.dilate(
                                    mask_2d.astype(np.uint8), kernel
                                ).astype(bool)
                                mask_processed = cv2.morphologyEx(
                                    mask_processed.astype(np.uint8),
                                    cv2.MORPH_CLOSE,
                                    kernel,
                                ).astype(bool)

                                # Invert the foreground mask to get the background mask
                                background_mask_batch[j] = ~mask_processed

                            except Exception as e:
                                logging.warning(
                                    f"PCA mask failed for val image {j}: {e}. Skipping mask."
                                )

                        anomaly_maps[background_mask_batch] = 0.0
                    for j in range(anomaly_maps.shape[0]):
                        anomaly_map_final = post_process_map(
                            anomaly_maps[j], args.image_res
                        )

                        if args.use_specular_filter:
                            img_tensor = (
                                TF.to_tensor(pil_imgs[j]).unsqueeze(0).to(DEVICE)
                            )
                            _, _, conf = specular_mask_torch(
                                img_tensor, tau=args.specular_tau
                            )
                            conf = torch.nn.functional.interpolate(
                                conf,
                                size=anomaly_map_final.shape,
                                mode="bilinear",
                                align_corners=False,
                            )
                            conf_map = conf.squeeze().cpu().numpy()
                            anomaly_map_final = (
                                filter_specular_anomalies(anomaly_map_final, conf_map)
                                .cpu()
                                .numpy()
                            )
                        if args.img_score_agg == "max":
                            img_score = float(np.max(anomaly_map_final))
                        elif args.img_score_agg == "p99":
                            img_score = float(np.percentile(anomaly_map_final, 99))
                        elif args.img_score_agg == "mtop5":
                            img_score = float(
                                np.mean(np.sort(anomaly_map_final.flatten())[-5:])
                            )
                        elif args.img_score_agg == "mtop1p":
                            img_score = topk_mean(anomaly_map_final, frac=0.01)
                        else:
                            img_score = float(np.mean(anomaly_map_final))
                        val_img_scores.append(img_score)
                        val_img_labels.append(1 if is_anomaly_batch[j] else 0)
                        anomaly_map_normalized = min_max_norm(anomaly_map_final)
                        H, W = anomaly_map_normalized.shape
                        gt_path_str = handler.get_ground_truth_path(path_batch[j])

                        if not gt_path_str or not os.path.exists(gt_path_str):
                            gt_mask = np.zeros((H, W), dtype=np.uint8)
                        else:
                            gt_mask_pil = Image.open(gt_path_str).convert("L")

                            if args.docrop:
                                resize_res = int(args.image_res / 0.875)
                                gt_mask_pil = TF.resize(
                                    gt_mask_pil,
                                    (resize_res, resize_res),
                                    interpolation=TF.InterpolationMode.NEAREST,
                                )
                                gt_mask_pil = TF.center_crop(
                                    gt_mask_pil, (args.image_res, args.image_res)
                                )

                            gt_mask_pil = TF.resize(
                                gt_mask_pil,
                                (H, W),
                                interpolation=TF.InterpolationMode.NEAREST,
                            )
                            gt_mask = (np.array(gt_mask_pil) > 0).astype(np.uint8)

                        val_px_gts.extend(gt_mask.flatten().astype(np.uint8))
                        val_px_scores_normalized.extend(
                            anomaly_map_normalized.flatten().astype(np.float32)
                        )
                val_iter.update(len(path_batch))

            target_img_fpr = getattr(args, "target_img_fpr", 0.05)
            target_px_fpr = getattr(args, "target_px_fpr", 0.05)

            # Threshold for I-F1 (using raw image scores)
            thr_img, how_img = _pick_threshold_with_fallback(
                val_img_labels, val_img_scores, target_img_fpr
            )
            # Threshold for P-F1 (using per-image normalized pixel scores)
            val_px_scores_mm = np.array(val_px_scores_normalized)
            thr_px, how_px = _pick_threshold_with_fallback(
                val_px_gts, val_px_scores_mm, target_px_fpr
            )

            if how_img == "none":
                logging.warning(
                    "Validation image threshold degenerate and no negatives: image F1 will be NaN."
                )
            if how_px == "none":
                logging.warning(
                    "Validation pixel threshold degenerate and no negatives: pixel F1 will be NaN."
                )

            logging.info(
                f"Chosen thresholds — Image: {thr_img if thr_img is not None else float('nan'):.6g} "
                f"({how_img}), Pixel: {thr_px if thr_px is not None else float('nan'):.6g} ({how_px})"
            )

        else:
            logging.warning("No validation set found. F1 scores will be N/A.")
            thr_img, thr_px = None, None

        # Warm up for timing
        if test_paths:
            logging.info("Performing warm-up inference run...")
            try:
                # Use the first test image for the warm-up
                dummy_img = [Image.open(test_paths[0]).convert("RGB")]

                if args.patch_size:
                    # Warm-up the patch pipeline
                    _ = process_image_patched(
                        dummy_img,
                        extractor,
                        pca_params,
                        args,
                        DEVICE,
                        h_p,
                        w_p,
                        feature_dim,
                    )
                else:
                    # Warm-up the full-image pipeline
                    _tokens, (_h, _w), _saliency = extractor.extract_tokens(
                        dummy_img,
                        args.image_res,
                        layers,
                        args.agg_method,
                        grouped_layers,
                        args.docrop,
                        use_clahe=args.use_clahe,
                        dino_saliency_layer=args.dino_saliency_layer,
                    )
                    # A minimal version of the scoring
                    _scores = calculate_anomaly_scores(
                        _tokens.reshape(-1, _tokens.shape[-1]),
                        pca_params,
                        args.score_method,
                        args.drop_k,
                    )
                    if args.use_specular_filter and torch.cuda.is_available():
                        _ = filter_specular_anomalies(
                            torch.from_numpy(_scores).to(DEVICE),
                            torch.zeros_like(torch.from_numpy(_scores)).to(DEVICE),
                        )

                if torch.cuda.is_available():
                    torch.cuda.synchronize(DEVICE)
                logging.info("Warm-up complete.")
            except Exception as e:
                logging.warning(
                    f"Warm-up run failed: {e}. First timed run may be slow."
                )

        # 3. Evaluate on Test Set
        logging.info(f"Evaluating on {len(test_paths)} test images...")
        img_true, img_pred_f1 = [], []
        img_pred_auroc = []
        px_true_all = []
        px_pred_all_auroc = []
        px_pred_all_normalized = []
        pro_gt_masks = []
        pro_anomaly_maps = []
        vis_saved_count = 0
        all_inference_times = []

        logging.info("Number of test images: {}".format(len(test_paths)))
        test_iter = tqdm(test_paths, desc=f"Testing {category}")
        for i in range(0, len(test_paths), args.batch_size):
            path_batch = test_paths[i : i + args.batch_size]
            pil_imgs = [Image.open(p).convert("RGB") for p in path_batch]
            is_anomaly_batch = [
                "good" not in str(p) and "Normal" not in str(p) for p in path_batch
            ]
            if torch.cuda.is_available():
                torch.cuda.synchronize(DEVICE)
            start_time = time.perf_counter()

            final_anomaly_maps_for_batch = []
            saliency_maps_for_viz_batch = []

            if args.patch_size:
                (
                    anomaly_maps_batch,
                    saliency_maps_batch,
                ) = process_image_patched(
                    pil_imgs, extractor, pca_params, args, DEVICE, h_p, w_p, feature_dim
                )

                saliency_maps_for_viz_batch = saliency_maps_batch

                for j, anomaly_map_pre_specular in enumerate(anomaly_maps_batch):
                    anomaly_map_final = anomaly_map_pre_specular
                    if args.use_specular_filter:
                        img_tensor = TF.to_tensor(pil_imgs[j]).unsqueeze(0).to(DEVICE)
                        _, _, conf = specular_mask_torch(
                            img_tensor, tau=args.specular_tau
                        )
                        conf = torch.nn.functional.interpolate(
                            conf,
                            size=anomaly_map_pre_specular.shape,
                            mode="bilinear",
                            align_corners=False,
                        )
                        conf_map = conf.squeeze().cpu().numpy()
                        anomaly_map_final = (
                            filter_specular_anomalies(
                                anomaly_map_pre_specular, conf_map
                            )
                            .cpu()
                            .numpy()
                        )
                    final_anomaly_maps_for_batch.append(anomaly_map_final)

            else:
                # Step 1: Feature Extraction
                (
                    tokens,
                    (h_p, w_p),
                    saliency_masks_batch,
                ) = extractor.extract_tokens(
                    pil_imgs,
                    args.image_res,
                    layers,
                    args.agg_method,
                    grouped_layers,
                    args.docrop,
                    use_clahe=args.use_clahe,
                    dino_saliency_layer=args.dino_saliency_layer,
                )
                b, _, _, c = tokens.shape
                tokens_reshaped = tokens.reshape(b * h_p * w_p, c)

                # Step 2: Anomaly Scoring
                scores = calculate_anomaly_scores(
                    tokens_reshaped,
                    pca_params,
                    args.score_method,
                    args.drop_k,
                )
                anomaly_maps = scores.reshape(b, h_p, w_p)

                # Step 3: Masking Strategy
                mask_for_viz = None
                background_mask = np.zeros_like(anomaly_maps, dtype=bool)

                if args.bg_mask_method == "dino_saliency":
                    mask_for_viz = saliency_masks_batch
                    for j in range(b):
                        saliency_map = saliency_masks_batch[j]
                        try:
                            if args.mask_threshold_method == "percentile":
                                threshold = np.percentile(
                                    saliency_map, args.percentile_threshold * 100
                                )
                                background_mask[j] = saliency_map < threshold
                            else:  # otsu
                                norm_mask = cv2.normalize(
                                    saliency_map,
                                    None,
                                    0,
                                    255,
                                    cv2.NORM_MINMAX,
                                    dtype=cv2.CV_8U,
                                )
                                _, binary_mask = cv2.threshold(
                                    norm_mask,
                                    0,
                                    255,
                                    cv2.THRESH_BINARY + cv2.THRESH_OTSU,
                                )
                                background_mask[j] = binary_mask == 0
                        except Exception as e:
                            logging.warning(
                                f"Saliency mask failed for test image {j}: {e}. Skipping mask."
                            )

                elif args.bg_mask_method == "pca_normality":
                    threshold = 10.0
                    kernel_size = 3
                    border = 0.2
                    grid_size = (h_p, w_p)
                    kernel = np.ones((kernel_size, kernel_size), np.uint8)
                    mask_for_viz = np.zeros_like(anomaly_maps)

                    for j in range(b):
                        img_features = tokens[j].reshape(-1, c)
                        try:
                            pca = PCA(n_components=1, svd_solver="randomized")
                            first_pc = pca.fit_transform(
                                img_features.astype(np.float32)
                            )
                            mask = first_pc > threshold
                            mask_2d = mask.reshape(grid_size)

                            h_start, h_end = int(grid_size[0] * border), int(
                                grid_size[0] * (1 - border)
                            )
                            w_start, w_end = int(grid_size[1] * border), int(
                                grid_size[1] * (1 - border)
                            )
                            m = mask_2d[h_start:h_end, w_start:w_end]

                            if m.sum() <= m.size * 0.35:
                                mask = -first_pc > threshold
                                mask_2d = mask.reshape(grid_size)

                            mask_processed = cv2.dilate(
                                mask_2d.astype(np.uint8), kernel
                            ).astype(bool)
                            mask_processed = cv2.morphologyEx(
                                mask_processed.astype(np.uint8), cv2.MORPH_CLOSE, kernel
                            ).astype(bool)

                            background_mask[j] = ~mask_processed
                            mask_for_viz[j] = mask_processed.astype(np.float32)
                        except Exception as e:
                            logging.warning(
                                f"PCA mask failed for test image {j}: {e}. Skipping mask."
                            )

                anomaly_maps[background_mask] = 0.0

                saliency_maps_for_viz_batch = mask_for_viz

                for j in range(anomaly_maps.shape[0]):
                    pil_img = pil_imgs[j]
                    anomaly_map_pre_specular = post_process_map(
                        anomaly_maps[j], args.image_res
                    )
                    anomaly_map_final = anomaly_map_pre_specular
                    if args.use_specular_filter:
                        img_tensor = TF.to_tensor(pil_imgs[j]).unsqueeze(0).to(DEVICE)
                        _, _, conf = specular_mask_torch(
                            img_tensor, tau=args.specular_tau
                        )
                        conf = torch.nn.functional.interpolate(
                            conf,
                            size=anomaly_map_final.shape,
                            mode="bilinear",
                            align_corners=False,
                        )
                        conf_map = conf.squeeze().cpu().numpy()
                        anomaly_map_final = (
                            filter_specular_anomalies(anomaly_map_final, conf_map)
                            .cpu()
                            .numpy()
                        )
                    final_anomaly_maps_for_batch.append(anomaly_map_final)

            # End timing
            if torch.cuda.is_available():
                torch.cuda.synchronize(DEVICE)
            end_time = time.perf_counter()
            all_inference_times.append(end_time - start_time)

            for j, anomaly_map_final in enumerate(final_anomaly_maps_for_batch):
                is_anomaly = is_anomaly_batch[j]
                path = path_batch[j]
                pil_img = pil_imgs[j]
                if args.img_score_agg == "max":
                    img_score = np.max(anomaly_map_final)
                elif args.img_score_agg == "p99":
                    img_score = np.percentile(anomaly_map_final, 99)
                elif args.img_score_agg == "mtop5":
                    img_score = np.mean(np.sort(anomaly_map_final.flatten())[-5:])
                elif args.img_score_agg == "mtop1p":
                    img_score = topk_mean(anomaly_map_final, frac=0.01)
                else:
                    img_score = np.mean(anomaly_map_final)

                img_true.append(1 if is_anomaly else 0)
                img_pred_auroc.append(float(img_score))
                if thr_img is not None:
                    img_pred_f1.append(1 if img_score >= thr_img else 0)

                anomaly_map_normalized = min_max_norm(anomaly_map_final)
                H, W = anomaly_map_normalized.shape
                gt_path_str = handler.get_ground_truth_path(path)
                if not gt_path_str or not os.path.exists(gt_path_str):
                    gt_mask = np.zeros((H, W), dtype=np.uint8)
                else:
                    gt_mask_pil = Image.open(gt_path_str).convert("L")
                    if args.docrop:
                        resize_res = int(args.image_res / 0.875)
                        gt_mask_pil = TF.resize(
                            gt_mask_pil,
                            (resize_res, resize_res),
                            interpolation=TF.InterpolationMode.NEAREST,
                        )
                        gt_mask_pil = TF.center_crop(
                            gt_mask_pil, (args.image_res, args.image_res)
                        )
                    gt_mask_pil = TF.resize(
                        gt_mask_pil,
                        (H, W),
                        interpolation=TF.InterpolationMode.NEAREST,
                    )
                    gt_mask = (np.array(gt_mask_pil) > 0).astype(np.uint8)

                px_true_all.extend(gt_mask.flatten().astype(np.uint8))
                px_pred_all_auroc.extend(anomaly_map_final.flatten().astype(np.float32))
                px_pred_all_normalized.extend(
                    anomaly_map_normalized.flatten().astype(np.float32)
                )

                pro_gt_masks.append(gt_mask)
                pro_anomaly_maps.append(anomaly_map_final.astype(np.float32))

                if is_anomaly:
                    if args.save_intro_overlays:
                        vis_img = pil_img
                        save_overlay_for_intro(
                            path,
                            vis_img,
                            anomaly_map_normalized,
                            args.outdir,
                            category,
                        )
                    if vis_saved_count < args.vis_count:
                        vis_img = pil_img
                        if args.docrop and not args.patch_size:
                            resize_res = int(args.image_res / 0.875)
                            vis_img = TF.resize(
                                vis_img,
                                (resize_res, resize_res),
                                interpolation=TF.InterpolationMode.BICUBIC,
                            )
                            vis_img = TF.center_crop(
                                vis_img, (args.image_res, args.image_res)
                            )
                        saliency_map_for_viz = None
                        raw_mask_map = None
                        if saliency_maps_for_viz_batch is not None:
                            raw_mask_map = saliency_maps_for_viz_batch[j]

                        if raw_mask_map is not None:
                            try:
                                if args.bg_mask_method == "pca_normality":
                                    binary_mask = raw_mask_map

                                elif args.bg_mask_method == "dino_saliency":
                                    if args.mask_threshold_method == "percentile":
                                        threshold_val = np.percentile(
                                            raw_mask_map,
                                            args.percentile_threshold * 100,
                                        )
                                        binary_mask = (
                                            raw_mask_map >= threshold_val
                                        ).astype(np.float32)
                                    else:  # otsu
                                        norm_mask = cv2.normalize(
                                            raw_mask_map,
                                            None,
                                            0,
                                            255,
                                            cv2.NORM_MINMAX,
                                            dtype=cv2.CV_8U,
                                        )
                                        _, binary_mask_u8 = cv2.threshold(
                                            norm_mask,
                                            0,
                                            255,
                                            cv2.THRESH_BINARY + cv2.THRESH_OTSU,
                                        )
                                        binary_mask = (binary_mask_u8 > 0).astype(
                                            np.float32
                                        )
                                saliency_map_for_viz = post_process_map(
                                    binary_mask,
                                    anomaly_map_normalized.shape,
                                    blur=False,
                                )
                            except Exception as e:
                                logging.warning(
                                    f"Saliency mask processing failed for visualization: {e}."
                                )

                        save_visualization(
                            path,
                            vis_img,
                            gt_mask,
                            anomaly_map_normalized,
                            args.outdir,
                            category,
                            vis_saved_count,
                            saliency_mask=saliency_map_for_viz,
                        )
                        vis_saved_count += 1

            test_iter.update(len(path_batch))
        if all_inference_times:
            times_arr = np.array(all_inference_times)
            total_images_processed = len(test_paths)
            total_time = np.sum(times_arr)

            avg_time_per_image = total_time / total_images_processed
            images_per_second = 1.0 / avg_time_per_image

            logging.info(f"--- Timing Results for {category} ---")
            logging.info(f"Total test images: {total_images_processed}")
            logging.info(
                f"Batch size: {args.batch_size} (Processed {len(all_inference_times)} batches)"
            )
            logging.info(f"Total inference time: {total_time:.4f} s")
            logging.info(f"Avg. time per image: {avg_time_per_image:.6f} s")
            logging.info(f"Images per second (FPS): {images_per_second:.2f}")

            # Report batch stats
            if len(times_arr) > 1:
                times_arr_stats = times_arr[1:]
                logging.info(
                    f"Avg. time per batch (excl. 1st): {np.mean(times_arr_stats):.6f} s"
                )
                logging.info(
                    f"Median time per batch (excl. 1st): {np.median(times_arr_stats):.6f} s"
                )
            else:
                logging.info(f"Avg. time per batch: {np.mean(times_arr):.6f} s")
        img_auroc = (
            roc_auc_score(img_true, img_pred_auroc)
            if len(np.unique(img_true)) > 1
            else np.nan
        )

        img_aupr = (
            average_precision_score(img_true, img_pred_auroc)
            if len(np.unique(img_true)) > 1
            else np.nan
        )

        px_true_arr = np.array(px_true_all, dtype=np.uint8)
        px_pred_arr_auroc = np.array(px_pred_all_auroc)
        px_pred_arr_normalized = np.array(px_pred_all_normalized)
        has_pos = (px_true_arr == 1).any()
        has_neg = (px_true_arr == 0).any()
        px_auroc = (
            roc_auc_score(px_true_arr, px_pred_arr_auroc)
            if (has_pos and has_neg)
            else np.nan
        )
        img_f1 = f1_score(img_true, img_pred_f1) if (thr_img is not None) else np.nan
        if thr_px is not None and has_pos:
            px_f1 = f1_score(
                px_true_arr.astype(int),
                (px_pred_arr_normalized >= thr_px).astype(int),
            )
        else:
            px_f1 = np.nan
        if len(pro_gt_masks) > 0 and any(mask.any() for mask in pro_gt_masks):
            fpr_cap = getattr(args, "pro_integration_limit", 0.3)
            au_pro = compute_aupro(
                pro_anomaly_maps,
                pro_gt_masks,
                fpr_limit=fpr_cap,
                num_thresholds=300,
                connectivity=8,
            )
        else:
            logging.warning(
                f"No anomalous ground-truth regions found in test set for {category}. "
                "AUPRO is not computable."
            )
            au_pro = np.nan
        logging.info(
            f"{category} Results | I-AUROC: {img_auroc:.4f} | I-AUPR: {img_aupr:.4f} | "
            f"P-AUROC: {px_auroc:.4f} | AU-PRO: {au_pro:.4f} | "
            f"I-F1: {img_f1:.4f} | P-F1: {px_f1:.4f}"
        )
        all_results.append(
            [category, args.seed, img_auroc, img_aupr, px_auroc, au_pro, img_f1, px_f1]
        )

    df = pd.DataFrame(
        all_results,
        columns=[
            "Category",
            "Seed",
            "Image AUROC",
            "Image AUPR",
            "Pixel AUROC",
            "AU-PRO",
            "Image F1",
            "Pixel F1",
        ],
    )
    if not df.empty and len(df) > 1:
        mean_values = df.mean(numeric_only=True)
        mean_row = pd.DataFrame(
            [["Average"] + mean_values.tolist()], columns=df.columns
        )
        df = pd.concat([df, mean_row], ignore_index=True)

    logging.info("\n--- Benchmark Final Results ---")
    logging.info("\n" + df.to_string(index=False, float_format="%.4f", na_rep="N/A"))

    results_path = os.path.join(args.outdir, "benchmark_results.csv")
    df.to_csv(results_path, index=False, float_format="%.4f")
    logging.info(f"\nResults saved to {results_path}")


if __name__ == "__main__":
    main()
__EOF_REBUILD__

cat > 'pyproject.toml' <<'__EOF_REBUILD__'
[build-system]
requires = ["setuptools", "wheel"]
build-backend = "setuptools.build_meta"

[project]
name = "subspacead"
version = "0.1.0"
description = "SubspaceAD Codebase"
dependencies = [
    "torch",
    "torchvision",
    "transformers>=4.56.0",
    "opencv-python",
    "kornia",
    "anomalib"
]

[tool.setuptools.packages.find]
where = ["src"]
__EOF_REBUILD__

cat > 'requirements.txt' <<'__EOF_REBUILD__'
torch
torchvision
transformers>=4.56.0
opencv-python
kornia
numpy
pandas
scikit-learn
Pillow
anomalib
tqdm
__EOF_REBUILD__

cat > 'scripts/aggregation_ablation.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_a100          # GPU partition
#SBATCH --gres=gpu:1                  # Request 1 GPU
#SBATCH --job-name=agg-ablation       # Job name
#SBATCH --ntasks=1                    # Number of tasks
#SBATCH --cpus-per-task=4             # CPU cores
#SBATCH --mem=128G                    # Memory per node
#SBATCH --time=24:00:00               # Walltime
#SBATCH --output=logs/out_%j.txt      # Stdout
#SBATCH --error=logs/err_%j.txt       # Stderr

mkdir -p logs

eval "$($CONDA_EXE shell.bash hook)"


MVTEC_PATH="datasets/mvtec-ad"
VISA_PATH="../AnomalyDINO/VisA_pytorch/1cls/"

MODEL="facebook/dinov2-with-registers-giant"
PCA_EV=0.99
RES=448

declare -A LAYERS_LIST
declare -A AGG_LIST

# 1. Mean-pool (Middle-7)
LAYERS_LIST["mean_middle"]="-12,-13,-14,-15,-16,-17,-18"
AGG_LIST["mean_middle"]="mean"

# 2. Mean-pool (Final-7)
LAYERS_LIST["mean_final"]="-1,-2,-3,-4,-5,-6,-7"
AGG_LIST["mean_final"]="mean"

# 3. Concat (Middle-7)
LAYERS_LIST["concat_middle"]="-12,-13,-14,-15,-16,-17,-18"
AGG_LIST["concat_middle"]="concat"

# 4. Last layer only
LAYERS_LIST["last_layer"]="-1"
AGG_LIST["last_layer"]="mean"

for KEY in "${!LAYERS_LIST[@]}"; do
    LAYERS="${LAYERS_LIST[$KEY]}"
    AGG="${AGG_LIST[$KEY]}"
    
    echo "--- Running MVTec-AD (${KEY}) ---"
    conda run -n subspacead python -u main.py \
        --dataset_name mvtec_ad \
        --dataset_path "$MVTEC_PATH" \
        --image_res $RES \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev $PCA_EV \
        --agg_method "$AGG" \
        --k_shot 4 \
        --aug_count 30 \
        --outdir "results_ablation/mvtec_${KEY}_res${RES}_ev${PCA_EV}"

    echo "--- Running VisA (${KEY}) ---"
    conda run -n subspacead python -u main.py \
        --dataset_name visa \
        --dataset_path "$VISA_PATH" \
        --image_res $RES \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev $PCA_EV \
        --agg_method "$AGG" \
        --k_shot 4 \
        --aug_count 30 \
        --outdir "results_ablation/visa_${KEY}_res${RES}_ev${PCA_EV}"
done

echo "--- Layer aggregation ablation complete ---"
__EOF_REBUILD__

cat > 'scripts/backbone_ablation.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_a100      # GPU partition
#SBATCH --gres=gpu:1              # request 1 GPU
#SBATCH --job-name=backbone       # job name
#SBATCH --ntasks=1                # number of tasks
#SBATCH --cpus-per-task=4         # number of CPU cores
#SBATCH --mem=128G                # memory per node
#SBATCH --time=24:00:00           # walltime
#SBATCH --output=logs/out_%j.txt  # standard output
#SBATCH --error=logs/err_%j.txt   # standard error

eval "$($CONDA_EXE shell.bash hook)"

# Set the absolute path to your MVTec AD dataset directory
MVTEC_PATH="datasets/mvtec-ad"

# Set the absolute path to your VisA dataset directory
# (e.g., /path/to/your/datasets/VisA_pytorch/1cls)
VISA_PATH="datasets/VisA_pytorch/1cls"

# Model identifiers from Hugging Face
BACKBONES=(
    "facebook/dinov2-small"
    "facebook/dinov2-base"
    "facebook/dinov2-large"
)

# Short names for output directories
NAMES=(
    "dinov2S"
    "dinov2B"
    "dinov2L"
)

# Proportional "equivalent middle layers" based on the
# DINOv2-G selection (layers 22-28, or 55%-70% deep)
LAYERS_STRINGS=(
    "-4,-5"          # S/B (12 layers): 55%-70% deep is ~layers 7-8
    "-4,-5"          # S/B (12 layers): 55%-70% deep is ~layers 7-8
    "-7,-8,-9,-10,-11" # L (24 layers): 55%-70% deep is ~layers 13-17
    "-12,-13,-14,-15,-16,-17,-18" # G (40 layers): 55%-70% deep is layers 22-28
)
for i in ${!BACKBONES[@]}; do
    MODEL_CKPT=${BACKBONES[$i]}
    MODEL_NAME=${NAMES[$i]}
    LAYERS=${LAYERS_STRINGS[$i]}

    echo "========================================================"
    echo "=== STARTING EXPERIMENTS FOR BACKBONE: $MODEL_NAME ($MODEL_CKPT) ==="
    echo "=== Using Layers: $LAYERS ==="
    echo "========================================================"
    
    echo "--- Starting k-shot experiments for MVTec AD ---"
    for k in 1 2 4
    do
        echo "--- Running MVTec AD k=$k for $MODEL_NAME ---"
        conda run -n subspacead python -u main.py \
            --dataset_name mvtec_ad \
            --dataset_path "$MVTEC_PATH" \
            --image_res 448 \
            --k_shot $k \
            --layers="$LAYERS" \
            --model_ckpt "$MODEL_CKPT" \
            --aug_count 30 \
            --pca_ev 0.99 \
            --agg_method "mean" \
            --outdir "results_ablations/results_k${k}_mvtec_${MODEL_NAME}" \
            --save_intro_overlays
    done


    echo "--- Starting k-shot experiments for VisA ---"
    for k in 1 2 4
    do
        echo "--- Running VisA k=$k for $MODEL_NAME ---"
        conda run -n subspacead python -u main.py \
            --dataset_name visa \
            --dataset_path "$VISA_PATH" \
            --image_res 448 \
            --k_shot $k \
            --layers="$LAYERS" \
            --model_ckpt "$MODEL_CKPT" \
            --aug_count 30 \
            --pca_ev 0.99 \
            --agg_method "mean" \
            --outdir "results_ablations/results_k${k}_visa_${MODEL_NAME}" \
            --save_intro_overlays 
    done

    echo "=== COMPLETED EXPERIMENTS FOR BACKBONE: $MODEL_NAME ==="

done

echo "--- All experiments complete ---"
__EOF_REBUILD__

cat > 'scripts/benchmark_batched0shot.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100     # GPU partition
#SBATCH --gres=gpu:1             # request 1 GPU
#SBATCH --job-name=full-shot     # Renamed job for clarity
#SBATCH --ntasks=1               # number of tasks
#SBATCH --cpus-per-task=4        # number of CPU cores
#SBATCH --mem=128G               # memory per node
#SBATCH --time=24:00:00          # walltime
#SBATCH --output=logs/out_%j.txt # standard output
#SBATCH --error=logs/err_%j.txt  # standard error

eval "$($CONDA_EXE shell.bash hook)"

# -----------------------------------------------------------------
# --- 1. !! EDIT YOUR DATASET PATHS HERE !! ---
# -----------------------------------------------------------------
# Set the absolute path to your MVTec AD dataset directory
MVTEC_PATH="datasets/mvtec-ad"

# Set the absolute path to your VisA dataset directory
# (e.g., /path/to/your/datasets/VisA_pytorch/1cls)
VISA_PATH="datasets/VisA_pytorch/1cls"
# -----------------------------------------------------------------


echo "--- Running Full-Shot (all train images) for MVTec AD ---"
conda run -n subspacead python -u main.py \
    --dataset_name mvtec_ad \
    --dataset_path "$MVTEC_PATH" \
    --image_res 672 \
    --layers="-12,-13,-14,-15,-16,-17,-18" \
    --model_ckpt "facebook/dinov2-with-registers-giant" \
    --pca_ev 0.99 \
    --agg_method "mean" \
    --outdir "results_batched0shot/mvtec_dinov2G" \
    --batched_zero_shot

echo "--- Running Full-Shot (all train images) for VisA ---"
conda run -n subspacead python -u main.py \
    --dataset_name visa \
    --dataset_path "$VISA_PATH" \
    --image_res 672 \
    --layers="-12,-13,-14,-15,-16,-17,-18" \
    --model_ckpt "facebook/dinov2-with-registers-giant" \
    --pca_ev 0.99 \
    --agg_method "mean" \
    --outdir "results_batched0shot/visa_dinov2G" \
    --batched_zero_shot

echo "--- All experiments complete ---"
__EOF_REBUILD__

cat > 'scripts/benchmark_few_shot.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100     # GPU partition
#SBATCH --gres=gpu:1             # request 1 GPU
#SBATCH --job-name=few-shot      # job name
#SBATCH --ntasks=1               # number of tasks
#SBATCH --cpus-per-task=4        # number of CPU cores
#SBATCH --mem=128G               # memory per node
#SBATCH --time=24:00:00          # walltime
#SBATCH --output=logs/out_%j.txt # standard output
#SBATCH --error=logs/err_%j.txt  # standard error


mkdir -p logs

eval "$($CONDA_EXE shell.bash hook)"
conda activate subspacead

# Set the absolute path to your MVTec AD dataset directory
MVTEC_PATH="../datasets/mvtec-ad"

# Set the absolute path to your VisA dataset directory
# (e.g., /path/to/your/datasets/VisA_pytorch/1cls)
VISA_PATH="../datasets/VisA_pytorch/1cls"


echo "--- Starting k-shot experiments for MVTec AD ---"
for k in 1 2 4
do
    echo "--- Running MVTec AD k=$k ---"
    python -u main.py \
        --dataset_name mvtec_ad \
        --dataset_path "$MVTEC_PATH" \
        --image_res 672 \
        --k_shot $k \
        --layers="-12,-13,-14,-15,-16,-17,-18" \
        --model_ckpt "facebook/dinov2-with-registers-giant" \
        --aug_count 30 \
        --pca_ev 0.99 \
        --seed 42 \
        --agg_method "mean" \
        --outdir "few_shot_results/results_k${k}_mvtec_dinov2G" 
done


echo "--- Starting k-shot experiments for VisA ---"
for k in 1 2 4
do
    echo "--- Running VisA k=$k ---"
    python -u main.py \
        --dataset_name visa \
        --dataset_path "$VISA_PATH" \
        --image_res 672 \
        --k_shot $k \
        --layers="-12,-13,-14,-15,-16,-17,-18" \
        --model_ckpt "facebook/dinov2-with-registers-giant" \
        --aug_count 30 \
        --pca_ev 0.99 \
        --agg_method "mean" \
        --seed 42 \
        --outdir "few_shot_results/results_k${k}_visa_dinov2G" 
done

echo "--- All experiments complete ---"
__EOF_REBUILD__

cat > 'scripts/benchmark_few_shot_dinov3.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100     # GPU partition
#SBATCH --gres=gpu:1             # request 1 GPU
#SBATCH --job-name=few-shot-v3   # job name
#SBATCH --ntasks=1               # number of tasks
#SBATCH --cpus-per-task=4        # number of CPU cores
#SBATCH --mem=128G               # memory per node
#SBATCH --time=24:00:00          # walltime
#SBATCH --output=logs/out_%j.txt # standard output
#SBATCH --error=logs/err_%j.txt  # standard error


mkdir -p logs

eval "$($CONDA_EXE shell.bash hook)"
conda activate subspacead

# DINOv3 checkpoints are gated on HuggingFace: request access at
# https://huggingface.co/facebook/dinov3-vitb16-pretrain-lvd1689m
# and authenticate with `hf auth login` (or set HF_TOKEN) before running.

# DINOv3 backbone. ViT-B/16 has 12 transformer blocks; indices address the
# model's hidden_states (positive i = output of the i-th block). For deeper
# variants adjust accordingly, e.g. "-7,...,-11" for ViT-L/16 (24 blocks) or
# the original "-12,...,-18" for ViT-7B/16 (40 blocks).
MODEL_CKPT="facebook/dinov3-vitb16-pretrain-lvd1689m"
LAYERS="2,5,8,11"

# DINOv3 uses patch size 16, so image_res must be a multiple of 16.
# 672 = 42 x 16 gives a 42x42 patch grid.
IMAGE_RES=672

# Set the absolute path to your MVTec AD dataset directory
MVTEC_PATH="../datasets/mvtec-ad"

# Set the absolute path to your VisA dataset directory
# (e.g., /path/to/your/datasets/VisA_pytorch/1cls)
VISA_PATH="../datasets/VisA_pytorch/1cls"


echo "--- Starting k-shot experiments for MVTec AD (DINOv3) ---"
for k in 1 2 4
do
    echo "--- Running MVTec AD k=$k ---"
    python -u main.py \
        --dataset_name mvtec_ad \
        --dataset_path "$MVTEC_PATH" \
        --image_res $IMAGE_RES \
        --k_shot $k \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL_CKPT" \
        --aug_count 30 \
        --pca_ev 0.99 \
        --seed 42 \
        --agg_method "mean" \
        --outdir "few_shot_results/results_k${k}_mvtec_dinov3B"
done


echo "--- Starting k-shot experiments for VisA (DINOv3) ---"
for k in 1 2 4
do
    echo "--- Running VisA k=$k ---"
    python -u main.py \
        --dataset_name visa \
        --dataset_path "$VISA_PATH" \
        --image_res $IMAGE_RES \
        --k_shot $k \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL_CKPT" \
        --aug_count 30 \
        --pca_ev 0.99 \
        --agg_method "mean" \
        --seed 42 \
        --outdir "few_shot_results/results_k${k}_visa_dinov3B"
done

echo "--- All experiments complete ---"
__EOF_REBUILD__

cat > 'scripts/benchmark_full_shot.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100     # GPU partition
#SBATCH --gres=gpu:1             # request 1 GPU
#SBATCH --job-name=full-shot     # job name
#SBATCH --ntasks=1               # number of tasks
#SBATCH --cpus-per-task=4        # number of CPU cores
#SBATCH --mem=128G               # memory per node
#SBATCH --time=24:00:00          # walltime
#SBATCH --output=logs/out_%j.txt # standard output
#SBATCH --error=logs/err_%j.txt  # standard error

eval "$($CONDA_EXE shell.bash hook)"

# Set the absolute path to your MVTec AD dataset directory
MVTEC_PATH="datasets/mvtec-ad"

# Set the absolute path to your VisA dataset directory
# (e.g., /path/to/your/datasets/VisA_pytorch/1cls)
VISA_PATH="datasets/VisA_pytorch/1cls"


echo "--- Running Full-Shot (all train images) for MVTec AD ---"
conda run -n subspacead python -u main.py \
    --dataset_name mvtec_ad \
    --dataset_path "$MVTEC_PATH" \
    --image_res 672 \
    --layers="-12,-13,-14,-15,-16,-17,-18" \
    --model_ckpt "facebook/dinov2-with-registers-giant" \
    --pca_ev 0.99 \
    --agg_method "mean" \
    --outdir "results_full_shot/mvtec_dinov2G"

echo "--- Running Full-Shot (all train images) for VisA ---"
conda run -n subspacead python -u main.py \
    --dataset_name visa \
    --dataset_path "$VISA_PATH" \
    --image_res 672 \
    --layers="-12,-13,-14,-15,-16,-17,-18" \
    --model_ckpt "facebook/dinov2-with-registers-giant" \
    --pca_ev 0.99 \
    --agg_method "mean" \
    --outdir "results_full_shot/visa_dinov2G"

echo "--- All experiments complete ---"
__EOF_REBUILD__

cat > 'scripts/ev_ablation.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100          # GPU partition
#SBATCH --gres=gpu:1                  # Request 1 GPU
#SBATCH --job-name=ev-ablation-448    # Job name
#SBATCH --ntasks=1                    # Number of tasks
#SBATCH --cpus-per-task=4             # Number of CPU cores
#SBATCH --mem=128G                    # Memory per node
#SBATCH --time=24:00:00               # Walltime
#SBATCH --output=logs/out_%j.txt      # Standard output
#SBATCH --error=logs/err_%j.txt       # Standard error

mkdir -p logs
eval "$($CONDA_EXE shell.bash hook)"

MVTEC_PATH="datasets/mvtec-ad"
VISA_PATH="datasets/VisA_pytorch/1cls"
MODEL="facebook/dinov2-with-registers-giant"
LAYERS="-12,-13,-14,-15,-16,-17,-18"
AGG="mean"
RES=448
EV_LIST=(0.95 0.96 0.97 0.99 1.0)
K_LIST=(1 2 4)

echo "--- Starting PCA explained variance ablation ---"
echo "EV values: ${EV_LIST[*]}"
echo "K-shot values: ${K_LIST[*]}"
echo "Resolution: ${RES}px"

for EV in "${EV_LIST[@]}"; do
  for K in "${K_LIST[@]}"; do
    echo "------------------------------------------------------------"
    echo "--- MVTec-AD | PCA_EV=${EV} | k=${K} ---"
    conda run -n subspacead python -u main.py \
        --dataset_name mvtec_ad \
        --dataset_path "$MVTEC_PATH" \
        --image_res ${RES} \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev ${EV} \
        --agg_method "$AGG" \
        --k_shot ${K} \
        --aug_count 30 \
        --outdir "results_ev_ablation/mvtec_ev${EV}_k${K}"

    echo "--- VisA | PCA_EV=${EV} | k=${K} ---"
    conda run -n subspacead python -u main.py \
        --dataset_name visa \
        --dataset_path "$VISA_PATH" \
        --image_res ${RES} \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev ${EV} \
        --agg_method "$AGG" \
        --k_shot ${K} \
        --aug_count 30 \
        --outdir "results_ev_ablation/visa_ev${EV}_k${K}"
  done
done
echo "--- PCA EV x K-shot ablation complete ---"
__EOF_REBUILD__

cat > 'scripts/resolution_ablation.sh' <<'__EOF_REBUILD__'
#!/bin/bash
#SBATCH --partition=gpu_h100          # GPU partition
#SBATCH --gres=gpu:1                  # Request 1 GPU
#SBATCH --job-name=res-ablation       # Job name
#SBATCH --ntasks=1                    # Number of tasks
#SBATCH --cpus-per-task=4             # CPU cores
#SBATCH --mem=128G                    # Memory per node
#SBATCH --time=24:00:00               # Walltime
#SBATCH --output=logs/out_%j.txt      # Stdout
#SBATCH --error=logs/err_%j.txt       # Stderr

mkdir -p logs
eval "$($CONDA_EXE shell.bash hook)"
MVTEC_PATH="datasets/mvtec-ad"
VISA_PATH="datasets/VisA_pytorch/1cls"
MODEL="facebook/dinov2-with-registers-giant"
LAYERS="-12,-13,-14,-15,-16,-17,-18"
AGG="mean"
PCA_EV=0.99
RES_LIST=(256 336 448 512 672)

echo "--- Starting resolution ablation (res in ${RES_LIST[*]}) ---"
for RES in "${RES_LIST[@]}"; do
    echo "--- MVTec-AD @ ${RES}px, PCA_EV=${PCA_EV} ---"
    conda run -n subspacead python -u main.py \
        --dataset_name mvtec_ad \
        --dataset_path "$MVTEC_PATH" \
        --image_res ${RES} \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev ${PCA_EV} \
        --agg_method "$AGG" \
        --k_shot 4 \
        --aug_count 30 \
        --outdir "results_res_ablation/mvtec_res${RES}_ev${PCA_EV}"

    echo "--- VisA @ ${RES}px, PCA_EV=${PCA_EV} ---"
    conda run -n subspacead python -u main.py \
        --dataset_name visa \
        --dataset_path "$VISA_PATH" \
        --image_res ${RES} \
        --layers="$LAYERS" \
        --model_ckpt "$MODEL" \
        --pca_ev ${PCA_EV} \
        --agg_method "$AGG" \
        --k_shot 4 \
        --aug_count 30 \
        --outdir "results_res_ablation/visa_res${RES}_ev${PCA_EV}"
done

echo "--- Resolution ablation complete ---"
__EOF_REBUILD__

: > 'src/subspacead/__init__.py'

cat > 'src/subspacead/config.py' <<'__EOF_REBUILD__'
import argparse


def parse_layer_indices(arg_str: str):
    """Parses a comma-separated string of integers."""
    return [int(x.strip()) for x in arg_str.split(",")]


def parse_grouped_layers(arg_str: str):
    """Parses grouped layer indices from format like '-1,-2:-3,-4'."""
    if not arg_str:
        return []
    return [parse_layer_indices(group) for group in arg_str.split(":")]


def get_args():
    """Parses and returns command-line arguments."""
    parser = argparse.ArgumentParser(
        description="Unified Anomaly Detection Benchmark Framework"
    )
    data_group = parser.add_argument_group("Dataset Arguments")
    model_group = parser.add_argument_group("Model & Feature Extraction Arguments")
    aug_group = parser.add_argument_group("Augmentation Arguments (for k-shot)")
    pca_group = parser.add_argument_group("Anomaly Detection (PCA) Arguments")
    score_group = parser.add_argument_group("Scoring & Evaluation Arguments")
    mask_group = parser.add_argument_group("Background Removal (Saliency) Arguments")
    specular_group = parser.add_argument_group("Specular Reflection Filter Arguments")
    log_group = parser.add_argument_group("Logistics")

    data_group.add_argument(
        "--seed", type=int, default=42, help="Random seed for reproducibility."
    )
    data_group.add_argument(
        "--dataset_name",
        type=str,
        required=True,
        choices=["mvtec_ad", "mvtec_ad2", "visa"],
        help="Name of the dataset to use.",
    )
    data_group.add_argument(
        "--dataset_path", type=str, required=True, help="Root path to the dataset."
    )
    data_group.add_argument(
        "--categories",
        type=str,
        nargs="+",
        default=None,
        help="Specify categories to run, e.g., 'bottle screw'. If None, runs all.",
    )
    model_group.add_argument(
        "--model_ckpt",
        type=str,
        default="facebook/dinov3-vitb16-pretrain-lvd1689m",
        help=(
            "HuggingFace model checkpoint for feature extraction. Supports "
            "DINOv2 (e.g. facebook/dinov2-with-registers-giant) and DINOv3 ViT "
            "(e.g. facebook/dinov3-vitl16-pretrain-lvd1689m; gated on HF, "
            "requires login). DINOv3 uses patch size 16, so image_res should "
            "be a multiple of 16."
        ),
    )
    model_group.add_argument(
        "--image_res", type=int, default=256, help="Image resolution for the model."
    )
    model_group.add_argument(
        "--patch_size",
        type=int,
        default=None,
        help="Size of the square patches. If None, process in full resolution.",
    )
    model_group.add_argument(
        "--patch_overlap",
        type=float,
        default=0.0,
        help="Overlap ratio between patches.",
    )
    model_group.add_argument(
        "--batch_size", type=int, default=1, help="Batch size for feature extraction."
    )
    model_group.add_argument(
        "--k_shot",
        type=int,
        default=None,
        help="Number of 'good' training images to use (k-shot). If None, all are used.",
    )
    model_group.add_argument(
        "--agg_method",
        type=str,
        default="mean",
        choices=["concat", "mean", "group"],
        help="Feature aggregation method across layers.",
    )
    model_group.add_argument(
        "--layers",
        type=str,
        default="2,5,8,11",
        help=(
            "Comma-separated layer indices for 'concat' or 'mean' aggregation. "
            "Indices address the model's hidden_states (0 = patch embeddings, "
            "positive i = output of the i-th transformer block, negative "
            "indices count from the last block). Default targets DINOv3 "
            "ViT-B/16 (12 blocks)."
        ),
    )
    model_group.add_argument(
        "--grouped_layers",
        type=str,
        default=None,
        help="Layer groups for 'group' agg. Format: '-1,-2:-3,-4'.",
    )
    model_group.add_argument(
        "--docrop",
        action="store_true",
        help="Apply center cropping during preprocessing.",
    )
    model_group.add_argument(
        "--use_clahe",
        action="store_true",
        help="Apply CLAHE to the images.",
    )

    aug_group.add_argument(
        "--aug_count",
        type=int,
        default=0,
        help="Number of augmented samples to generate per k-shot image. Only active if --k_shot is set.",
    )
    aug_group.add_argument(
        "--aug_list",
        type=str,
        nargs="+",
        default=["rotate"],
        help="List of augmentations to apply. Choices: hflip, vflip, rotate, color_jitter, affine.",
    )
    aug_group.add_argument(
        "--no_aug_categories",
        type=str,
        nargs="+",
        default=["transistor"],
        help="List of categories for which augmentations should be disabled.",
    )

    pca_group.add_argument(
        "--pca_dim",
        type=int,
        default=None,
        help="Number of principal components to keep. Overrides --pca_ev.",
    )
    pca_group.add_argument(
        "--pca_ev",
        type=float,
        default=0.99,
        help="Explained variance to retain for PCA. Used if --pca_dim is None.",
    )
    pca_group.add_argument(
        "--whiten", action="store_true", help="Apply whitening in PCA."
    )
    pca_group.add_argument(
        "--use_kernel_pca",
        action="store_true",
        help="Use Kernel PCA instead of standard PCA.",
    )
    pca_group.add_argument(
        "--kernel_pca_kernel",
        type=str,
        default="rbf",
        choices=["rbf", "linear", "poly", "sigmoid", "cosine"],
        help="Kernel to use for Kernel PCA.",
    )
    pca_group.add_argument(
        "--kernel_pca_gamma",
        type=float,
        default=None,
        help="Gamma for rbf, poly and sigmoid kernels. If None, it's set to 1/n_features.",
    )
    score_group.add_argument(
        "--score_method",
        type=str,
        default="reconstruction",
        choices=["reconstruction", "mahalanobis", "cosine", "euclidean"],
        help="Anomaly scoring method.",
    )
    score_group.add_argument(
        "--drop_k",
        type=int,
        default=0,
        help="Number of initial principal components to drop during reconstruction scoring.",
    )
    score_group.add_argument(
        "--img_score_agg",
        type=str,
        default="mtop1p",
        choices=["max", "mean", "p99", "mtop5", "mtop1p"],
        help="Aggregation for image-level scores from pixel maps.",
    )
    score_group.add_argument(
        "--pro_integration_limit",
        type=float,
        default=0.3,
        help="Integration limit for AU-PRO calculation.",
    )
    mask_group.add_argument(
        "--bg_mask_method",
        type=str,
        default=None,
        choices=[None, "dino_saliency", "pca_normality"],
        help="Method to use for background masking.",
    )
    mask_group.add_argument(
        "--mask_threshold_method",
        type=str,
        default="percentile",
        choices=["percentile", "otsu"],
        help="How to binarize the saliency/normality map.",
    )
    mask_group.add_argument(
        "--percentile_threshold",
        type=float,
        default=0.15,
        help="Percentile threshold (0.0-1.0) for 'percentile' method.",
    )
    mask_group.add_argument(
        "--dino_saliency_layer",
        type=int,
        default=6,
        help="Which transformer layer's attention to use for 'dino_saliency' mask (0-indexed).",
    )
    specular_group.add_argument(
        "--use_specular_filter",
        action="store_true",
        help="Enable the specular reflection filter as a post-processing step.",
    )
    specular_group.add_argument(
        "--specular_tau",
        type=float,
        default=0.6,
        help="Binarization threshold for the specular mask.",
    )
    specular_group.add_argument(
        "--specular_size_threshold_factor",
        type=float,
        default=1.5,
        help="Size threshold factor for filtering specular anomalies.",
    )
    log_group.add_argument(
        "--outdir",
        type=str,
        default="./results_full_shot",
        help="Directory to save results, logs, and visualizations.",
    )
    log_group.add_argument(
        "--vis_count",
        type=int,
        default=0,
        help="Number of anomalous examples to visualize per category.",
    )
    log_group.add_argument(
        "--save_intro_overlays",
        action="store_true",
        help="Save clean overlay images for the introductory figure.",
    )
    log_group.add_argument(
        "--no_log_file",
        action="store_true",
        help="Do not save a log file to the output directory.",
    )
    log_group.add_argument(
        "--debug_limit",
        type=int,
        default=None,
        help="Run in debug mode on a subset of N images.",
    )
    log_group.add_argument(
        "--batched_zero_shot",
        action="store_true",
        help="Run in batched zero-shot mode, fitting PCA on the test set.",
    )

    args = parser.parse_args()
    return args
__EOF_REBUILD__

: > 'src/subspacead/core/__init__.py'

cat > 'src/subspacead/core/extractor.py' <<'__EOF_REBUILD__'
import logging
import torch
from transformers import AutoImageProcessor, AutoModel
import cv2
import numpy as np
from PIL import Image

DEVICE = torch.device("cuda" if torch.cuda.is_available() else "cpu")


class FeatureExtractor:
    """Encapsulates the feature extraction model and logic."""

    def __init__(self, model_ckpt: str):
        logging.info(f"Loading feature extraction model: {model_ckpt}...")
        self.processor = AutoImageProcessor.from_pretrained(model_ckpt)
        try:
            # Eager attention is required so output_attentions returns real
            # weights (used for the DINO saliency mask).
            self.model = AutoModel.from_pretrained(
                model_ckpt, attn_implementation="eager"
            )
        except (ValueError, TypeError):
            self.model = AutoModel.from_pretrained(model_ckpt)
            try:
                self.model.set_attn_implementation("eager")
                logging.info("Set model attention implementation to 'eager'.")
            except AttributeError:
                logging.warning(
                    "Could not set attention implementation. Saliency masking might fail."
                )
        self.model = self.model.eval().to(DEVICE)

        if not hasattr(self.model.config, "patch_size"):
            raise ValueError(
                f"Model '{model_ckpt}' does not expose a patch_size and cannot "
                "produce a patch-token grid. Use a ViT-style backbone such as "
                "facebook/dinov2-with-registers-* or facebook/dinov3-vit* "
                "(DINOv3 ConvNeXt variants are not supported)."
            )
        self.patch_size = self.model.config.patch_size
        self.num_register_tokens = getattr(
            self.model.config, "num_register_tokens", 0
        )
        logging.info(
            f"Model loaded successfully (patch_size={self.patch_size}, "
            f"num_register_tokens={self.num_register_tokens})."
        )

    def effective_resolution(self, res: int) -> int:
        """
        Snaps a requested resolution to the nearest multiple of the model's
        patch size (e.g. 14 for DINOv2, 16 for DINOv3) so the token sequence
        forms an exact patch grid.
        """
        ps = self.patch_size
        if res % ps == 0:
            return res
        snapped = max(ps, round(res / ps) * ps)
        logging.warning(
            f"image_res {res} is not divisible by the model patch size {ps}; "
            f"using {snapped} instead."
        )
        return snapped

    def _apply_clahe(self, pil_imgs: list) -> list:
        """Applies CLAHE to a list of PIL images."""
        clahe = cv2.createCLAHE(clipLimit=2.0, tileGridSize=(8, 8))
        processed_imgs = []
        for img in pil_imgs:
            img_np = np.array(img)
            img_lab = cv2.cvtColor(img_np, cv2.COLOR_RGB2LAB)
            l_, a, b = cv2.split(img_lab)
            l_clahe = clahe.apply(l_)
            img_lab_clahe = cv2.merge((l_clahe, a, b))
            img_rgb_clahe = cv2.cvtColor(img_lab_clahe, cv2.COLOR_LAB2RGB)
            processed_imgs.append(Image.fromarray(img_rgb_clahe))
        return processed_imgs

    def _spatial_from_seq(
        self,
        seq_tokens: torch.Tensor,
        drop_front: int,
        n_expected: int,
        h_p: int,
        w_p: int,
    ) -> torch.Tensor:
        """Converts a sequence of tokens to a spatial (grid) format."""
        B, N, C = seq_tokens.shape
        tokens = seq_tokens[:, drop_front : drop_front + n_expected, :]
        return tokens.reshape(B, h_p, w_p, C)

    def _get_saliency_mask(
        self,
        attentions: tuple,
        dino_saliency_layer: int,
        num_reg: int,
        drop_front: int,
        n_expected: int,
        batch_size: int,
        h_p: int,
        w_p: int,
    ) -> np.ndarray:
        """Extracts the DINO saliency mask from attention weights."""
        if dino_saliency_layer < 0:
            dino_saliency_layer = len(attentions) + dino_saliency_layer

        if dino_saliency_layer >= len(attentions):
            logging.warning(
                f"DINO saliency layer {dino_saliency_layer} is out of bounds (0-{len(attentions)-1}). Defaulting to 0."
            )
            dino_saliency_layer = 0

        attn_map = attentions[dino_saliency_layer]
        if num_reg > 0:
            reg_attn_to_patches = attn_map[
                :, :, 1:drop_front, drop_front : drop_front + n_expected
            ]
            saliency_mask = reg_attn_to_patches.mean(dim=(1, 2))
        else:
            logging.info("No register tokens found. Using CLS token for saliency mask.")
            cls_attn_to_patches = attn_map[
                :, :, 0, drop_front : drop_front + n_expected
            ]
            saliency_mask = cls_attn_to_patches.mean(dim=1)

        return saliency_mask.reshape(batch_size, h_p, w_p).cpu().numpy()

    def _aggregate_layers(
        self,
        hidden_states: tuple,
        layers: list,
        grouped_layers: list,
        agg_method: str,
        drop_front: int,
        n_expected: int,
        h_p: int,
        w_p: int,
    ) -> np.ndarray:
        """Aggregates features from specified layers."""

        _spatial_converter = lambda x: self._spatial_from_seq(
            x, drop_front, n_expected, h_p, w_p
        )

        if agg_method == "group":
            if not grouped_layers:
                raise ValueError(
                    "Grouped layers must be provided for 'group' aggregation."
                )

            all_layer_indices = sorted(
                list(set(idx for group in grouped_layers for idx in group))
            )
            layer_tensors = {
                li: _spatial_converter(hidden_states[li]) for li in all_layer_indices
            }
            fused_groups = [
                torch.stack([layer_tensors[li] for li in group], dim=0).mean(dim=0)
                for group in grouped_layers
            ]
            fused = torch.cat(fused_groups, dim=-1)

        else:
            feats = [_spatial_converter(hidden_states[li]) for li in layers]
            if agg_method == "concat":
                fused = torch.cat(feats, dim=-1)
            elif agg_method == "mean":
                fused = torch.stack(feats, dim=0).mean(dim=0)
            else:
                raise ValueError(f"Unknown aggregation method: '{agg_method}'")

        return fused.cpu().numpy()

    @torch.no_grad()
    def extract_tokens(
        self,
        pil_imgs: list,
        res: int,
        layers: list,
        agg_method: str,
        grouped_layers: list = [],
        docrop: bool = False,
        use_clahe: bool = False,
        dino_saliency_layer: int = 0,
    ):
        """
        Extracts, aggregates features, and computes saliency from a batch of images.

        Returns:
            - fused_tokens (np.ndarray): The aggregated patch features.
            - grid_size (tuple): The (height, width) of the patch grid.
            - saliency_mask (np.ndarray): The DINO saliency mask.
        """

        # 1. Preprocessing
        res = self.effective_resolution(res)

        if use_clahe:
            pil_imgs = self._apply_clahe(pil_imgs)

        if docrop:
            resize_res = int(res / 0.875)
            size = {"height": resize_res, "width": resize_res}
            crop_size = {"height": res, "width": res}
        else:
            size = {"height": res, "width": res}
            crop_size = {"height": res, "width": res}

        inputs = self.processor(
            images=pil_imgs,
            return_tensors="pt",
            do_resize=True,
            size=size,
            do_center_crop=docrop,
            crop_size=crop_size,
        ).to(DEVICE)

        # 2. Model Inference
        outputs = self.model(
            **inputs, output_hidden_states=True, output_attentions=True
        )
        hidden_states = outputs.hidden_states
        attentions = outputs.attentions

        if attentions is None:
            raise ValueError(
                "Attention weights are None. Model may be using Flash Attention. "
                "Check transformers version or model compatibility."
            )

        # 3. Setup Parameters
        ps = self.patch_size
        num_reg = self.num_register_tokens
        drop_front = 1 + num_reg  # CLS token + register tokens
        h_p, w_p = res // ps, res // ps
        n_expected = h_p * w_p
        batch_size = inputs.pixel_values.shape[0]

        seq_len = hidden_states[-1].shape[1]
        if seq_len != drop_front + n_expected:
            raise ValueError(
                f"Unexpected token layout: model returned {seq_len} tokens but "
                f"expected {drop_front + n_expected} "
                f"(1 CLS + {num_reg} register + {n_expected} patch tokens for a "
                f"{h_p}x{w_p} grid at res {res}, patch size {ps}). "
                "Check that the backbone is a supported DINOv2/DINOv3 ViT."
            )

        # 4. Saliency Mask Extraction
        saliency_mask = self._get_saliency_mask(
            attentions,
            dino_saliency_layer,
            num_reg,
            drop_front,
            n_expected,
            batch_size,
            h_p,
            w_p,
        )

        # 5. Feature Aggregation
        fused_tokens = self._aggregate_layers(
            hidden_states,
            layers,
            grouped_layers,
            agg_method,
            drop_front,
            n_expected,
            h_p,
            w_p,
        )

        return fused_tokens, (h_p, w_p), saliency_mask
__EOF_REBUILD__

cat > 'src/subspacead/core/patching.py' <<'__EOF_REBUILD__'
import numpy as np
from subspacead.config import parse_layer_indices, parse_grouped_layers
import logging
import cv2
from subspacead.core.extractor import FeatureExtractor
from subspacead.post_process.scoring import calculate_anomaly_scores, post_process_map


def get_patch_coords(image_height, image_width, patch_size, overlap):
    """Calculates patch coordinates with edge-case handling."""
    coords = []
    stride = int(patch_size * (1 - overlap))
    for y in range(0, image_height, stride):
        for x in range(0, image_width, stride):
            x1, y1 = x, y
            x2, y2 = min(x + patch_size, image_width), min(y + patch_size, image_height)
            # Ensure patches at the edges are full size
            if (x2 - x1) < patch_size or (y2 - y1) < patch_size:
                x1, y1 = max(0, x2 - patch_size), max(0, y2 - patch_size)
            coords.append((x1, y1, x2, y2))
    return coords


def _get_patch_background_mask(
    saliency_masks_batch, threshold_method, percentile_threshold
):
    """Applies thresholding to a batch of saliency masks."""
    background_mask = np.zeros_like(saliency_masks_batch, dtype=bool)
    for j, saliency_map in enumerate(saliency_masks_batch):
        try:
            if threshold_method == "percentile":
                threshold = np.percentile(saliency_map, percentile_threshold * 100)
                background_mask[j] = saliency_map < threshold
            else:  # 'otsu'
                norm_mask = cv2.normalize(
                    saliency_map, None, 0, 255, cv2.NORM_MINMAX, dtype=cv2.CV_8U
                )
                _, binary_mask = cv2.threshold(
                    norm_mask, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU
                )
                background_mask[j] = binary_mask == 0
        except Exception as e:
            logging.warning(f"Saliency mask failed for patch {j}: {e}. Skipping mask.")
    return background_mask


def _stitch_patches_to_canvas(
    full_map_canvas, count_map_canvas, patches_to_stitch, coord_batch, blur=True
):
    """Stitches a batch of processed patches onto their respective canvases."""
    for j, patch_map in enumerate(patches_to_stitch):
        x1, y1, x2, y2 = coord_batch[j]
        patch_h, patch_w = y2 - y1, x2 - x1

        map_patch_resized = post_process_map(patch_map, (patch_h, patch_w), blur=blur)

        full_map_canvas[y1:y2, x1:x2] += map_patch_resized
        count_map_canvas[y1:y2, x1:x2] += 1


def _process_single_image_patched(
    pil_img, extractor: FeatureExtractor, pca_params, args, h_p, w_p, feature_dim
):
    """Processes a single image in patches and returns one stitched anomaly map."""
    img_width, img_height = pil_img.size
    patch_coords = get_patch_coords(
        img_height, img_width, args.patch_size, args.patch_overlap
    )

    # Create canvases for stitching
    anomaly_map_full = np.zeros((img_height, img_width), dtype=np.float32)
    count_map = np.zeros((img_height, img_width), dtype=np.float32)
    saliency_map_full = np.zeros((img_height, img_width), dtype=np.float32)
    s_count_map = np.zeros((img_height, img_width), dtype=np.float32)

    # Parse layer arguments once
    layers = parse_layer_indices(args.layers)
    grouped_layers = (
        parse_grouped_layers(args.grouped_layers) if args.agg_method == "group" else []
    )

    # Process patches in batches
    for i in range(0, len(patch_coords), args.batch_size):
        coord_batch = patch_coords[i : i + args.batch_size]
        patch_batch = [pil_img.crop(c) for c in coord_batch]

        tokens, _, saliency_masks_batch = extractor.extract_tokens(
            patch_batch,
            args.image_res,
            layers,
            args.agg_method,
            grouped_layers,
            args.docrop,
            use_clahe=args.use_clahe,
            dino_saliency_layer=args.dino_saliency_layer,
        )

        scores = calculate_anomaly_scores(
            tokens.reshape(-1, feature_dim),
            pca_params,
            args.score_method,
            args.drop_k,
        )
        anomaly_maps_batch = scores.reshape(len(patch_batch), h_p, w_p)

        if args.bg_mask_method is not None:
            background_mask = _get_patch_background_mask(
                saliency_masks_batch,
                args.mask_threshold_method,
                args.percentile_threshold,
            )
            anomaly_maps_batch[background_mask] = 0.0  # Zero out background

        # Stitch anomaly maps
        _stitch_patches_to_canvas(
            anomaly_map_full,
            count_map,
            anomaly_maps_batch,
            coord_batch,
            blur=True,
        )

        # Stitch saliency maps
        _stitch_patches_to_canvas(
            saliency_map_full,
            s_count_map,
            saliency_masks_batch,
            coord_batch,
            blur=False,
        )

    # Average the scores in overlapping regions
    anomaly_map_final = np.divide(
        anomaly_map_full,
        count_map,
        out=np.zeros_like(anomaly_map_full),
        where=count_map != 0,
    )
    saliency_map_final = np.divide(
        saliency_map_full,
        s_count_map,
        out=np.zeros_like(saliency_map_full),
        where=s_count_map != 0,
    )

    return anomaly_map_final, saliency_map_final


def process_image_patched(
    pil_imgs: list,
    extractor: FeatureExtractor,
    pca_params,
    args,
    h_p,
    w_p,
    feature_dim,
):
    """Processes a batch of images in patches and returns lists of stitched maps."""
    anomaly_maps_final = []
    saliency_maps_final = []

    if args.bg_mask_method == "pca_normality":
        logging.warning(
            "Patching mode is not compatible with 'pca_normality' masking. "
            "Falling back to 'dino_saliency' if masking is enabled."
        )

    for pil_img in pil_imgs:
        anomaly_map, saliency_map = _process_single_image_patched(
            pil_img, extractor, pca_params, args, h_p, w_p, feature_dim
        )
        anomaly_maps_final.append(anomaly_map)
        saliency_maps_final.append(saliency_map)

    return anomaly_maps_final, saliency_maps_final
__EOF_REBUILD__

cat > 'src/subspacead/core/pca.py' <<'__EOF_REBUILD__'
import logging
import torch
import numpy as np
from tqdm import tqdm
from sklearn.decomposition import KernelPCA
from sklearn.preprocessing import StandardScaler


class KernelPCAModel:
    """Wraps sklearn.decomposition.KernelPCA for feature collection."""

    def __init__(self, k=None, kernel="rbf", gamma=None, eps=1e-6):
        self.k = k
        self.kernel = kernel
        self.gamma = gamma
        self.eps = eps
        self.scaler = None
        self.kpca = None
        self.pca_params = {}

    def fit(self, features: np.ndarray):
        logging.info("Starting Kernel PCA fit...")
        self.scaler = StandardScaler()
        features_scaled = self.scaler.fit_transform(features)

        self.kpca = KernelPCA(
            n_components=self.k,
            kernel=self.kernel,
            gamma=self.gamma,
            copy_X=False,
        )

        logging.info(f"Fitting KernelPCA with kernel='{self.kernel}'...")
        self.kpca.fit(features_scaled)
        self.pca_params = {
            "scaler": self.scaler,
            "kpca": self.kpca,
            "k": self.k,
            "eps": self.eps,
        }

        logging.info("Kernel PCA fit complete.")
        return self.pca_params


device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
logging.info(f"PCAModel will use device: {device}")


class PCAModel:
    """
    Memory-efficient PCA using a two-pass streaming algorithm on GPU.
    Based on https://github.com/dnhkng/PCAonGPU
    """

    def __init__(self, k=None, ev=None, whiten=False, eps=1e-6):
        self.k = k
        self.ev_ratio = ev
        self.whiten = whiten
        self.eps = eps
        self.mu_ = None
        self.components_ = None
        self.explained_variance_ = None
        self.eigvals_ = None
        self.pca_params = {}
        self.device = device
        self.dtype = torch.float64

    def _compute_mean(self, feature_generator, feature_dim, total_tokens, num_batches):
        """Pass 1: Compute the mean of all features."""
        logging.info("Starting PCA Pass 1/2 (Mean)...")
        self.mu_ = torch.zeros(feature_dim, dtype=self.dtype, device=self.device)
        for batch in tqdm(
            feature_generator(), total=num_batches, desc="PCA Pass 1/2 (Mean)"
        ):
            batch_gpu = torch.from_numpy(batch).to(self.device, dtype=self.dtype)
            self.mu_ += torch.sum(batch_gpu, axis=0)
        self.mu_ /= total_tokens

    def _compute_covariance(
        self, feature_generator, feature_dim, total_tokens, num_batches
    ):
        """Pass 2: Compute the covariance matrix."""
        logging.info("Starting PCA Pass 2/2 (Covariance)...")
        cov_matrix = torch.zeros(
            (feature_dim, feature_dim), dtype=self.dtype, device=self.device
        )
        for batch in tqdm(
            feature_generator(), total=num_batches, desc="PCA Pass 2/2 (Cov)"
        ):
            batch_gpu = torch.from_numpy(batch).to(self.device, dtype=self.dtype)
            batch_centered = batch_gpu - self.mu_
            cov_matrix += torch.matmul(batch_centered.T, batch_centered)
        cov_matrix /= total_tokens - 1
        return cov_matrix

    def _compute_eigendecomposition(self, cov_matrix):
        """Perform eigendecomposition on the covariance matrix."""
        logging.info("Performing eigendecomposition on GPU...")
        evals, evecs = torch.linalg.eigh(cov_matrix)
        sorted_indices = torch.argsort(evals, descending=True)
        self.explained_variance_ = evals[sorted_indices]
        return evecs[:, sorted_indices]

    def _select_k_components(self, evecs):
        """Select the number of components (k) based on 'ev_ratio' or 'k'."""
        if self.ev_ratio is not None and self.k is None:
            cumulative_variance = torch.cumsum(
                self.explained_variance_, dim=0
            ) / torch.sum(self.explained_variance_)
            self.k = (
                torch.searchsorted(
                    cumulative_variance,
                    torch.tensor([self.ev_ratio], dtype=self.dtype, device=self.device),
                ).item()
                + 1
            )
            logging.info(
                f"PCA: selected k={self.k} components to explain {self.ev_ratio * 100:.2f}% of variance."
            )

        if self.k is None:
            self.k = evecs.shape[1]
        else:
            self.k = min(self.k, evecs.shape[1])

        self.components_ = evecs[:, : self.k]
        self.eigvals_ = self.explained_variance_[: self.k]

    def _build_pca_params(self):
        """Copies GPU tensors to a CPU numpy dictionary for pipeline use."""
        self.pca_params = {
            "mu": self.mu_.cpu().numpy().astype(np.float64),
            "components": self.components_.cpu().numpy().astype(np.float64),
            "eigvals": self.eigvals_.cpu().numpy().astype(np.float64),
            "sqrt_eig": np.sqrt(
                self.eigvals_.cpu().numpy().astype(np.float64) + self.eps
            ),
            "k": self.k,
            "whiten": self.whiten,
            "eps": self.eps,
            "cov_Z_inv": np.diag(
                1.0 / (self.eigvals_.cpu().numpy().astype(np.float64) + self.eps)
            ),
        }
        return self.pca_params

    def fit(
        self, feature_generator, feature_dim: int, total_tokens: int, num_batches: int
    ):
        """
        Orchestrates the two-pass streaming PCA fit.
        """
        logging.info(f"Starting PCA fit on {self.device}...")

        self._compute_mean(feature_generator, feature_dim, total_tokens, num_batches)

        cov_matrix = self._compute_covariance(
            feature_generator, feature_dim, total_tokens, num_batches
        )

        evecs = self._compute_eigendecomposition(cov_matrix)

        self._select_k_components(evecs)

        return self._build_pca_params()
__EOF_REBUILD__

: > 'src/subspacead/data/__init__.py'

cat > 'src/subspacead/data/datasets.py' <<'__EOF_REBUILD__'
import glob
import os
from pathlib import Path
import numpy as np
from PIL import Image
import pandas as pd
import logging


class BaseDatasetHandler:
    """Abstract base class for dataset handlers."""

    def __init__(self, root_path, category):
        self.root_path = Path(root_path)
        self.category = category
        self.category_path = self.root_path / category

    def get_train_paths(self):
        raise NotImplementedError

    def get_validation_paths(self):
        return []  # Default: no validation set

    def get_test_paths(self):
        raise NotImplementedError

    def get_ground_truth_path(self, test_path: str):
        raise NotImplementedError

    def get_ground_truth_mask(self, test_path: str, res: tuple):
        gt_path_str = self.get_ground_truth_path(test_path)
        if not gt_path_str or not os.path.exists(gt_path_str):
            return np.zeros((res[1], res[0]), dtype=np.uint8)

        mask = (
            Image.open(gt_path_str)
            .convert("L")
            .resize(res, Image.Resampling.NEAREST)  # res is (W, H)
        )
        return (np.array(mask) > 0).astype(np.uint8)  # returns (H, W) array


class MVTecADDataset(BaseDatasetHandler):
    """Handler for the original MVTec AD dataset structure."""

    def get_train_paths(self):
        return sorted(glob.glob(str(self.category_path / "train" / "good" / "*.png")))

    def get_test_paths(self):
        return sorted(glob.glob(str(self.category_path / "test" / "*" / "*.png")))

    def get_ground_truth_path(self, test_path: str):
        p = Path(test_path)
        return str(
            self.category_path / "ground_truth" / p.parent.name / f"{p.stem}_mask.png"
        )


class MVTecLOCODataset(BaseDatasetHandler):
    """
    Handler for MVTec LOCO AD.
    Structure:
        train/good
        validation/good
        test/good, test/logical_anomalies, test/structural_anomalies
        ground_truth/logical_anomalies/000/000.png (nested) OR standard _mask.png
    """

    def get_train_paths(self):
        return sorted(glob.glob(str(self.category_path / "train" / "good" / "*.png")))

    def get_validation_paths(self):
        return sorted(
            glob.glob(str(self.category_path / "validation" / "good" / "*.png"))
        )

    def get_test_paths(self):
        return sorted(
            glob.glob(str(self.category_path / "test" / "**" / "*.png"), recursive=True)
        )

    def get_ground_truth_path(self, test_path: str):
        p = Path(test_path)
        anomaly_type = p.parent.name  # e.g., 'logical_anomalies'

        if anomaly_type == "good":
            return None
        candidate_1 = (
            self.category_path / "ground_truth" / anomaly_type / f"{p.stem}_mask.png"
        )
        if candidate_1.exists():
            return str(candidate_1)
        candidate_2 = (
            self.category_path / "ground_truth" / anomaly_type / p.stem / "000.png"
        )
        if candidate_2.exists():
            return str(candidate_2)
        candidate_3 = (
            self.category_path / "ground_truth" / anomaly_type / p.stem / f"{p.name}"
        )
        if candidate_3.exists():
            return str(candidate_3)

        return None


class MVTecAD2Dataset(BaseDatasetHandler):
    """Handler for the MVTec AD 2 dataset structure."""

    def get_train_paths(self):
        return sorted(glob.glob(str(self.category_path / "train" / "good" / "*.png")))

    def get_validation_paths(self):
        return sorted(
            glob.glob(str(self.category_path / "validation" / "good" / "*.png"))
        )

    def get_test_paths(self):
        return sorted(
            glob.glob(str(self.category_path / "test_public" / "*" / "*.png"))
        )

    def get_ground_truth_path(self, test_path: str):
        p = Path(test_path)
        return str(
            self.category_path
            / "test_public"
            / "ground_truth"
            / p.parent.name
            / f"{p.stem}_mask.png"
        )


class VisADataset(BaseDatasetHandler):
    """Handler for VisA dataset with structure:
    category/
    ├── ground_truth/bad/*.png
    ├── test/{good,bad}/*.JPG
    └── train/good/*.JPG
    """

    def get_train_paths(self):
        return sorted(glob.glob(str(self.category_path / "train" / "good" / "*.JPG")))

    def get_test_paths(self):
        # include both good and bad
        return sorted(glob.glob(str(self.category_path / "test" / "*" / "*.JPG")))

    def get_ground_truth_path(self, test_path: str):
        p = Path(test_path)
        # only bad samples have masks
        if "bad" in p.parts:
            mask_path = self.category_path / "ground_truth" / "bad" / f"{p.stem}.png"
            if mask_path.exists():
                return str(mask_path)
        # good samples have no ground truth
        return None


def get_dataset_handler(name: str, root_path: str, category: str) -> BaseDatasetHandler:
    """Factory function to get the correct dataset handler."""
    if name == "mvtec_ad":
        return MVTecADDataset(root_path, category)
    elif name == "mvtec_loco":
        return MVTecLOCODataset(root_path, category)
    elif name == "mvtec_ad2":
        return MVTecAD2Dataset(root_path, category)
    elif name == "visa":
        return VisADataset(root_path, category)
    else:
        raise ValueError(f"Unknown dataset: {name}")
__EOF_REBUILD__

cat > 'src/subspacead/data/transforms.py' <<'__EOF_REBUILD__'
import logging
import torchvision.transforms as T


def get_augmentation_transform(aug_list: list, image_res: int):
    """
    Builds a torchvision.transforms.Compose object from a list of augmentation names.
    """
    transforms_list = []
    if not aug_list:
        return T.Compose([])

    logging.info("Initializing Augmentations")
    for aug_name in aug_list:
        if aug_name == "hflip":
            transforms_list.append(T.RandomHorizontalFlip(p=0.5))
            logging.info("Added augmentation: RandomHorizontalFlip(p=0.5)")
        elif aug_name == "vflip":
            transforms_list.append(T.RandomVerticalFlip(p=0.5))
            logging.info("Added augmentation: RandomVerticalFlip(p=0.5)")
        elif aug_name == "rotate":
            transforms_list.append(T.RandomRotation(degrees=(0, 345)))
            logging.info("Added augmentation: RandomRotation(degrees=(0, 345))")
        elif aug_name == "color_jitter":
            transforms_list.append(
                T.ColorJitter(brightness=0.2, contrast=0.2, saturation=0.2, hue=0.1)
            )
            logging.info(
                "Added augmentation: ColorJitter(brightness=0.2, contrast=0.2, ...)"
            )
        elif aug_name == "affine":
            transforms_list.append(
                T.RandomAffine(degrees=0, translate=(0.15, 0.15), shear=10)
            )
        else:
            logging.warning(f"Unknown augmentation '{aug_name}' requested. Ignoring.")

    if not transforms_list:
        logging.warning(
            "Augmentation requested but no valid augmentations found in aug_list."
        )
        return T.Compose([])

    return T.Compose(transforms_list)
__EOF_REBUILD__

: > 'src/subspacead/post_process/__init__.py'

cat > 'src/subspacead/post_process/scoring.py' <<'__EOF_REBUILD__'
import cv2
import numpy as np
import logging
from subspacead.utils.common import topk_mean


def aggregate_image_score(anomaly_map: np.ndarray, method: str) -> float:
    """
    Aggregates a pixel-level anomaly map into a single image-level score.
    """
    if method == "max":
        return float(np.max(anomaly_map))
    elif method == "p99":
        return float(np.percentile(anomaly_map, 99))
    elif method == "mtop5":
        return float(np.mean(np.sort(anomaly_map.flatten())[-5:]))
    elif method == "mtop1p":
        return topk_mean(anomaly_map, frac=0.01)
    elif method == "mean":
        return float(np.mean(anomaly_map))
    else:
        logging.warning(
            f"Unknown image score aggregation '{method}'. Defaulting to 'mean'."
        )
        return float(np.mean(anomaly_map))


def _kernel_self_dot(X: np.ndarray, kpca) -> np.ndarray:
    """Compute k(x,x) for several sklearn KPCA kernels."""
    if kpca.kernel in ("rbf", "cosine"):
        return np.ones(X.shape[0])
    elif kpca.kernel == "linear":
        return np.sum(X**2, axis=1) + kpca.coef0
    elif kpca.kernel == "poly":
        gamma = kpca.gamma if kpca.gamma is not None else 1.0 / X.shape[1]
        return (gamma * np.sum(X**2, axis=1) + kpca.coef0) ** kpca.degree
    elif kpca.kernel == "sigmoid":
        gamma = kpca.gamma if kpca.gamma is not None else 1.0 / X.shape[1]
        return np.tanh(gamma * np.sum(X**2, axis=1) + kpca.coef0)
    else:
        logging.warning(
            f"Cannot compute k(x,x) for kernel '{kpca.kernel}'. Reconstruction error will be approximate."
        )
        return np.zeros(X.shape[0], dtype=X.dtype)


def _row_l2(X: np.ndarray, eps: float) -> np.ndarray:
    """Normalize rows to unit length."""
    n = np.linalg.norm(X, axis=1, keepdims=True)
    return X / (n + eps)


def pca_reconstruct(X: np.ndarray, pca: dict, drop_k: int = 0) -> np.ndarray:
    """Reconstruct X in original space using unscaled components."""
    mu = np.asarray(pca["mu"], dtype=X.dtype)
    C = np.asarray(pca["components"][:, : pca["k"]], dtype=X.dtype)
    X0 = X - mu
    Z = X0 @ C
    if drop_k > 0:
        if drop_k >= Z.shape[1]:
            Z[:] = 0.0
        else:
            Z[:, :drop_k] = 0.0
    X_recon = (Z @ C.T) + mu
    return X_recon


def _calculate_kpca_scores(X: np.ndarray, pca: dict, drop_k: int = 0):
    """Calculates anomaly scores for Kernel PCA."""
    scaler = pca["scaler"]
    kpca = pca["kpca"]
    X_scaled = scaler.transform(X)

    X_proj = kpca.transform(X_scaled)
    k_x_x = _kernel_self_dot(X_scaled, kpca)

    if drop_k > 0:
        if drop_k >= X_proj.shape[1]:
            X_proj = np.zeros_like(X_proj)
        else:
            X_proj = X_proj[:, drop_k:]

    proj_norm_sq = np.sum(X_proj**2, axis=1)
    score = k_x_x - proj_norm_sq
    return np.maximum(0.0, score)


def _calculate_pca_scores(X: np.ndarray, pca: dict, method: str, drop_k: int = 0):
    """Calculates anomaly scores for standard PCA."""
    if drop_k < 0:
        raise ValueError("drop_k must be non-negative.")
    if drop_k >= pca["k"]:
        logging.warning(f"drop_k ({drop_k}) is >= num components ({pca['k']}).")
        if method in ("mahalanobis", "euclidean"):
            return np.zeros(X.shape[0], dtype=X.dtype)

    if method == "reconstruction":
        X_recon = pca_reconstruct(X, pca, drop_k=drop_k)
        return np.sum((X - X_recon) ** 2, axis=1)

    elif method == "mahalanobis":
        mu = np.asarray(pca["mu"], dtype=X.dtype)
        C = np.asarray(pca["components"][:, : pca["k"]], dtype=X.dtype)
        Z = (X - mu) @ C  # [N, k]

        if drop_k >= pca["k"]:
            return np.zeros(X.shape[0], dtype=X.dtype)

        Z_abnormal = Z[:, drop_k:]
        eigvals_abnormal = np.asarray(pca["eigvals"][drop_k:], dtype=X.dtype)
        cov_inv = np.diag(1.0 / (eigvals_abnormal + pca["eps"]))
        return np.einsum("ij,jk,ik->i", Z_abnormal, cov_inv, Z_abnormal)

    elif method == "euclidean":
        mu = np.asarray(pca["mu"], dtype=X.dtype)
        C = np.asarray(pca["components"][:, : pca["k"]], dtype=X.dtype)
        Z = (X - mu) @ C  # [N, k]

        if drop_k >= pca["k"]:
            return np.zeros(X.shape[0], dtype=X.dtype)

        Z_abnormal = Z[:, drop_k:]
        return np.sum(Z_abnormal**2, axis=1)

    elif method == "cosine":
        X_recon = pca_reconstruct(X, pca, drop_k=drop_k)
        X_norm = _row_l2(X, pca["eps"])
        X_recon_norm = _row_l2(X_recon, pca["eps"])
        sim = np.einsum("ij,ij->i", X_norm, X_recon_norm)
        sim = np.clip(sim, -1.0, 1.0)
        return 1.0 - sim

    else:
        raise ValueError(f"Unknown scoring method '{method}'.")


def calculate_anomaly_scores(X: np.ndarray, pca: dict, method: str, drop_k: int = 0):
    """
    Calculates anomaly scores using PCA or KernelPCA.
    Acts as a router to the appropriate scoring function.
    """
    if "kpca" in pca:
        if method != "reconstruction":
            logging.warning(
                "Kernel PCA only supports 'reconstruction' scoring. Using 'reconstruction'."
            )
        return _calculate_kpca_scores(X, pca, drop_k)
    else:
        return _calculate_pca_scores(X, pca, method, drop_k)


def post_process_map(
    anomaly_map: np.ndarray,
    res,
    blur: bool = True,
    close_holes: bool = False,
    close_k_size: int = 5,
):
    """Resize, blur, and optionally close holes in the anomaly map."""
    if anomaly_map.dtype != np.float32:
        anomaly_map = anomaly_map.astype(np.float32)

    dsize = (res, res) if isinstance(res, int) else (res[1], res[0])
    map_resized = cv2.resize(anomaly_map, dsize, interpolation=cv2.INTER_LINEAR)

    if close_holes:
        if close_k_size % 2 == 0:
            close_k_size += 1
        kernel = cv2.getStructuringElement(cv2.MORPH_RECT, (close_k_size, close_k_size))
        map_resized = cv2.morphologyEx(map_resized, cv2.MORPH_CLOSE, kernel)
    if blur:
        sigma = 4.0
        k_size = 3
        return cv2.GaussianBlur(map_resized, (k_size, k_size), sigma)
    else:
        return map_resized
__EOF_REBUILD__

cat > 'src/subspacead/post_process/specular.py' <<'__EOF_REBUILD__'
import torch
import kornia as K
import numpy as np

EPS = 1e-6


def _get_brightness_cue(Y: torch.Tensor) -> torch.Tensor:
    """Calculates the brightness cue (sY)."""
    kY, tY = 15.0, 0.85
    return torch.sigmoid(kY * (Y - tY))


def _get_desaturation_cue(S: torch.Tensor) -> torch.Tensor:
    """Calculates the desaturation cue (sS)."""
    kS, tS = 10.0, 0.25
    return torch.sigmoid(kS * (tS - S))


def _get_curvature_cue(Y: torch.Tensor, B: int) -> torch.Tensor:
    """Calculates the curvature cue (sK) using Laplacian of Gaussian."""
    Y_blur = K.filters.gaussian_blur2d(Y, (3, 3), (1.0, 1.0))
    lap = K.filters.laplacian(Y_blur, kernel_size=3)  # [B,1,H,W]
    tk = torch.quantile(lap.view(B, -1), q=0.95, dim=1).view(B, 1, 1, 1) + EPS
    return torch.sigmoid(4.0 * (lap - tk) / tk)


def specular_mask_torch(img_rgb: torch.Tensor, tau: float = 0.6):
    """
    Generates a specular mask from an sRGB image tensor.

    Args:
        img_rgb: float tensor in [0,1], shape [B,3,H,W], sRGB
        tau: Binarization threshold for the mask.

    Returns:
        bin_mask (torch.Tensor): [B,1,H,W] bool mask (True where specular)
        soft_spec (torch.Tensor): [B,1,H,W] float mask [0,1]
        conf (torch.Tensor): [B,1,H,W] float confidence [0,1] (1.0 - soft_spec)
    """
    B, C, H, W = img_rgb.shape

    # Linearize sRGB -> RGB
    I_lin = torch.clamp(img_rgb, EPS, 1.0) ** 2.2
    R, G, Bc = I_lin[:, 0:1], I_lin[:, 1:2], I_lin[:, 2:3]
    # Luminance (Y)
    Y = 0.2126 * R + 0.7152 * G + 0.0722 * Bc
    # Saturation (S)
    S = K.color.rgb_to_hsv(img_rgb)[:, 1:2]

    clip_flag = (img_rgb.max(dim=1, keepdim=True).values > 0.985).float()
    sY = _get_brightness_cue(Y)
    sS = _get_desaturation_cue(S)
    sK = _get_curvature_cue(Y, B)

    w1, w2, w3, w4 = 0.5, 0.3, 0.2, 0.3
    Sspec = torch.clamp(w1 * sY + w2 * sS + w3 * sK + w4 * clip_flag, 0.0, 1.0)

    bin_mask = Sspec > tau
    conf = 1.0 - Sspec

    return bin_mask, Sspec, conf


def _prepare_tensor(
    tensor: torch.Tensor | np.ndarray, device: torch.device
) -> (torch.Tensor, tuple, torch.device):
    """
    Converts input (numpy or tensor) to a 4D tensor on the correct device.
    Returns the 4D tensor, original shape, and the device.
    """
    if isinstance(tensor, np.ndarray):
        tensor = torch.from_numpy(tensor)
    elif not isinstance(tensor, torch.Tensor):
        raise TypeError(
            f"Input must be a torch.Tensor or np.ndarray. Got: {type(tensor)}"
        )

    tensor = tensor.to(device)
    original_shape = tensor.shape

    # Reshape to 4D [B, 1, H, W] for kornia filters
    if tensor.dim() == 2:  # [H, W]
        tensor = tensor.unsqueeze(0).unsqueeze(0)
    elif tensor.dim() == 3:  # [B, H, W]
        tensor = tensor.unsqueeze(1)

    if tensor.dim() != 4:
        raise ValueError(f"Could not convert input with shape {original_shape} to 4D.")

    return tensor, original_shape


def filter_specular_anomalies(
    anomaly_map: torch.Tensor | np.ndarray,
    conf_map: torch.Tensor | np.ndarray,
    blur_sigma: float = 5.0,
) -> torch.Tensor:
    """
    Filters specular FPs by comparing a pixel's anomaly score to its
    non-specular neighborhood.
    """
    ksize = int(blur_sigma * 4 + 0.5) * 2 + 1
    blur_kernel = (ksize, ksize), (blur_sigma, blur_sigma)

    # Determine target device from inputs
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    if isinstance(conf_map, torch.Tensor) and conf_map.is_cuda:
        device = conf_map.device
    elif isinstance(anomaly_map, torch.Tensor) and anomaly_map.is_cuda:
        device = anomaly_map.device

    conf_map_4d, _ = _prepare_tensor(conf_map, device)
    anomaly_map_4d, original_shape = _prepare_tensor(anomaly_map, device)

    # Get the anomaly map for non-specular regions
    anomaly_map_non_spec = anomaly_map_4d * conf_map_4d

    # Get the average non-specular anomaly score in the neighborhood
    sum_weighted_anomalies = K.filters.gaussian_blur2d(
        anomaly_map_non_spec, *blur_kernel
    )
    sum_weights = K.filters.gaussian_blur2d(conf_map_4d, *blur_kernel)
    anomaly_map_non_spec_avg = sum_weighted_anomalies / (sum_weights + EPS)

    # Compute the "context score"
    context_score = (anomaly_map_non_spec_avg / (anomaly_map_4d + EPS)).clamp(0.0, 1.0)

    # Linearly interpolate the suppression multiplier
    suppression_multiplier = torch.lerp(
        conf_map_4d,
        torch.tensor(1.0, device=device),
        context_score,
    )

    filtered_map = (anomaly_map_4d * suppression_multiplier).clone().detach()

    if len(original_shape) == 2:
        return filtered_map.squeeze(0).squeeze(0)  # [1, 1, H, W] -> [H, W]
    elif len(original_shape) == 3:
        return filtered_map.squeeze(1)  # [B, 1, H, W] -> [B, H, W]
    else:
        return filtered_map  # Already [B, 1, H, W]
__EOF_REBUILD__

: > 'src/subspacead/utils/__init__.py'

cat > 'src/subspacead/utils/common.py' <<'__EOF_REBUILD__'
import argparse
import json
import logging
import os
import numpy as np
import torch
from sklearn.metrics import precision_recall_curve


def setup_logging(outdir: str, save_log: bool = True):
    """Configures the logging for console and file output."""
    log_format = logging.Formatter("%(asctime)s - %(levelname)s - %(message)s")

    # Console handler
    console_handler = logging.StreamHandler()
    console_handler.setFormatter(log_format)

    root_logger = logging.getLogger()
    # Avoid adding handlers multiple times if called elsewhere
    if root_logger.hasHandlers():
        root_logger.handlers.clear()

    root_logger.setLevel(logging.INFO)
    root_logger.addHandler(console_handler)

    # File handler
    if save_log:
        log_file = os.path.join(outdir, "run.log")
        file_handler = logging.FileHandler(log_file)
        file_handler.setFormatter(log_format)
        root_logger.addHandler(file_handler)

    logging.info("Logging configured.")


def save_config(args: argparse.Namespace):
    """Saves the run configuration to a JSON file."""
    config_path = os.path.join(args.outdir, "config.json")
    try:
        with open(config_path, "w") as f:
            json.dump(vars(args), f, indent=4)
        logging.info(f"Configuration saved to {config_path}")
    except TypeError as e:
        logging.warning(
            f"Could not save config as JSON: {e}. Some args may not be serializable."
        )


def min_max_norm(
    x: torch.Tensor | np.ndarray, eps: float = 1e-8
) -> torch.Tensor | np.ndarray:
    """Performs min-max normalization on a tensor or numpy array."""
    is_torch = torch.is_tensor(x)

    if is_torch:
        x = torch.nan_to_num(x, nan=0.0, posinf=0.0, neginf=0.0)
        x_min = torch.amin(x, dim=(-1, -2), keepdim=True)
        x_max = torch.amax(x, dim=(-1, -2), keepdim=True)
        x_norm = (x - x_min) / (x_max - x_min + eps)
        return x_norm.clamp(0.0, 1.0)
    else:
        x = np.nan_to_num(x, nan=0.0, posinf=0.0, neginf=0.0)
        x_min = np.min(x, axis=(-1, -2), keepdims=True)
        x_max = np.max(x, axis=(-1, -2), keepdims=True)
        x_norm = (x - x_min) / (x_max - x_min + eps)
        return np.clip(x_norm, 0.0, 1.0)


def _best_f1_threshold_from_scores(y_true, y_score):
    """Return threshold maximizing F1 on validation scores."""
    y_true = np.asarray(y_true).astype(np.uint8)
    y_score = np.asarray(y_score, dtype=np.float64)
    if y_true.size == 0 or y_score.size == 0 or (y_true.max() == y_true.min()):
        return None, 0.0

    p, r, t = precision_recall_curve(y_true, y_score)
    if t.size == 0:
        return None, 0.0

    f1 = (2 * p[:-1] * r[:-1]) / np.clip(p[:-1] + r[:-1], 1e-12, None)
    i = int(np.nanargmax(f1))
    return float(t[i]), float(f1[i])


def _quantile_threshold_from_negatives(y_true, y_score, target_fpr=0.01):
    """Fallback: pick threshold so that ~target_fpr of NEGATIVES exceed it."""
    y_true = np.asarray(y_true).astype(np.uint8)
    y_score = np.asarray(y_score, dtype=np.float64)
    neg = y_score[y_true == 0]
    if neg.size == 0:
        return None
    q = np.clip(1.0 - float(target_fpr), 0.0, 1.0)
    return float(np.quantile(neg, q, interpolation="linear"))


def pick_threshold_with_fallback(y_true, y_score, target_fpr):
    """
    Try PR-optimal F1; if degenerate (single-class), fall back to negative-quantile.
    Returns (thr, how), where how ∈ {"pr", "quantile", "none"}.
    """
    thr_pr, _ = _best_f1_threshold_from_scores(y_true, y_score)
    if thr_pr is not None:
        return thr_pr, "pr"

    thr_q = _quantile_threshold_from_negatives(y_true, y_score, target_fpr)
    if thr_q is not None:
        return thr_q, "quantile"

    return None, "none"


def topk_mean(arr, frac=0.01):
    """Computes the mean of the top k% values in a flattened array."""
    flat = arr.ravel()
    k = max(1, int(len(flat) * frac))
    idx = np.argpartition(flat, -k)[-k:]
    return float(np.mean(flat[idx]))


def generate_run_name(args: argparse.Namespace) -> str:
    """Generates a unique run name from the command-line arguments."""
    # Core params
    run_name = f"{args.dataset_name}_{args.agg_method}"
    run_name += f"_layers{''.join(args.layers.split(','))}"
    run_name += f"_res{args.image_res}_docrop{int(args.docrop)}"

    # Optional params
    if args.patch_size:
        run_name += f"_patch{args.patch_size}"
    if args.use_kernel_pca:
        run_name += f"_kpca-{args.kernel_pca_kernel}"
    if args.use_specular_filter:
        run_name += "_spec-filt"
    if args.bg_mask_method:
        run_name += f"_mask-{args.bg_mask_method}_thr-{args.mask_threshold_method}"
        if args.mask_threshold_method == "percentile":
            run_name += f"{args.percentile_threshold}"
        if args.bg_mask_method == "dino_saliency":
            run_name += f"_L{args.dino_saliency_layer}"

    run_name += f"_score-{args.score_method}"
    run_name += f"_clahe{int(args.use_clahe)}"
    run_name += f"_dropk{args.drop_k}"
    run_name += f"_model-{args.model_ckpt.split('/')[-1]}"

    # PCA params
    pca_str = (
        f"pca_ev{args.pca_ev}" if args.pca_ev is not None else f"_pca_dim{args.pca_dim}"
    )
    run_name += f"_{pca_str}"
    run_name += f"_i-score{args.img_score_agg}"

    # K-shot params
    if args.k_shot is not None:
        run_name += f"_k{args.k_shot}"
        if args.aug_count > 0 and args.aug_list:
            aug_str = "".join(sorted([a[0] for a in args.aug_list]))
            run_name += f"_aug{args.aug_count}x{aug_str}"

    if args.save_intro_overlays:
        run_name += f"_intro-overlays"

    return run_name
__EOF_REBUILD__

cat > 'src/subspacead/utils/viz.py' <<'__EOF_REBUILD__'
from PIL import Image
import numpy as np
import cv2
import os
import logging
from typing import Optional
from pathlib import Path


def _add_text_to_image(img_np: np.ndarray, text: str) -> np.ndarray:
    """Adds standardized white text to the top-left corner of an image."""
    return cv2.putText(
        img_np.copy(),
        text,
        (10, 25),
        cv2.FONT_HERSHEY_SIMPLEX,
        0.7,
        (255, 255, 255),
        2,
        cv2.LINE_AA,
    )


def _ensure_rgb(img_np: np.ndarray) -> np.ndarray:
    """Ensures a numpy image array is 3-channel RGB."""
    if len(img_np.shape) == 2:
        return cv2.cvtColor(img_np, cv2.COLOR_GRAY2RGB)
    return img_np


def _create_heatmap(anom_map_norm_float: np.ndarray) -> np.ndarray:
    """Converts a 0-1 float anomaly map to an 8-bit JET colormap."""
    anom_map_u8 = (anom_map_norm_float * 255).astype(np.uint8)
    return cv2.applyColorMap(anom_map_u8, cv2.COLORMAP_JET)


def save_overlay_for_intro(
    path: str,
    img: Image.Image,
    anom_map: np.ndarray,
    outdir: str,
    category: str,
    kernel_size: int = 5,
    overlay_intensity: float = 0.4,
):
    """
    Saves a denoised, blended overlay for introductory figures.
    Assumes anom_map is a 0-1 normalized float array.
    """
    img_h, img_w = anom_map.shape
    img_np = np.array(img.resize((img_w, img_h)))
    img_np = _ensure_rgb(img_np)

    anom_map_u8 = (anom_map * 255).astype(np.uint8)
    heatmap = cv2.applyColorMap(anom_map_u8, cv2.COLORMAP_JET)
    try:
        _, binary_mask = cv2.threshold(
            anom_map_u8, 0, 255, cv2.THRESH_BINARY + cv2.THRESH_OTSU
        )
    except cv2.error:
        binary_mask = np.zeros_like(anom_map_u8)

    kernel = np.ones((kernel_size, kernel_size), np.uint8)
    denoised_mask = cv2.morphologyEx(binary_mask, cv2.MORPH_OPEN, kernel)
    denoised_mask = cv2.dilate(denoised_mask, kernel, iterations=1)
    overlay = cv2.addWeighted(
        img_np, (1.0 - overlay_intensity), heatmap, overlay_intensity, 0
    )
    mask_3d = _ensure_rgb(denoised_mask)
    final_image = np.where(mask_3d > 0, overlay, img_np)
    vis_dir = Path(outdir) / "intro_overlays" / category
    vis_dir.mkdir(parents=True, exist_ok=True)

    # Create a unique filename like "contamination_001.png"
    p = Path(path)
    unique_filename = f"{p.parent.name}_{p.name}"

    out_path = vis_dir / unique_filename
    Image.fromarray(final_image).save(out_path)


def save_visualization(
    path: str,
    img: Image.Image,
    gt_mask: np.ndarray,
    anom_map: np.ndarray,
    outdir: str,
    category: str,
    vis_idx: int,
    saliency_mask: Optional[np.ndarray] = None,
):
    """Saves a 2x2 multi-panel visualization (Original, GT, Map, Saliency/Overlay)."""
    target_shape = (anom_map.shape[1], anom_map.shape[0])  # (W, H)
    target_shape_hw = (anom_map.shape[0], anom_map.shape[1])  # (H, W)

    img_np = np.array(img.resize(target_shape))
    img_np_rgb = _ensure_rgb(img_np)

    heatmap = _create_heatmap(anom_map)

    if gt_mask.shape != target_shape_hw:
        logging.warning(
            f"GT shape {gt_mask.shape} != Anom map shape {target_shape_hw}. Resizing GT."
        )
        gt_mask = cv2.resize(
            gt_mask.astype(np.uint8),
            target_shape,
            interpolation=cv2.INTER_NEAREST,
        )
    gt_mask_vis = _ensure_rgb((gt_mask * 255).astype(np.uint8))
    panel1 = _add_text_to_image(img_np_rgb, "Original")
    panel2 = _add_text_to_image(gt_mask_vis, "Ground Truth")
    panel3 = _add_text_to_image(heatmap, "Anomaly Map")

    if saliency_mask is not None:
        saliency_mask_u8 = (saliency_mask * 255).astype(np.uint8)
        saliency_mask_vis = _ensure_rgb(saliency_mask_u8)
        panel4 = _add_text_to_image(saliency_mask_vis, "Saliency Mask (FG)")
    else:
        overlay = cv2.addWeighted(img_np_rgb, 0.6, heatmap, 0.4, 0)
        panel4 = _add_text_to_image(overlay, "Overlay")
    combined_img = np.vstack([np.hstack([panel1, panel2]), np.hstack([panel3, panel4])])

    vis_dir = Path(outdir) / "visualizations"
    vis_dir.mkdir(parents=True, exist_ok=True)
    out_path = vis_dir / f"{category}_example_{vis_idx}.png"
    Image.fromarray(combined_img).save(out_path)
__EOF_REBUILD__

cat > 'tools/prepare_visa.py' <<'__EOF_REBUILD__'
# Copyright Amazon.com, Inc. or its affiliates. All Rights Reserved.
# SPDX-License-Identifier: Apache-2.0
# Data preparation script for VisA dataset, modified from the PromptAD repository.

import argparse
import shutil
import csv
from PIL import Image
import numpy as np
from pathlib import Path
from typing import NamedTuple


class Config(NamedTuple):
    """Configuration settings"""

    split_type: str
    data_folder: Path
    save_folder: Path
    split_file: Path


def setup_arguments() -> Config:
    """Parses and returns command-line arguments."""
    parser = argparse.ArgumentParser(description="Data preparation")
    parser.add_argument(
        "--split-type",
        default="1cls",
        type=str,
        help="1cls, 2cls_highshot, 2cls_fewshot",
    )
    parser.add_argument(
        "--data-folder",
        default="./anomaly_detection/VisA_20220922",
        type=Path,
        help="the path to downloaded VisA dataset",
    )
    parser.add_argument(
        "--save-folder",
        default="./anomaly_detection/VisA_20220922/VisA_pytorch/",
        type=Path,
        help="the target path to save the reorganized VisA dataset",
    )
    parser.add_argument(
        "--split-file",
        default="./datasets/VisA_20220922/split_csv/1cls.csv",
        type=Path,
        help="the csv file to split downloaded VisA dataset",
    )

    args = parser.parse_args()

    return Config(
        split_type=args.split_type,
        data_folder=args.data_folder,
        save_folder=args.save_folder,
        split_file=args.split_file,
    )


def binarize_and_save_mask(src_path: Path, dst_path: Path) -> None:
    """Loads a mask, binarizes it (0 or 255), and saves it."""
    try:
        with Image.open(src_path) as mask:
            # binarize mask
            mask_array = np.array(mask)
            mask_array[mask_array != 0] = 255
            mask_image = Image.fromarray(mask_array)

            # Ensure destination directory exists
            dst_path.parent.mkdir(parents=True, exist_ok=True)
            mask_image.save(dst_path)
    except FileNotFoundError:
        print(f"Warning: Mask file not found at {src_path}")
    except Exception as e:
        print(f"Error processing mask {src_path}: {e}")


def main():
    """Main data preparation script."""
    config = setup_arguments()

    # The final save folder depends on the split type
    save_folder = config.save_folder / config.split_type
    print(f"Starting data preparation for split: {config.split_type}")
    print(f"Reading data from: {config.data_folder}")
    print(f"Saving data to:   {save_folder}")
    print(f"Using split file: {config.split_file}")

    try:
        with open(config.split_file, "r", encoding="utf-8") as file:
            csvreader = csv.reader(file)
            header = next(csvreader)
            print(f"CSV Headers: {header}")

            for row in csvreader:
                category, data_split, label_str, image_path, mask_path = row

                # Map labels
                label = "good" if label_str == "normal" else "bad"

                # Use pathlib for clean path handling
                image_name = Path(image_path).name
                mask_name = Path(mask_path).name

                img_src_path = config.data_folder / image_path
                msk_src_path = config.data_folder / mask_path

                # --- Image Copying (Common to all split types) ---
                img_dst_path = save_folder / category / data_split / label / image_name

                # Create destination directory and copy image
                img_dst_path.parent.mkdir(parents=True, exist_ok=True)
                if img_src_path.exists():
                    shutil.copyfile(img_src_path, img_dst_path)
                else:
                    print(f"Warning: Image file not found at {img_src_path}")
                    continue

                # Mask copying
                should_save_mask = False
                msk_dst_path = None

                if config.split_type == "1cls":
                    # For 1cls, only save masks for test/bad
                    if data_split == "test" and label == "bad":
                        msk_dst_path = (
                            save_folder / category / "ground_truth" / label / mask_name
                        )
                        should_save_mask = True
                else:
                    # For other types, save all 'bad' masks, sorted by split
                    if label == "bad":
                        msk_dst_path = (
                            save_folder
                            / category
                            / "ground_truth"
                            / data_split
                            / label
                            / mask_name
                        )
                        should_save_mask = True

                # Process and save the mask if needed
                if should_save_mask:
                    if not mask_path or not msk_src_path.exists():
                        print(
                            f"Warning: Missing mask for bad sample: {image_path} (Expected at {msk_src_path})"
                        )
                        continue
                    binarize_and_save_mask(msk_src_path, msk_dst_path)

    except FileNotFoundError:
        print(f"Error: Split file not found at {config.split_file}")
        return
    except Exception as e:
        print(f"An unexpected error occurred: {e}")
        return

    print("Data preparation complete.")


if __name__ == "__main__":
    main()
__EOF_REBUILD__

# Files whose original has no trailing newline (heredoc adds one)
python3 - <<'PY'
paths = ['.gitignore', 'scripts/backbone_ablation.sh', 'scripts/benchmark_batched0shot.sh', 'scripts/benchmark_few_shot.sh', 'scripts/benchmark_full_shot.sh']
for p in paths:
    d = open(p, 'rb').read()
    if d.endswith(b'\n'):
        open(p, 'wb').write(d[:-1])
PY

chmod +x 'scripts/benchmark_batched0shot.sh' 'scripts/benchmark_few_shot.sh' 'scripts/benchmark_few_shot_dinov3.sh' 'scripts/benchmark_full_shot.sh'

# Verify every file against its SHA-256
python3 - <<'PY'
import hashlib, sys
manifest = {
    '.gitignore': '88a92469dbbfb8484d797b2b078a51e731932c1a26ccd39c95e78395a92f2aa9',
    'AGENT.md': 'a4c5fdbb6a57facabb10c7e8d22ebf4890bb92f2f0e21c522e60db1e556a805f',
    'README.md': 'efbfc82bd1a3b193db29d3b140cc9fbc0c9e32720bf095d9b5b66d1dca3c4c15',
    'main.py': '25f03bdb7cdd1face8be6cc67ab7435a63f444bd559c853e2a0a85d94026c207',
    'pyproject.toml': 'e59890ace9303bf3743d083a3842ef77f417e572ada9308c5033461e37490f82',
    'requirements.txt': 'a7c007871eea777ac7e3fe41aa5d297744c53a87c2b8c2bacf597f2521f87852',
    'scripts/aggregation_ablation.sh': 'c2bd9aba73ccef36cb40fa8641b8daebc9f3fd09ad42d9974d4416e2435087d6',
    'scripts/backbone_ablation.sh': '7eb9a1e3a0ee72aeebfa13bc64fe0d4b1afc8a02dbdadccfd8ef4841908a20fd',
    'scripts/benchmark_batched0shot.sh': 'd1b2c30be03bd758c3010b2d39ba39a03bbef257580dda5300ffd54caecbd22c',
    'scripts/benchmark_few_shot.sh': '40efcfc7f868b1a43497c116939bf95183146797b2c5a7b658dc1cac126df2e6',
    'scripts/benchmark_few_shot_dinov3.sh': 'dfb7b6265f05fec89c66e545c1d6d114eadcdb4077fa1e6c9127c66e4f0bc7fa',
    'scripts/benchmark_full_shot.sh': 'b86a435f0da2d96fd02e080f63dba3d942488504b18ab0a176b3ae09b7d64ccc',
    'scripts/ev_ablation.sh': 'aa6c80915a63ceb124bf2878a566e42f55679383cedcb300a59e9c7f4fe16582',
    'scripts/resolution_ablation.sh': '8e94bce0af821d514330835855471f26efc65879fdea5614dc28c5b548df3e1d',
    'src/subspacead/__init__.py': 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    'src/subspacead/config.py': 'f7efac7373c7904ef68738f43a03b195215c477800acd93cd3de23eefa62abed',
    'src/subspacead/core/__init__.py': 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    'src/subspacead/core/extractor.py': 'c579946f8bf791d6021a9d2bf929ec800bcf17a3bd594084f0581b2eb7abdc3a',
    'src/subspacead/core/patching.py': 'e21350a524a39a7e6dbe7ec7b9d81aa75a22af4e5f5d0c968ab61677b9ce5b7e',
    'src/subspacead/core/pca.py': 'e83e7b20eba67a691fa45da46ab49305f174ad05fec454414a684843b41396f6',
    'src/subspacead/data/__init__.py': 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    'src/subspacead/data/datasets.py': '1f857690b538cdd3638f09ccdf232d725c2b15b5b093d2a0d6fed557313e4b62',
    'src/subspacead/data/transforms.py': 'aeabe4ef72384b1e858d73943f77151ded0301fc817583b4b6d9f5d0a7fb1338',
    'src/subspacead/post_process/__init__.py': 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    'src/subspacead/post_process/scoring.py': 'd29da82ae313bad4e95ecec09c4efddc0abd13aa86086c1e538bea76bfe5113f',
    'src/subspacead/post_process/specular.py': '1063bb2a95b1707a463903f917099774f56c2c564610c6d51ad42db9b5a3d6fc',
    'src/subspacead/utils/__init__.py': 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855',
    'src/subspacead/utils/common.py': '252f478924c4d28f876d7aa71a578cc2044af6bbfdd5cbaf4a6d5ea3fef53b68',
    'src/subspacead/utils/viz.py': '7e6404cb3c2cf49e6aa44701bbfb9beb4f7a5b93502e0dbf0c92995a2452fa6e',
    'tools/prepare_visa.py': '2cd1def189e691709991f77acba78d5384f7379884bdc4140d220ddde404348e',
}
bad = []
for p, want in manifest.items():
    try:
        got = hashlib.sha256(open(p, 'rb').read()).hexdigest()
    except OSError:
        got = 'MISSING'
    if got != want:
        bad.append(p)
if bad:
    sys.exit('CHECKSUM MISMATCH: ' + ', '.join(bad))
print('OK: all 30 files verified')
PY
# <<< REBUILD-SCRIPT-END
````
