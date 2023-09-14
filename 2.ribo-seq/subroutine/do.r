#source /state/partition1/WORK/lib-devel/working_library/anaconda2/bin/activate R363
library(riboWaltz)
args <- commandArgs(TRUE)
sam = args[1]
dir = args[2]
gtf_file = args[3]

annotation_dt <- create_annotation(gtfpath = gtf_file)
#write.table(annotation_dt,file="annotation_dt.xls",sep="\t",row.names=F,quote=F)

cat(paste(dir,"/",sam,sep=""))
reads_list <- bamtolist(bamfolder = paste(dir,"/",sam,sep=""), annotation = annotation_dt)
#write.table(reads_list$sam,file=paste(sam,"/",sam,".reads_list.xls",sep=""),sep="\t",row.names=F,quote=F)

filtered_list <- length_filter(data = reads_list, length_filter_mode = "custom", length_filter_vector = 20:40)
#psite_offset <- psite(filtered_list, flanking = 6, extremity="auto",  plot = TRUE)
psite_offset <- psite(filtered_list, flanking = 6, extremity="auto")
#write.table(file = paste(dir,"/",sam,"/",sam,".psite.xls",sep=""),psite_offset,sep="\t",quote=F)
write.table(psite_offset,file=paste(dir,"/",sam,"/",sam,".psite_offset.xls",sep=""),sep="\t",row.names=F,quote=F)
reads_psite_list <- psite_info(filtered_list, psite_offset)
#write.table(reads_psite_list$sam,file=paste(sam,"/",sam,".reads_psite_list.xls",sep=""),sep="\t",row.names=F,quote=F)
#for (i in 20:40){
#	example_metaprofile <- metaprofile_psite(reads_psite_list, annotation_dt, sample = sam, utr5l = 21, cdsl = 41, utr3l = 21, plot_title = "sample.transcript", length_range = i)
#	write.table(example_metaprofile$dt,file=paste(sam,"/",sam,".metaprofile_",i,".xls",sep=""),sep="\t",row.names=F,quote=F)
#}
#example_metaprofile <- metaprofile_psite(reads_psite_list, annotation_dt, sample = sam, utr5l = 21, cdsl = 41, utr3l = 21, plot_title = "sample.transcript")
#write.table(example_metaprofile$dt,file=paste(sam,"/",sam,".metaprofile_All.xls",sep=""),sep="\t",row.names=F,quote=F)
#pdf(file="b.1.pdf",height=8,width=16)
#example_metaprofile[["plot_b"]]
#dev.off()

comparison_list <- list()
for (i in 20:40){
	comparison_list[[paste(i,"nt",sep="")]] <- reads_psite_list[[sam]][length == i]
}
comparison_list[["All"]] <- reads_psite_list[[sam]]
sample_list <- list("length_20" = c("20nt"),
"length_21" = c("21nt"),
"length_22" = c("22nt"),
"length_23" = c("23nt"),
"length_24" = c("24nt"),
"length_25" = c("25nt"),
"length_26" = c("26nt"),
"length_27" = c("27nt"),
"length_28" = c("28nt"),
"length_29" = c("29nt"),
"length_30" = c("30nt"),
"length_31" = c("31nt"),
"length_32" = c("32nt"),
"length_33" = c("33nt"),
"length_34" = c("34nt"),
"length_35" = c("35nt"),
"length_36" = c("36nt"),
"length_37" = c("37nt"),
"length_38" = c("38nt"),
"length_39" = c("39nt"),
"length_40" = c("40nt"),
"All" = c("All"))
count <- metaprofile_psite(comparison_list, annotation_dt, sample = sample_list, utr5l = 21, cdsl = 41, utr3l = 21)
write.table(count$dt,file=paste(dir,"/",sam,"/",sam,".count.xls",sep=""),sep="\t",row.names=F,quote=F)
frequency <- metaprofile_psite(comparison_list, annotation_dt, sample = sample_list, utr5l = 21, cdsl = 41, utr3l = 21, frequency = TRUE)
#metaprofile_comparison$dt
write.table(frequency$dt,file=paste(dir,"/",sam,"/",sam,".frequency.xls",sep=""),sep="\t",row.names=F,quote=F)
library(ggplot2)
#m=read.table(paste(dir,"/",sam,"/",sam,".count.xls",sep=""),check.names=FALSE,header=T,sep='\t')
pp<-ggplot(count$dt,aes(distance,All)) + geom_bar(stat="identity",position="dodge",fill=rep(c("red","green","blue"),42)) +facet_grid(~ reg, scales="free")+theme_bw()+geom_vline(aes(xintercept=0), colour="#FF0000", linetype="dashed",size=0.3)+ylab("")
ggsave(paste(dir,"/",sam,"/",sam,".count.pdf",sep=""),pp,width=12,height=6)
ggsave(paste(dir,"/",sam,"/",sam,".count.png",sep=""),pp,width=12,height=6)
pp<-ggplot(frequency$dt,aes(distance,All)) + geom_bar(stat="identity",position="dodge",fill=rep(c("red","green","blue"),42)) +facet_grid(~ reg, scales="free")+theme_bw()+geom_vline(aes(xintercept=0), colour="#FF0000", linetype="dashed",size=0.3)+ylab("")
ggsave(paste(dir,"/",sam,"/",sam,".frequency.pdf",sep=""),pp,width=12,height=6)
ggsave(paste(dir,"/",sam,"/",sam,".frequency.png",sep=""),pp,width=12,height=6)
for (i in 25:35){
	pp<-ggplot(count$dt,aes(distance,.data[[paste("length_",i,sep="")]]))+geom_bar(stat="identity",position="dodge",fill=rep(c("red","green","blue"),42)) +facet_grid(~ reg, scales="free")+theme_bw()+geom_vline(aes(xintercept=0), colour="#FF0000", linetype="dashed",size=0.3)+ylab("")
	ggsave(paste(dir,"/",sam,"/",sam,".",i,".count.pdf",sep=""),pp,width=12,height=6)
	ggsave(paste(dir,"/",sam,"/",sam,".",i,".count.png",sep=""),pp,width=12,height=6)
	pp<-ggplot(frequency$dt,aes(distance,.data[[paste("length_",i,sep="")]])) + geom_bar(stat="identity",position="dodge",fill=rep(c("red","green","blue"),42)) +facet_grid(~ reg, scales="free")+theme_bw()+geom_vline(aes(xintercept=0), colour="#FF0000", linetype="dashed",size=0.3)+ylab("")
	ggsave(paste(dir,"/",sam,"/",sam,".",i,".frequency.pdf",sep=""),pp,width=12,height=6)
	ggsave(paste(dir,"/",sam,"/",sam,".",i,".frequency.png",sep=""),pp,width=12,height=6)
}
#pdf(file="b.2.pdf",height=15,width=30)
#example_metaprofile_comparison[["plot"]]
#dev.off()
