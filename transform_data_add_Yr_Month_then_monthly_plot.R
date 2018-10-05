
#transform the raw data from MySQL into Yr-Month and yearly based req_age.
RV_only_merged$new_age<-ifelse(RV_only_merged$Age_unit== 'Months',round(RV_only_merged$req_age/12, digits=2),RV_only_merged$req_age)
library(data.table)

setDT(RV_only_merged)[, Yr_Month:=format(as.Date(RV_only_merged$Collected_Date,format='%Y-%m-%d'),"%Y-%m")]

#find common columns and merge
common_cols <- intersect(colnames(pattern_v11), colnames(pattern_to_add))
binded_v12_rv<-rbind(
  subset(pattern_v11, select = common_cols), 
  subset(pattern_to_add, select = common_cols)
)

#plot monthly pattern
library(plyr)
count_all_1<-count(version13_rv,c("Yr_Month","Species"))

cal_freq<-ddply(count_all_1,"Yr_Month",transform,percent = freq/sum(freq)*100)
library(ggplot2)
p11<-ggplot(cal_freq,aes(x=Yr_Month,y=percent,fill=Species))
p12<-p11+geom_bar(stat="identity",colour="black")
p13<-  p12 + geom_text(aes(label=round(percent,digits = 1)),check_overlap=TRUE,position = position_stack(vjust = 0.5))
p14<-p13+ scale_x_discrete(name="Sample Collection Date") + scale_y_discrete(name="Percentage of Species")
p15<-p14+ ggtitle("Monthly Distribution of RV-ABC from Jan 2015 to Dec 2016 (n=1180)") +  theme(axis.text=element_text(size=13),axis.title=element_text(size=20,face="bold", vjust=0.5), plot.title = element_text(hjust = 0.5,size = 25,vjust = 2.1))
p15