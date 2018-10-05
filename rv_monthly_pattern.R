setDT(pattern_v11)[, Yr_Month:=format(as.Date(pattern_v11$Collected_Date,format='%m/%d/%Y'),"%Y-%m")]
setDT(to_add)[, Sample_Year:=format(as.Date(to_add$Collected_Date,format='%m/%d/%Y  %H:%M'),"%Y")]

setDT(to_add)[, Sample_Month:=format(as.Date(to_add$Collected_Date,format='%m/%d/%Y  %H:%M'),"%b")]


common_cols <- intersect(colnames(pattern_v11), colnames(pattern_to_add))
binded_v12_rv<-rbind(
subset(pattern_v11, select = common_cols), 
subset(pattern_to_add, select = common_cols)
)


count_all_1<-count(binded_v12_rv,c("Yr_Month","Species"))

cal_freq<-ddply(count_all_1,"Yr_Month",transform,percent = freq/sum(freq)*100)
library(ggplot2)
p11<-ggplot(cal_freq,aes(x=Yr_Month,y=percent,fill=Species))
p12<-p11+geom_bar(stat="identity",colour="black")
p13<-  p12 + geom_text(aes(label=round(percent,digits = 1)),check_overlap=TRUE,position = position_stack(vjust = 0.5))
p14<-p13+ scale_x_discrete(name="Sample Collection Date") + scale_y_discrete(name="Percentage of Species")
p15<-p14+ ggtitle("Monthly Pattern of RV-ABC from Sep 2014 to Sep 2015") +   theme(plot.title = element_text(hjust = 0.5,size = 20,vjust = 1))
