# 🧬 Beginner Genomics Workflows Workshop

Welcome to the **Beginner Genomics Workflows Workshop**, created and led by **Catherine Chahrour** as part of the Genomic Medicine and Statistics DPhil training at the University of Oxford.

This repository is designed for **complete beginners** in high-performance computing and reproducible bioinformatics workflows. You’ll learn how to run jobs on a cluster using **BMRC + Slurm**, and how to build scalable pipelines with **Snakemake**.

---

## 🚀 What You'll Learn

- Basics of **BMRC** cluster computing
- Submitting jobs with **Slurm**
- Handy **bash commands** for navigating Unix systems
- Running workflows using **Snakemake**
- Using **GNU Screen** for remote session management
- Reproducible analysis with **SeqNado** (ChIP-seq, ATAC-seq, RNA-seq, SNPs)

---

## 📂 Repository Structure

```bash
.
├── conda_env/                # Conda environment files
├── profile/                  # Snakemake SLURM profiles
├── Snakefile                 # Example workflow file
├── example.sh               # Sample SLURM batch script
└── snakemake.zip            # Downloadable archive with all workflow scripts
```

---

## 🛠️ Requirements

- Access to **BMRC cluster** (or other Slurm-based HPC)
- `conda` or `mamba` installed
- Optional: `screen`, `wget`, `unzip`, `VSCode` with Remote-SSH

---

## 🧪 Quick Start

### 1. Clone the repository

```bash
git clone https://github.com/CChahrour/Beginner-genomics-workflows-workshop.git
cd Beginner-genomics-workflows-workshop
```

### 2. Set up the environment

```bash
conda env create -f conda_env/gms_cluster.yml
conda activate gms_cluster
```

### 3. Run an example job on BMRC

```bash
screen -S cluster
sbatch example.sh
```

Monitor it:

```bash
squeue --me
less hello_XXXXXXX.out
```

---

## 🧬 Snakemake Basics

To run the workflow:

```bash
snakemake -s Snakefile --cores 1 --profile profile/slurm --slurm -j 2
```

To visualize the workflow DAG:

```bash
snakemake --dag | dot -Tpng > dag.png
```

More: [Snakemake docs](https://snakemake.readthedocs.io)

---

## 💡 Tips

- Use `screen` to avoid job termination if your SSH session drops
- Use `module avail` and `module load` to explore software on BMRC
- Use `VSCode + Remote SSH` for a nicer development experience

---

## 📅 Originally Delivered

🗓️ **2022-2024**  
🏛️ **University of Oxford – GMS DPhil Training**  
👩‍🏫 *Instructor: Catherine Chahrour*  
