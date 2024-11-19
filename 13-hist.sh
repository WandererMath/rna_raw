#!/bin/bash
#SBATCH --output=2-exec_trim-output.txt
#SBATCH --time=04:00:00
#SBATCH --account=PAS0182  # Specify PI's account here
#SBATCH --ntasks=9                   # Number of parallel tasks (processes)
#SBATCH --cpus-per-task=2            # CPUs allocated per task (adjust as needed)
#SBATCH --constraint=48core



# Your job's commands go here
source ~/.bashrc
conda activate env_plot
python 12-hist.py ../data/bed/A01-bowtie1.bed &
python 12-hist.py ../data/bed/C01-bowtie1.bed &
python 12-hist.py ../data/bed/A02-bowtie1.bed &
python 12-hist.py ../data/bed/C03-bowtie1.bed &
python 12-hist.py ../data/bed/C02-bowtie1.bed &
python 12-hist.py ../data/bed/B03-bowtie1.bed &
python 12-hist.py ../data/bed/B01-bowtie1.bed &
python 12-hist.py ../data/bed/A03-bowtie1.bed &
python 12-hist.py ../data/bed/B02-bowtie1.bed &
wait





