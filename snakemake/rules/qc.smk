rule fastqc_raw:
    # Run FastQC on raw fastq files
    input:
        fq1="fastq/{sample}_1.fastq.gz",
        fq2="fastq/{sample}_2.fastq.gz",
    output:
        report1="output/{sample}_1_fastqc.html",
        report2="output/{sample}_2_fastqc.html",
        zip1="output/{sample}_1_fastqc.zip",
        zip2="output/{sample}_2_fastqc.zip",
    params:
        outputdir="output/",
    threads: 1
    shell: "fastqc -t 1 -o {params.outputdir} {input.fq1} {input.fq2}"

# rule multiqc_raw:
#     # multiQC for raw reads
#     input:
#         expand(["output/{sample}_1_fastqc.zip", "output/{sample}_2_fastqc.zip"], sample=SAMPLES),
#     output:
#         "output/multiqc_report_raw.html",
#     shell: "multiqc {input} -n {output}"
