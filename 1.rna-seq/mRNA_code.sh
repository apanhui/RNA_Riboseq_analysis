# Step1: Filter raw data with fastp v0.18.0
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-1_1.fq.gz -I LO3-1_2.fq.gz -o clean_fq_dir/LO3-1_1.fq.gz -O clean_fq_dir/LO3-1_2.fq.gz -j clean_fq_dir/LO3-1.json -h clean_fq_dir/LO3-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-1_1.fq.gz -I LO3-1_2.fq.gz -o clean_fq_dir/LO3-1_1.fq.gz -O clean_fq_dir/LO3-1_2.fq.gz -j clean_fq_dir/LO3-1.json -h clean_fq_dir/LO3-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-2_1.fq.gz -I LO3-2_2.fq.gz -o clean_fq_dir/LO3-2_1.fq.gz -O clean_fq_dir/LO3-2_2.fq.gz -j clean_fq_dir/LO3-2.json -h clean_fq_dir/LO3-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-2_1.fq.gz -I LO3-2_2.fq.gz -o clean_fq_dir/LO3-2_1.fq.gz -O clean_fq_dir/LO3-2_2.fq.gz -j clean_fq_dir/LO3-2.json -h clean_fq_dir/LO3-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-3_1.fq.gz -I LO3-3_2.fq.gz -o clean_fq_dir/LO3-3_1.fq.gz -O clean_fq_dir/LO3-3_2.fq.gz -j clean_fq_dir/LO3-3.json -h clean_fq_dir/LO3-3.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO3-3_1.fq.gz -I LO3-3_2.fq.gz -o clean_fq_dir/LO3-3_1.fq.gz -O clean_fq_dir/LO3-3_2.fq.gz -j clean_fq_dir/LO3-3.json -h clean_fq_dir/LO3-3.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-1_1.fq.gz -I LO7-1_2.fq.gz -o clean_fq_dir/LO7-1_1.fq.gz -O clean_fq_dir/LO7-1_2.fq.gz -j clean_fq_dir/LO7-1.json -h clean_fq_dir/LO7-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-1_1.fq.gz -I LO7-1_2.fq.gz -o clean_fq_dir/LO7-1_1.fq.gz -O clean_fq_dir/LO7-1_2.fq.gz -j clean_fq_dir/LO7-1.json -h clean_fq_dir/LO7-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-2_1.fq.gz -I LO7-2_2.fq.gz -o clean_fq_dir/LO7-2_1.fq.gz -O clean_fq_dir/LO7-2_2.fq.gz -j clean_fq_dir/LO7-2.json -h clean_fq_dir/LO7-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-2_1.fq.gz -I LO7-2_2.fq.gz -o clean_fq_dir/LO7-2_1.fq.gz -O clean_fq_dir/LO7-2_2.fq.gz -j clean_fq_dir/LO7-2.json -h clean_fq_dir/LO7-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-3_1.fq.gz -I LO7-3_2.fq.gz -o clean_fq_dir/LO7-3_1.fq.gz -O clean_fq_dir/LO7-3_2.fq.gz -j clean_fq_dir/LO7-3.json -h clean_fq_dir/LO7-3.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i LO7-3_1.fq.gz -I LO7-3_2.fq.gz -o clean_fq_dir/LO7-3_1.fq.gz -O clean_fq_dir/LO7-3_2.fq.gz -j clean_fq_dir/LO7-3.json -h clean_fq_dir/LO7-3.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-1_1.fq.gz -I NC-1_2.fq.gz -o clean_fq_dir/NC-1_1.fq.gz -O clean_fq_dir/NC-1_2.fq.gz -j clean_fq_dir/NC-1.json -h clean_fq_dir/NC-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-1_1.fq.gz -I NC-1_2.fq.gz -o clean_fq_dir/NC-1_1.fq.gz -O clean_fq_dir/NC-1_2.fq.gz -j clean_fq_dir/NC-1.json -h clean_fq_dir/NC-1.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-2_1.fq.gz -I NC-2_2.fq.gz -o clean_fq_dir/NC-2_1.fq.gz -O clean_fq_dir/NC-2_2.fq.gz -j clean_fq_dir/NC-2.json -h clean_fq_dir/NC-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-2_1.fq.gz -I NC-2_2.fq.gz -o clean_fq_dir/NC-2_1.fq.gz -O clean_fq_dir/NC-2_2.fq.gz -j clean_fq_dir/NC-2.json -h clean_fq_dir/NC-2.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-3_1.fq.gz -I NC-3_2.fq.gz -o clean_fq_dir/NC-3_1.fq.gz -O clean_fq_dir/NC-3_2.fq.gz -j clean_fq_dir/NC-3.json -h clean_fq_dir/NC-3.html
fastp -a AGATCGGAAGAGC -q 20 -u 50 -n 15 -l 50 -i NC-3_1.fq.gz -I NC-3_2.fq.gz -o clean_fq_dir/NC-3_1.fq.gz -O clean_fq_dir/NC-3_2.fq.gz -j clean_fq_dir/NC-3.json -h clean_fq_dir/NC-3.html


