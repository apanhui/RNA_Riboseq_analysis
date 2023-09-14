# Step1: Filter raw data with fastp v0.20.0
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-1_1.fq.gz -o clean_fq_dir/LO3-1_1.fq.gz -j clean_fq_dir/LO3-1.json -h clean_fq_dir/LO3-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-1_1.fq.gz -o clean_fq_dir/LO3-1_1.fq.gz -j clean_fq_dir/LO3-1.json -h clean_fq_dir/LO3-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-2_1.fq.gz -o clean_fq_dir/LO3-2_1.fq.gz -j clean_fq_dir/LO3-2.json -h clean_fq_dir/LO3-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-2_1.fq.gz -o clean_fq_dir/LO3-2_1.fq.gz -j clean_fq_dir/LO3-2.json -h clean_fq_dir/LO3-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-3_1.fq.gz -o clean_fq_dir/LO3-3_1.fq.gz -j clean_fq_dir/LO3-3.json -h clean_fq_dir/LO3-3.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO3-3_1.fq.gz -o clean_fq_dir/LO3-3_1.fq.gz -j clean_fq_dir/LO3-3.json -h clean_fq_dir/LO3-3.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-1_1.fq.gz -o clean_fq_dir/LO7-1_1.fq.gz -j clean_fq_dir/LO7-1.json -h clean_fq_dir/LO7-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-1_1.fq.gz -o clean_fq_dir/LO7-1_1.fq.gz -j clean_fq_dir/LO7-1.json -h clean_fq_dir/LO7-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-2_1.fq.gz -o clean_fq_dir/LO7-2_1.fq.gz -j clean_fq_dir/LO7-2.json -h clean_fq_dir/LO7-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-2_1.fq.gz -o clean_fq_dir/LO7-2_1.fq.gz -j clean_fq_dir/LO7-2.json -h clean_fq_dir/LO7-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-3_1.fq.gz -o clean_fq_dir/LO7-3_1.fq.gz -j clean_fq_dir/LO7-3.json -h clean_fq_dir/LO7-3.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i LO7-3_1.fq.gz -o clean_fq_dir/LO7-3_1.fq.gz -j clean_fq_dir/LO7-3.json -h clean_fq_dir/LO7-3.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-1_1.fq.gz -o clean_fq_dir/NC-1_1.fq.gz -j clean_fq_dir/NC-1.json -h clean_fq_dir/NC-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-1_1.fq.gz -o clean_fq_dir/NC-1_1.fq.gz -j clean_fq_dir/NC-1.json -h clean_fq_dir/NC-1.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-2_1.fq.gz -o clean_fq_dir/NC-2_1.fq.gz -j clean_fq_dir/NC-2.json -h clean_fq_dir/NC-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-2_1.fq.gz -o clean_fq_dir/NC-2_1.fq.gz -j clean_fq_dir/NC-2.json -h clean_fq_dir/NC-2.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-3_1.fq.gz -o clean_fq_dir/NC-3_1.fq.gz -j clean_fq_dir/NC-3.json -h clean_fq_dir/NC-3.html
fastp -a TGGAATTCT -q 20 -u 50 -w 4 -l 10 -i NC-3_1.fq.gz -o clean_fq_dir/NC-3_1.fq.gz -j clean_fq_dir/NC-3.json -h clean_fq_dir/NC-3.html


# Step2: rRNA removal with bowtie2 v2.92
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-1_1.fq.gz --un-gz rRNAremove/LO3-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-1_1.fq.gz --un-gz rRNAremove/LO3-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-2_1.fq.gz --un-gz rRNAremove/LO3-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-2_1.fq.gz --un-gz rRNAremove/LO3-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-3_1.fq.gz --un-gz rRNAremove/LO3-3.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO3-3_1.fq.gz --un-gz rRNAremove/LO3-3.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-1_1.fq.gz --un-gz rRNAremove/LO7-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-1_1.fq.gz --un-gz rRNAremove/LO7-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-2_1.fq.gz --un-gz rRNAremove/LO7-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-2_1.fq.gz --un-gz rRNAremove/LO7-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-3_1.fq.gz --un-gz rRNAremove/LO7-3.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/LO7-3_1.fq.gz --un-gz rRNAremove/LO7-3.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-1_1.fq.gz --un-gz rRNAremove/NC-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-1_1.fq.gz --un-gz rRNAremove/NC-1.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-2_1.fq.gz --un-gz rRNAremove/NC-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-2_1.fq.gz --un-gz rRNAremove/NC-2.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-3_1.fq.gz --un-gz rRNAremove/NC-3.fq.gz
bowtie2 --local -x $rRNA_index -U clean_fq_dir/NC-3_1.fq.gz --un-gz rRNAremove/NC-3.fq.gz


