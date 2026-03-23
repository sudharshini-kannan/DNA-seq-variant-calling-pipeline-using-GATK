#!/bin/bash

# Alignment
bwa mem reference/Homo_sapiens.GRCh38.dna.chromosome.22.fa data/SRR097977.fastq.gz > data/aligned.sam

# Convert SAM to BAM
samtools view -Sb data/aligned.sam > data/aligned.bam

# Sort BAM
samtools sort data/aligned.bam -o data/aligned_sorted.bam

# Add Read Groups
gatk AddOrReplaceReadGroups \
-I data/aligned_sorted.bam \
-O data/aligned_rg.bam \
-RGID 1 -RGLB lib1 -RGPL illumina -RGPU unit1 -RGSM sample1

# Index BAM
samtools index data/aligned_rg.bam

# Variant Calling
gatk HaplotypeCaller \
-R reference/Homo_sapiens.GRCh38.dna.chromosome.22.fa \
-I data/aligned_rg.bam \
-O results/raw_variants.vcf
