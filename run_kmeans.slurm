#!/bin/bash

#SBATCH --job-name=k_means                 # Job name
#SBATCH --output=slurm-%j.out              # Output file name
#SBATCH --error=slurm-%j.err               # Error file name
#SBATCH --cluster=chip-cpu                 # Requesting a job on chip CPU cluster
#SBATCH --account=hpcf-scales              # Account
#SBATCH --partition=general                # Partition
#SBATCH --qos=short                        # Queue
#SBATCH --time=00:10:00                    # Time limit 
#SBATCH --mem=1G                           # Memory requested
#SBATCH --nodes=1                          # Number of nodes
#SBATCH --ntasks-per-node=1                # MPI processes per node


# Activate PyVenv environment
module load Python/3.12.3-GCCcore-13.3.0
source /umbc/rs/hpcf-scales/users/rrobert2/KMeans/bin/activate 

python K_Means_Clustering.py