# Step3: tRNA sRNA removal with bowtie2 v2.92
bowtie2 --local -x $index -U rRNAremove/LO3-1.fq.gz --un-gz sRNAremove/LO3-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO3-1.fq.gz --un-gz sRNAremove/LO3-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO3-2.fq.gz --un-gz sRNAremove/LO3-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO3-2.fq.gz --un-gz sRNAremove/LO3-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO3-3.fq.gz --un-gz sRNAremove/LO3-3.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO3-3.fq.gz --un-gz sRNAremove/LO3-3.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-1.fq.gz --un-gz sRNAremove/LO7-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-1.fq.gz --un-gz sRNAremove/LO7-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-2.fq.gz --un-gz sRNAremove/LO7-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-2.fq.gz --un-gz sRNAremove/LO7-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-3.fq.gz --un-gz sRNAremove/LO7-3.fq.gz
bowtie2 --local -x $index -U rRNAremove/LO7-3.fq.gz --un-gz sRNAremove/LO7-3.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-1.fq.gz --un-gz sRNAremove/NC-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-1.fq.gz --un-gz sRNAremove/NC-1.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-2.fq.gz --un-gz sRNAremove/NC-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-2.fq.gz --un-gz sRNAremove/NC-2.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-3.fq.gz --un-gz sRNAremove/NC-3.fq.gz
bowtie2 --local -x $index -U rRNAremove/NC-3.fq.gz --un-gz sRNAremove/NC-3.fq.gz


Step4: Extraction of reads with lengths between 20 and 40 bp
zcat sRNAremove/LO3-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-1_ft.gz 
zcat sRNAremove/LO3-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-1_ft.gz 
zcat sRNAremove/LO3-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-2_ft.gz 
zcat sRNAremove/LO3-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-2_ft.gz 
zcat sRNAremove/LO3-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-3_ft.gz 
zcat sRNAremove/LO3-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO3-3_ft.gz 
zcat sRNAremove/LO7-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-1_ft.gz 
zcat sRNAremove/LO7-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-1_ft.gz 
zcat sRNAremove/LO7-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-2_ft.gz 
zcat sRNAremove/LO7-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-2_ft.gz 
zcat sRNAremove/LO7-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-3_ft.gz 
zcat sRNAremove/LO7-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/LO7-3_ft.gz 
zcat sRNAremove/NC-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-1_ft.gz 
zcat sRNAremove/NC-1.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-1_ft.gz 
zcat sRNAremove/NC-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-2_ft.gz 
zcat sRNAremove/NC-2.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-2_ft.gz 
zcat sRNAremove/NC-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-3_ft.gz 
zcat sRNAremove/NC-3.fq.gz| awk 'NR%4==1{id=$0;flag=0}; (NR%4==2 && length($0) >= 20 && length($0) <= 40){flag=1;print id"\n"$0"\n+"}; (NR%4==0 && flag==1){print $0}'|gzip > sRNAremove/NC-3_ft.gz 


# Step5: Align filtered reads to genome using STAR v020201
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-1_ft.fq.gz --outFileNamePrefix align/LO3-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-1_ft.fq.gz --outFileNamePrefix align/LO3-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-2_ft.fq.gz --outFileNamePrefix align/LO3-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-2_ft.fq.gz --outFileNamePrefix align/LO3-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-3_ft.fq.gz --outFileNamePrefix align/LO3-3
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO3-3_ft.fq.gz --outFileNamePrefix align/LO3-3
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-1_ft.fq.gz --outFileNamePrefix align/LO7-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-1_ft.fq.gz --outFileNamePrefix align/LO7-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-2_ft.fq.gz --outFileNamePrefix align/LO7-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-2_ft.fq.gz --outFileNamePrefix align/LO7-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-3_ft.fq.gz --outFileNamePrefix align/LO7-3
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/LO7-3_ft.fq.gz --outFileNamePrefix align/LO7-3
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-1_ft.fq.gz --outFileNamePrefix align/NC-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-1_ft.fq.gz --outFileNamePrefix align/NC-1
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-2_ft.fq.gz --outFileNamePrefix align/NC-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-2_ft.fq.gz --outFileNamePrefix align/NC-2
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-3_ft.fq.gz --outFileNamePrefix align/NC-3
STAR --runMode alignReads --readFilesCommand zcat --twopassMode Basic --outSAMtype BAM Unsorted --outSAMunmapped None --genomeDir $genomeDir --readFilesIn sRNAremove/NC-3_ft.fq.gz --outFileNamePrefix align/NC-3


