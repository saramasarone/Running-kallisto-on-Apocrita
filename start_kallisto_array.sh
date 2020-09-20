#!/bin/sh
#$ -cwd            # Set the working directory for the job to the current directory
#$ -pe smp 1       # Request cores
#$ -l h_rt=12:0:0  # Request hour runtime
#$ -l h_vmem=32G   # Request GB RAM
#$ -t 1-459

module load anaconda3
conda activate kallisto_env

ls -1 /data/WHRI-Bioinformatics/globus/MRC_Trauma/X204SC20031847-Z01-F001-Data/raw_data | grep 'S' > list_of_dirs.txt

INPUT_DIR=$(sed -n "${SGE_TASK_ID}p" list_of_dirs.txt)
./kallisto_bash_array.sh $INPUT_DIR  #run the script
