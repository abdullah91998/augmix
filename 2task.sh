#!/bin/bash
#SBATCH --partition=gpu
#SBATCH --gres=gpu:1
#SBATCH --time=04:00:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8
#SBATCH --mem=10GB
#SBATCH --job-name=eval_resnet18_NP_AO
#SBATCH --output=eval_CIFAR_resnet18_NP_AO.out
#SBATCH --nodes=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=abdullah.abdullah@student.uni-siegen.de

#module load GpuModules
#module load pytorch-py37-cuda11.2-gcc8/1.9.1
#module unload pytorch-py37-cuda11.2-gcc8/1.9.1
python cifar-p-eval.py -m resnet18