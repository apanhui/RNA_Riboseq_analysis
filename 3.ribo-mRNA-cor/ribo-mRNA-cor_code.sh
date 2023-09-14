

# stet1: Translational Efficiency Calculation
perl TE_analysis.pl RNAseq_all.genes.expression.xls Riboseq_all.genes.expression.xls TE_sample.list TE_calculate/TE_sample
python get_group_TE.py sample_group.list TE_calculate/TE_sample.xls TE_calculate/TE_group


# stet2: Differential Translation Efficiency using RiboDiff v0.2.2
cut -f 1,11- RNAseq_all.genes.expression.xls|sed 's/_count//1g'|paste - <(cut -f 1,11- Riboseq_all.genes.expression.xls|sed 's/_count//1g') > combined.count.xls
python functional_test_te.py -e NC-vs-LO3.config.txt -c combined.count.xls -o TE_diff/NC-vs-LO3.txt -d 0 -r 1 -p 1 -q 0.1
python functional_test_te.py -e NC-vs-LO7.config.txt -c combined.count.xls -o TE_diff/NC-vs-LO7.txt -d 0 -r 1 -p 1 -q 0.1
python functional_test_te.py -e LO3-vs-LO7.config.txt -c combined.count.xls -o TE_diff/LO3-vs-LO7.txt -d 0 -r 1 -p 1 -q 0.1


# step3: Comparison and Classification of Translation Efficiency and Transcriptional Differential Directions
perl TE_diff_cors.pl RNAseq_NC-vs-LO3.all.xls TE_diff/NC-vs-LO3.all.xls TE_diff_cors/NC-vs-LO3.cors qvalue 1
perl TE_diff_cors.pl RNAseq_NC-vs-LO7.all.xls TE_diff/NC-vs-LO7.all.xls TE_diff_cors/NC-vs-LO7.cors qvalue 1
perl TE_diff_cors.pl RNAseq_LO3-vs-LO7.all.xls TE_diff/LO3-vs-LO7.all.xls TE_diff_cors/LO3-vs-LO7.cors qvalue 1
