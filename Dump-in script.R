data <- read.csv("Dump-in Data.csv", header = TRUE)
summary(data)

Change <- subset(data, Change == 'Y')
summary(Change)
NonChange <- subset(data,Change =='N')
summary(NonChange)


NonChange.BenchSide <- subset(NonChange, Bench.Side == "Y")
NonChange.NonBenchSide <- subset(NonChange, Bench.Side == "N")

NonChange.BenchSide.C <- subset(NonChange.BenchSide, Type == "C")
NonChange.BenchSide.R <- subset(NonChange.BenchSide, Type == "R")
NonChange.BenchSide.S <- subset(NonChange.BenchSide, Type == "S")

NonChange.NonBenchSide.C <- subset(NonChange.NonBenchSide, Type == "C")
NonChange.NonBenchSide.R <- subset(NonChange.NonBenchSide, Type == "R")
NonChange.NonBenchSide.S <- subset(NonChange.NonBenchSide, Type == "S")

NonChange.BenchSide.R.Behind <- subset(NonChange.BenchSide, Type == "R" & Behind.Net == "Y")
NonChange.NonBenchSide.R.Behind <- subset(NonChange.BenchSide, Type == "R" & Behind.Net == "N")

NonChange.BenchSide.S.Behind <- subset(NonChange.BenchSide, Type == "S" & Behind.Net == "Y")
NonChange.NonBenchSide.S.Behind <- subset(NonChange.BenchSide, Type == "S" & Behind.Net == "N")

NonChange.C <- subset(NonChange, Type == "C")
NonChange.R <- subset(NonChange, Type == "R")
NonChange.S <- subset(NonChange, Type == "S")
NonChange.R.Behind <- subset(NonChange, Type == "R"& Behind.Net == "Y")
NonChange.R.NonBehind <- subset(NonChange, Type == "R"& Behind.Net == "N")
NonChange.S.Behind <- subset(NonChange, Type == "S"& Behind.Net == "Y")
NonChange.S.NonBehind <- subset(NonChange, Type == "S"& Behind.Net == "N")
summary(NonChange.C)
summary(NonChange.R)
summary(NonChange.S)
summary(NonChange.R.Behind)
summary(NonChange.R.NonBehind)
summary(NonChange.S.Behind)
summary(NonChange.S.NonBehind)

ChangeS<- c(0.4451,0.1163)
ChangeLabels <- c("No Change", "Change")
barplot(ChangeS, ylab = "In-Zone Retrieval Percentage", col = c("red", "blue"), names.arg = ChangeLabels,ylim = c(0,1))

Types <- c(0.4473, 0.4322, 0.4586)
TypeLabels <- c("Cross", "Strong-Side", "Rim")

barplot(Types, ylab ="In-Zone Retrieval Percentage", main = "Recovery Rate When No Change Occured, Separated by Type"  ,col = c("chartreuse", "darkorange", "darkslategray2"),names.arg = TypeLabels,ylim = c(0.0,1.0) )

summary(subset(NonChange, Behind.Net =="Y"))
summary(subset(NonChange, Behind.Net =="N"))
Behind <- c(0.3293,0.5181)
BehindLabels = c("Behind Net", "Not Behind Net")
barplot(Behind, ylab ="In-Zone Retrieval Percentage",main = "Recovery Rate When No Change Occured, Separated by Placement"  , col = c("blueviolet","coral2"),names.arg = BehindLabels,ylim = c(0.0,1.0) )

BehindType = c( 0.4473,0.4938,0.3451,0.5327,0.3000)
BehindTypeLabels = c("Cross", "S-S Not Behind Net", "S-S Behind Net", "Rim Not Behind Net", "Rim Behind Net")
barplot(BehindType, ylab ="In-Zone Retrieval Percentage",main = "Recovery Rate When No Change Occured, Separated by Placement and Type", col = c("chartreuse", "darkorange","darkorange3","darkslategray1","darkslategray4"),names.arg = BehindTypeLabels,ylim = c(0.0,1.0) )