# Step2: Align clean reads to rRNA with bowtie2 v2.4.4
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-1_1.fq.gz -2 clean_fq_dir/LO3-1_2.fq.gz --un-conc-gz rRNAremove/LO3-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-1_1.fq.gz -2 clean_fq_dir/LO3-1_2.fq.gz --un-conc-gz rRNAremove/LO3-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-2_1.fq.gz -2 clean_fq_dir/LO3-2_2.fq.gz --un-conc-gz rRNAremove/LO3-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-2_1.fq.gz -2 clean_fq_dir/LO3-2_2.fq.gz --un-conc-gz rRNAremove/LO3-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-3_1.fq.gz -2 clean_fq_dir/LO3-3_2.fq.gz --un-conc-gz rRNAremove/LO3-3_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO3-3_1.fq.gz -2 clean_fq_dir/LO3-3_2.fq.gz --un-conc-gz rRNAremove/LO3-3_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-1_1.fq.gz -2 clean_fq_dir/LO7-1_2.fq.gz --un-conc-gz rRNAremove/LO7-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-1_1.fq.gz -2 clean_fq_dir/LO7-1_2.fq.gz --un-conc-gz rRNAremove/LO7-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-2_1.fq.gz -2 clean_fq_dir/LO7-2_2.fq.gz --un-conc-gz rRNAremove/LO7-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-2_1.fq.gz -2 clean_fq_dir/LO7-2_2.fq.gz --un-conc-gz rRNAremove/LO7-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-3_1.fq.gz -2 clean_fq_dir/LO7-3_2.fq.gz --un-conc-gz rRNAremove/LO7-3_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/LO7-3_1.fq.gz -2 clean_fq_dir/LO7-3_2.fq.gz --un-conc-gz rRNAremove/LO7-3_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-1_1.fq.gz -2 clean_fq_dir/NC-1_2.fq.gz --un-conc-gz rRNAremove/NC-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-1_1.fq.gz -2 clean_fq_dir/NC-1_2.fq.gz --un-conc-gz rRNAremove/NC-1_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-2_1.fq.gz -2 clean_fq_dir/NC-2_2.fq.gz --un-conc-gz rRNAremove/NC-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-2_1.fq.gz -2 clean_fq_dir/NC-2_2.fq.gz --un-conc-gz rRNAremove/NC-2_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-3_1.fq.gz -2 clean_fq_dir/NC-3_2.fq.gz --un-conc-gz rRNAremove/NC-3_%.fq.gz
bowtie2 --local -x $rRNA_index -1 clean_fq_dir/NC-3_1.fq.gz -2 clean_fq_dir/NC-3_2.fq.gz --un-conc-gz rRNAremove/NC-3_%.fq.gz


