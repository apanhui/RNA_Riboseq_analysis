args<-commandArgs(T)
dat<-read.table(args[1],header=T,sep="\t",check.name=0,comment.char = "")
#dat <- na.omit(dat)
plot_scatter_plot<-function(FPKM1,FPKM2,s1,s2,s3,s4,s5){
	pchlist<-rep(16,length(FPKM1))
	collist<-rep(rgb(0,0,0,max=255,alpha=50),length(FPKM1))
	collist[s1]<-rep(rgb(0,176,80,max=255),length(s1))
	collist[s2]<-rep(rgb(112,48,160,max=255),length(s2))
	collist[s3]<-rep(rgb(0,112,192,max=255),length(s3))
	collist[s4]<-rep(rgb(255,0,0,max=255),length(s4))
	collist[s5]<-rep(rgb(175,171,171,max=255),length(s5))
	filename=paste(args[2],".pdf",sep="")
	pdf(file=filename,height=7,width=9,bg="white")
	par(mar=c(5,5,4,10))
	plot(FPKM1,FPKM2,pch=pchlist,cex=0.5,col=collist,xlab="log2 fold change Transcriptome",ylab="log2 fold change TE",main="",xlim=c(-6,6),ylim=c(-6,6),cex.axis=1.8,cex.lab=1.8)
	col=c(rgb(0,176,80,max=255),rgb(112,48,160,max=255),rgb(0,112,192,max=255),rgb(255,0,0,max=255),rgb(175,171,171,max=255))
	xy<-par("usr")
	legend(xy[2],xy[4],c(paste("Transcription(",length(s1),")"),paste("Homodirection(",length(s2),")"),paste("TE(",length(s3),")"),paste("Opposite(",length(s4),")"),paste("Unchanged(",length(s5),")")),col=c(rgb(0,176,80,max=255),rgb(112,48,160,max=255),rgb(0,112,192,max=255),rgb(255,0,0,max=255),rgb(175,171,171,max=255)),cex=1,pch=16,xpd=T)
}
tran<-2
pro<-3
dat[,pro]=as.numeric(as.character(dat[,pro]))
dat[,3][(dat[,3] %in% NA)] <- 0
dat[dat[,3]>15,3] <- 15
dat[dat[,2]>15,2] <- 15
dat[dat[,3]< -15,3] <- -15
dat[dat[,2]< -15,2] <- -15
x <- dat[,tran]
y <- dat[,pro]
Transcription<-which(dat[,4]=="Transcription")
Homodirection<-which(dat[,4]=="Homodirection")
Translation<-which(dat[,4]=="TE")
Opposite<-which(dat[,4]=="Opposite")
Unchanged<-which(dat[,4]=="Unchanged")
FPKMlist1<-x
FPKMlist2<-y
plot_scatter_plot(FPKMlist1,FPKMlist2,Transcription,Homodirection,Translation,Opposite,Unchanged)

