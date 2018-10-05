report <- read.csv(file = "report.csv")
blast <-read.csv(file="blast_result.csv")
sequence <-read.csv(file = "seqs.csv")
databank<-read.csv(file = "databank.csv")

merged_data<-Reduce(function(dtf1, dtf2) merge(dtf1, dtf2, by = "batch_no", all = TRUE),
                    list(databank,report,blast,sequence))

write.csv(merged_data,file = "final_merged_list.csv")
