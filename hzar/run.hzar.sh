#!/bin/sh
#
#SBATCH --job-name=genetic.hzar             # Job Name
#SBATCH --nodes=1             # nodes
#SBATCH --cpus-per-task=1               # CPU allocation per Task
#SBATCH --partition=bi            # Name of the Slurm partition used
#SBATCH --chdir=/home/d669d153/work/marsh.wren.rad/hzar        # Set working d$
#SBATCH --mem-per-cpu=3gb            # memory requested
#SBATCH --time=10000

module load R
R -e "Sys.setenv(RSTUDIO_PANDOC='/panfs/pfs.local/work/bi/bin/pandoc/bin');  rmarkdown::render('marsh.wren.hzar.cluster.Rmd',output_file='marsh.wren.hzar.cluster.html')"
