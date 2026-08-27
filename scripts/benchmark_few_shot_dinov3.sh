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