# Step3: Align clean reads to genome using HISAT2 v2.1.0
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-1_1.fq.gz -2 rRNAremove/LO3-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-1.stat --new-summary >align_genome/LO3-1.sam
samtools view -Sb align_genome/LO3-1.sam| samtools sort - -o align_genome/LO3-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-1_1.fq.gz -2 rRNAremove/LO3-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-1.stat --new-summary >align_genome/LO3-1.sam
samtools view -Sb align_genome/LO3-1.sam| samtools sort - -o align_genome/LO3-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-2_1.fq.gz -2 rRNAremove/LO3-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-2.stat --new-summary >align_genome/LO3-2.sam
samtools view -Sb align_genome/LO3-2.sam| samtools sort - -o align_genome/LO3-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-2_1.fq.gz -2 rRNAremove/LO3-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-2.stat --new-summary >align_genome/LO3-2.sam
samtools view -Sb align_genome/LO3-2.sam| samtools sort - -o align_genome/LO3-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-3_1.fq.gz -2 rRNAremove/LO3-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-3.stat --new-summary >align_genome/LO3-3.sam
samtools view -Sb align_genome/LO3-3.sam| samtools sort - -o align_genome/LO3-3.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO3-3_1.fq.gz -2 rRNAremove/LO3-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO3-3.stat --new-summary >align_genome/LO3-3.sam
samtools view -Sb align_genome/LO3-3.sam| samtools sort - -o align_genome/LO3-3.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-1_1.fq.gz -2 rRNAremove/LO7-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-1.stat --new-summary >align_genome/LO7-1.sam
samtools view -Sb align_genome/LO7-1.sam| samtools sort - -o align_genome/LO7-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-1_1.fq.gz -2 rRNAremove/LO7-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-1.stat --new-summary >align_genome/LO7-1.sam
samtools view -Sb align_genome/LO7-1.sam| samtools sort - -o align_genome/LO7-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-2_1.fq.gz -2 rRNAremove/LO7-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-2.stat --new-summary >align_genome/LO7-2.sam
samtools view -Sb align_genome/LO7-2.sam| samtools sort - -o align_genome/LO7-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-2_1.fq.gz -2 rRNAremove/LO7-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-2.stat --new-summary >align_genome/LO7-2.sam
samtools view -Sb align_genome/LO7-2.sam| samtools sort - -o align_genome/LO7-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-3_1.fq.gz -2 rRNAremove/LO7-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-3.stat --new-summary >align_genome/LO7-3.sam
samtools view -Sb align_genome/LO7-3.sam| samtools sort - -o align_genome/LO7-3.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/LO7-3_1.fq.gz -2 rRNAremove/LO7-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/LO7-3.stat --new-summary >align_genome/LO7-3.sam
samtools view -Sb align_genome/LO7-3.sam| samtools sort - -o align_genome/LO7-3.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-1_1.fq.gz -2 rRNAremove/NC-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-1.stat --new-summary >align_genome/NC-1.sam
samtools view -Sb align_genome/NC-1.sam| samtools sort - -o align_genome/NC-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-1_1.fq.gz -2 rRNAremove/NC-1_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-1.stat --new-summary >align_genome/NC-1.sam
samtools view -Sb align_genome/NC-1.sam| samtools sort - -o align_genome/NC-1.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-2_1.fq.gz -2 rRNAremove/NC-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-2.stat --new-summary >align_genome/NC-2.sam
samtools view -Sb align_genome/NC-2.sam| samtools sort - -o align_genome/NC-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-2_1.fq.gz -2 rRNAremove/NC-2_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-2.stat --new-summary >align_genome/NC-2.sam
samtools view -Sb align_genome/NC-2.sam| samtools sort - -o align_genome/NC-2.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-3_1.fq.gz -2 rRNAremove/NC-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-3.stat --new-summary >align_genome/NC-3.sam
samtools view -Sb align_genome/NC-3.sam| samtools sort - -o align_genome/NC-3.sort.bam
hisat2 --rna-strandness RF -x $genome_index -q -1 rRNAremove/NC-3_1.fq.gz -2 rRNAremove/NC-3_2.fq.gz --known-splicesite-infile $genome.splices_sites --dta --summary-file align_genome/NC-3.stat --new-summary >align_genome/NC-3.sam
samtools view -Sb align_genome/NC-3.sam| samtools sort - -o align_genome/NC-3.sort.bam


