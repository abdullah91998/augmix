#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=04:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=10GB
#SBATCH --job-name=Abdullah
#SBATCH --output=Abdullah.out
#SBATCH --nodes=1

module load GpuModules
module load pytorch-py37-cuda11.2-gcc8/1.9.1

python cifar.py

