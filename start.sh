#!/bin/bash
#SBATCH -J hello
#SBATCH -o hello_%j.out
#SBATCH -e hello_%j.error
#SBATCH -p short
#SBATCH -c 1
#SBATCH --reservation=fza275_568
#SBATCH --time="00:10:00"

echo "------------------------------------------------" 
echo "Run on host: "`hostname` 
echo "Operating system: "`uname -s` 
echo "Username: "`whoami` 
echo "Started at: "`date` 
echo "Job ID:" $SLURM_JOB_ID 
echo "------------------------------------------------" 
 
sleep 30s 
echo "Hello, world!" 
echo "Link for part 2:"
echo "https://datashare.molbiol.ox.ac.uk/public/project/milne_group/cchahrou/GMS/snakemake.zip"
echo "slides:"
echo "https://datashare.molbiol.ox.ac.uk/public/project/milne_group/cchahrou/GMS/GMS_cluster_and_snakemake_22.pptx"