# Step6:  Trinucleotide periodicity analysis using riboWaltz
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-3
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO3-3
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-3
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/LO7-3
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-1
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-2
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-3
bowtie2 -k 10 --no-unal -x $genome_exon_index -U sRNAremove/NC-3_ft.fq.gz | samtools view -Sb -| samtools sort - align/exon/NC-3
perl draw_ud_v3.pl align/exon/LO3-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO3-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO3-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO3-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO3-3.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO3-3.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-3.bam $genome.gtf
perl draw_ud_v3.pl align/exon/LO7-3.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-1.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-2.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-3.bam $genome.gtf
perl draw_ud_v3.pl align/exon/NC-3.bam $genome.gtf


# Step7: Gene expression at the translational level
# The align_and_estimate_abundance.pl script in Trinity utilizes RSEM v1.2.19 software to calculate expression.
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-1_ft.fq.gz --output_dir EXPS/LO3-1 --output_prefix LO3-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-1_ft.fq.gz --output_dir EXPS/LO3-1 --output_prefix LO3-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-2_ft.fq.gz --output_dir EXPS/LO3-2 --output_prefix LO3-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-2_ft.fq.gz --output_dir EXPS/LO3-2 --output_prefix LO3-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-3_ft.fq.gz --output_dir EXPS/LO3-3 --output_prefix LO3-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO3-3_ft.fq.gz --output_dir EXPS/LO3-3 --output_prefix LO3-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-1_ft.fq.gz --output_dir EXPS/LO7-1 --output_prefix LO7-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-1_ft.fq.gz --output_dir EXPS/LO7-1 --output_prefix LO7-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-2_ft.fq.gz --output_dir EXPS/LO7-2 --output_prefix LO7-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-2_ft.fq.gz --output_dir EXPS/LO7-2 --output_prefix LO7-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-3_ft.fq.gz --output_dir EXPS/LO7-3 --output_prefix LO7-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/LO7-3_ft.fq.gz --output_dir EXPS/LO7-3 --output_prefix LO7-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-1_ft.fq.gz --output_dir EXPS/NC-1 --output_prefix NC-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-1_ft.fq.gz --output_dir EXPS/NC-1 --output_prefix NC-1 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-2_ft.fq.gz --output_dir EXPS/NC-2 --output_prefix NC-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-2_ft.fq.gz --output_dir EXPS/NC-2 --output_prefix NC-2 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-3_ft.fq.gz --output_dir EXPS/NC-3 --output_prefix NC-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 
align_and_estimate_abundance.pl --transcripts $genome_cds_imdex --gene_trans_map $gene_trans_map --est_method RSEM --aln_method bowtie2 --seqType fq --single sRNAremove/NC-3_ft.fq.gz --output_dir EXPS/NC-3 --output_prefix NC-3 --quality --phred33-quals --rsem_add_opts --seed-length 10 


# Step8: Differential expression analysis on omicshare
https://www.omicshare.com/tools/Home/Soft/diffanalysis


#Step9: Functional enrichment analysis on omicshare
KEGG: https://www.omicshare.com/tools/Home/Soft/pathwaygseasenior
GO: https://www.omicshare.com/tools/Home/Soft/gogseasenior


#step10: sORF prediction
perl orf_predict.pl -target_fa $longest_5utr.fa -pre sORF/prepare/uORF -minlength 63 -maxlength 453
perl orf_predict.pl -target_fa $longest_3utr.fa -pre sORF/prepare/dORF -minlength 63 -maxlength 453
cat prepare/uORF.bed prepare/dORF.bed prepare/longest_mORF.bed > sORF/prepare/all_ORF.bed


