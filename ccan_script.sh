#!/bin/bash
#SBATCH -A def-kgroling
#SBATCH --time 0-00:10:00   
#SBATCH --cpus-per-task=8
#SBATCH --mem-per-cpu=4G
#SBATCH --gpus=v100:1

module load python
module load scipy-stack
source $HOME/myenv/bin/activate

python main.py --epochs 5
