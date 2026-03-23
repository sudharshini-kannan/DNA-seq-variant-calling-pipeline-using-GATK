# 🧬 DNA-Seq Variant Calling Pipeline using GATK

## 📌 Overview

This project implements a complete **DNA sequencing (DNA-seq) variant calling pipeline** using industry-standard bioinformatics tools. The workflow processes raw sequencing data to identify genetic variants.

---

## 🎯 Objective

To perform variant calling on DNA-seq data using:

* Alignment
* BAM processing
* Variant calling with GATK

---

## ⚙️ Tools & Technologies

* **BWA** – Read alignment
* **SAMtools** – BAM processing
* **GATK (Genome Analysis Toolkit)** – Variant calling
* **Linux (Ubuntu/WSL)** – Execution environment

---

## 🔬 Pipeline Workflow

1. **Quality Control (QC)**

   * Assess raw reads quality

2. **Read Alignment**

   * Align reads to reference genome using BWA

3. **SAM → BAM Conversion**

   * Convert SAM to BAM format

4. **Sorting & Indexing**

   * Sort BAM file and create index

5. **Add Read Groups**

   * Prepare BAM for GATK analysis

6. **Variant Calling**

   * Run GATK HaplotypeCaller in GVCF mode

---

## 📂 Project Structure

```
dna_seq_gatk_project/
│── data/                # Input files (FASTQ, BAM)
│── reference/           # Reference genome
│── results/             # Output files (VCF/GVCF)
│── pipeline.sh          # Main pipeline script
│── README.md            # Project documentation
```

---

## ▶️ How to Run

```bash
# Make script executable
chmod +x pipeline.sh

# Run pipeline
./pipeline.sh
```

---

## 📊 Results

* Generated **GVCF file** using GATK
* Majority of reads were filtered due to low mapping quality
* No high-confidence variants detected

---

## ⚠️ Limitations

* Dataset had **low mapping quality**
* Reference genome (chromosome 22) did not fully match dataset
* Resulted in minimal variant detection

---

## 🧠 Key Learnings

* Importance of **data quality in variant calling**
* Impact of **mapping quality on downstream analysis**
* Hands-on experience with **GATK pipeline debugging**
* Understanding real-world bioinformatics challenges

---

## 🚀 Future Improvements

* Use high-quality, matched datasets
* Perform variant filtering and annotation
* Extend pipeline using workflow tools like Nextflow

---

## 👩‍💻 Author

**Sudharshini Kannan**
Bioinformatics | Computational Biology | Data Analysis

---
