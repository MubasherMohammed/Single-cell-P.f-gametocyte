#!/bin/bash
#SBATCH -A snic2021-22-492
#SBATCH -p node 
#SBATCH -C fat
#SBATCH -t 0-48:00:00
#SBATCH -J 10x_bam_split
#SBATCH --mail-user mubasher.mohammed@su.se
#SBATCH -o /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/stdout.%j
#SBATCH -e /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/stderr.%j
#SBATCH --mail-type=ALL
#SBATCH --tmp=20480

module load bioinfo-tools
module load samtools/1.14


  
samtools view -H /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/possorted_genome_bam.bam > header.txt

 cat /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/cluster_8.txt 


     samtools view /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/possorted_genome_bam.bam | grep -f  /crex/proj/uppstore2019072/10xgams/TH-2632/10xgams_count/outs/bigwig/cell_type/cluster_8.txt >  8.bam   