# step11: Quantification of sORF translation abundance
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-1.bam sORF/bams/LO3-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-1.bam sORF/bams/LO3-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-2.bam sORF/bams/LO3-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-2.bam sORF/bams/LO3-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-3.bam sORF/bams/LO3-3
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO3-3.bam sORF/bams/LO3-3
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-1.bam sORF/bams/LO7-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-1.bam sORF/bams/LO7-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-2.bam sORF/bams/LO7-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-2.bam sORF/bams/LO7-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-3.bam sORF/bams/LO7-3
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/LO7-3.bam sORF/bams/LO7-3
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-1.bam sORF/bams/NC-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-1.bam sORF/bams/NC-1
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-2.bam sORF/bams/NC-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-2.bam sORF/bams/NC-2
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-3.bam sORF/bams/NC-3
perl filter_muti_align.pl EXPS/gene_trans.map align/exon/NC-3.bam sORF/bams/NC-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-1.filter.bam  sORF/bams/LO3-1.stat.xls sORF/bams/LO3-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-1.filter.bam  sORF/bams/LO3-1.stat.xls sORF/bams/LO3-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-2.filter.bam  sORF/bams/LO3-2.stat.xls sORF/bams/LO3-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-2.filter.bam  sORF/bams/LO3-2.stat.xls sORF/bams/LO3-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-3.filter.bam  sORF/bams/LO3-3.stat.xls sORF/bams/LO3-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO3-3.filter.bam  sORF/bams/LO3-3.stat.xls sORF/bams/LO3-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-1.filter.bam  sORF/bams/LO7-1.stat.xls sORF/bams/LO7-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-1.filter.bam  sORF/bams/LO7-1.stat.xls sORF/bams/LO7-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-2.filter.bam  sORF/bams/LO7-2.stat.xls sORF/bams/LO7-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-2.filter.bam  sORF/bams/LO7-2.stat.xls sORF/bams/LO7-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-3.filter.bam  sORF/bams/LO7-3.stat.xls sORF/bams/LO7-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/LO7-3.filter.bam  sORF/bams/LO7-3.stat.xls sORF/bams/LO7-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-1.filter.bam  sORF/bams/NC-1.stat.xls sORF/bams/NC-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-1.filter.bam  sORF/bams/NC-1.stat.xls sORF/bams/NC-1
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-2.filter.bam  sORF/bams/NC-2.stat.xls sORF/bams/NC-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-2.filter.bam  sORF/bams/NC-2.stat.xls sORF/bams/NC-2
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-3.filter.bam  sORF/bams/NC-3.stat.xls sORF/bams/NC-3
perl calculate_ORF_rpkm.pl sORF/prepare/all_ORF.bed  sORF/bams/NC-3.filter.bam  sORF/bams/NC-3.stat.xls sORF/bams/NC-3


# step12: Prediction of coding potential
# Calculation of ORFscore
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-1.filter.bam sORF/RRS_ORFscore/LO3-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-1.filter.bam sORF/RRS_ORFscore/LO3-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-2.filter.bam sORF/RRS_ORFscore/LO3-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-2.filter.bam sORF/RRS_ORFscore/LO3-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-3.filter.bam sORF/RRS_ORFscore/LO3-3.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO3-3.filter.bam sORF/RRS_ORFscore/LO3-3.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-1.filter.bam sORF/RRS_ORFscore/LO7-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-1.filter.bam sORF/RRS_ORFscore/LO7-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-2.filter.bam sORF/RRS_ORFscore/LO7-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-2.filter.bam sORF/RRS_ORFscore/LO7-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-3.filter.bam sORF/RRS_ORFscore/LO7-3.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/LO7-3.filter.bam sORF/RRS_ORFscore/LO7-3.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-1.filter.bam sORF/RRS_ORFscore/NC-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-1.filter.bam sORF/RRS_ORFscore/NC-1.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-2.filter.bam sORF/RRS_ORFscore/NC-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-2.filter.bam sORF/RRS_ORFscore/NC-2.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-3.filter.bam sORF/RRS_ORFscore/NC-3.orf_frame.xls
python correct_count_frame.py prepare/longest_mORF.bed $exp_filter.mORF_sORF.bed sORF/bams/NC-3.filter.bam sORF/RRS_ORFscore/NC-3.orf_frame.xls
python combine_frame_ORFscore.py Groups2sample.txt sORF/RRS_ORFscore sORF/RRS_ORFscore
# Calculation of RSS
python combine_rpkm_RRS.py Groups2sample.txt sORF/ sORF/RRS_ORFscore
# Calculating Fickett and Hexamer Scores using CPAT 1.2.2
python make_hexamer_tab.py -c $genome_cds.fa -n $genome_lnc.fa > sORF/Fickett_Hexamer//ORF.Hexamer.tsv
python make_logitModel.py -x sORF/Fickett_Hexamer//ORF.Hexamer.tsv -c $_refGeneMrna.fa  -n $genome_lnc.fa -o sORF/Fickett_Hexamer//ORF
python cpat.py -g sORF/all_ORF.DNA.fasta -d sORF/Fickett_Hexamer//ORF.logit.RData -x sORF/Fickett_Hexamer//ORF.Hexamer.tsv -o ORF.result.xls