# Step4: Transcriptome reconstruction and annotation using stringtie v1.3.4 
stringtie --rf -f 0.3 align_genome/LO3-1.sort.bam -G $genome.gtf -o assembly/LO3-1.gtf
stringtie --rf -f 0.3 align_genome/LO3-1.sort.bam -G $genome.gtf -o assembly/LO3-1.gtf
stringtie --rf -f 0.3 align_genome/LO3-2.sort.bam -G $genome.gtf -o assembly/LO3-2.gtf
stringtie --rf -f 0.3 align_genome/LO3-2.sort.bam -G $genome.gtf -o assembly/LO3-2.gtf
stringtie --rf -f 0.3 align_genome/LO3-3.sort.bam -G $genome.gtf -o assembly/LO3-3.gtf
stringtie --rf -f 0.3 align_genome/LO3-3.sort.bam -G $genome.gtf -o assembly/LO3-3.gtf
stringtie --rf -f 0.3 align_genome/LO7-1.sort.bam -G $genome.gtf -o assembly/LO7-1.gtf
stringtie --rf -f 0.3 align_genome/LO7-1.sort.bam -G $genome.gtf -o assembly/LO7-1.gtf
stringtie --rf -f 0.3 align_genome/LO7-2.sort.bam -G $genome.gtf -o assembly/LO7-2.gtf
stringtie --rf -f 0.3 align_genome/LO7-2.sort.bam -G $genome.gtf -o assembly/LO7-2.gtf
stringtie --rf -f 0.3 align_genome/LO7-3.sort.bam -G $genome.gtf -o assembly/LO7-3.gtf
stringtie --rf -f 0.3 align_genome/LO7-3.sort.bam -G $genome.gtf -o assembly/LO7-3.gtf
stringtie --rf -f 0.3 align_genome/NC-1.sort.bam -G $genome.gtf -o assembly/NC-1.gtf
stringtie --rf -f 0.3 align_genome/NC-1.sort.bam -G $genome.gtf -o assembly/NC-1.gtf
stringtie --rf -f 0.3 align_genome/NC-2.sort.bam -G $genome.gtf -o assembly/NC-2.gtf
stringtie --rf -f 0.3 align_genome/NC-2.sort.bam -G $genome.gtf -o assembly/NC-2.gtf
stringtie --rf -f 0.3 align_genome/NC-3.sort.bam -G $genome.gtf -o assembly/NC-3.gtf
stringtie --rf -f 0.3 align_genome/NC-3.sort.bam -G $genome.gtf -o assembly/NC-3.gtf
ls $PWD/assembly/*.gtf  > assembly/assembly_GTF.list
stringtie --merge -f 0.3 -m 200 -G $genome.gtf -o assembly/merge.gtf assembly/assembly_GTF.list
cuffcompare -r $genome.gtf -o assembly/merged assembly/merged.gtf
# Based on the cuffcompare results, the novel transcripts are those with class_code u, i, j, x, e and having more than one exon.
cat $genome.gtf assembly/newgene.tmp.gtf > assembly/exp_ref.gtf


# Step5: Expression analysis
# The align_and_estimate_abundance.pl script in Trinity v2.0.6 utilizes RSEM v1.2.19 software to calculate expression.
gffread assembly/exp_ref.gtf -g $genome.fa -w RSEM/all.exon.fa
grep '^>' RSEM/all.exon.fa| awk '{sub(/>/,"",$1);sub(/gene=/,"",$2;print $2"\t"$1)}' > RSEM/gene_trans_map
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-1_1.fq.gz --right Rremove/LO3-1_2.fq.gz --output_dir RSEM/LO3-1 --output_prefix LO3-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-1_1.fq.gz --right Rremove/LO3-1_2.fq.gz --output_dir RSEM/LO3-1 --output_prefix LO3-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-2_1.fq.gz --right Rremove/LO3-2_2.fq.gz --output_dir RSEM/LO3-2 --output_prefix LO3-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-2_1.fq.gz --right Rremove/LO3-2_2.fq.gz --output_dir RSEM/LO3-2 --output_prefix LO3-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-3_1.fq.gz --right Rremove/LO3-3_2.fq.gz --output_dir RSEM/LO3-3 --output_prefix LO3-3 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO3-3_1.fq.gz --right Rremove/LO3-3_2.fq.gz --output_dir RSEM/LO3-3 --output_prefix LO3-3 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-1_1.fq.gz --right Rremove/LO7-1_2.fq.gz --output_dir RSEM/LO7-1 --output_prefix LO7-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-1_1.fq.gz --right Rremove/LO7-1_2.fq.gz --output_dir RSEM/LO7-1 --output_prefix LO7-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-2_1.fq.gz --right Rremove/LO7-2_2.fq.gz --output_dir RSEM/LO7-2 --output_prefix LO7-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-2_1.fq.gz --right Rremove/LO7-2_2.fq.gz --output_dir RSEM/LO7-2 --output_prefix LO7-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-3_1.fq.gz --right Rremove/LO7-3_2.fq.gz --output_dir RSEM/LO7-3 --output_prefix LO7-3 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/LO7-3_1.fq.gz --right Rremove/LO7-3_2.fq.gz --output_dir RSEM/LO7-3 --output_prefix LO7-3 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-1_1.fq.gz --right Rremove/NC-1_2.fq.gz --output_dir RSEM/NC-1 --output_prefix NC-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-1_1.fq.gz --right Rremove/NC-1_2.fq.gz --output_dir RSEM/NC-1 --output_prefix NC-1 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-2_1.fq.gz --right Rremove/NC-2_2.fq.gz --output_dir RSEM/NC-2 --output_prefix NC-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-2_1.fq.gz --right Rremove/NC-2_2.fq.gz --output_dir RSEM/NC-2 --output_prefix NC-2 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-3_1.fq.gz --right Rremove/NC-3_2.fq.gz --output_dir RSEM/NC-3 --output_prefix NC-3 --quality --phred33-quals --SS_lib_type RF
perl align_and_estimate_abundance.pl --transcripts RSEM/all.exon.fa --gene_trans_map RSEM/gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --left Rremove/NC-3_1.fq.gz --right Rremove/NC-3_2.fq.gz --output_dir RSEM/NC-3 --output_prefix NC-3 --quality --phred33-quals --SS_lib_type RF


# Step6: Differential expression analysis on omicshare
https://www.omicshare.com/tools/Home/Soft/diffanalysis


#Step7: Functional enrichment analysis on omicshare
KEGG: https://www.omicshare.com/tools/Home/Soft/pathwaygseasenior
GO: https://www.omicshare.com/tools/Home/Soft/gogseasenior
