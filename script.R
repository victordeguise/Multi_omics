setwd("~/../Desktop/Cours/Master/M2/Projet/Transcriptomic/")
library(ggplot2)
library(readxl)
library(openxlsx)

data = read_xlsx("all_de_j2_vs_j0_allgenes.xlsx")
data["-log10"] = -(log10(data$padj))
data <- na.omit(data)
# add a column of NAs
data$diffexpressed <- "NO"
# if log2Foldchange > 0.6 and pvalue < 0.05, set as "UP" 
data$diffexpressed[data$log2FoldChange > 2 & data$padj < 0.05] <- "UP"
# if log2Foldchange < -0.6 and pvalue < 0.05, set as "DOWN"
data$diffexpressed[data$log2FoldChange < -2 & data$padj < 0.05] <- "DOWN"
data$diffexpressed[data$log2FoldChange > -1 & data$log2FoldChange < 1] <- "NONE"


data$label <- NA
data$label[data$diffexpressed != "NO"] <- data$symbol[data$diffexpressed != "NO"]

data

mycolors <- c("blue", "red", "grey", "white")
names(mycolors) <- c("DOWN", "UP", "NO", "NONE")


#sans label
ggplot(data, aes(log2FoldChange,`-log10`, col=diffexpressed))+
  geom_point()+ scale_color_manual(values = mycolors)+ theme_minimal()+geom_vline(xintercept=c(-1, 1), col="black", lty="dotted") +
  geom_hline(yintercept=-log10(0.05), col="black", lty="dotted")

# Avec label
ggplot(data, aes(log2FoldChange,`-log10`, col=diffexpressed, label=label))+ geom_text()+
  geom_point()+ scale_color_manual(values = mycolors)+ theme_minimal()+geom_vline(xintercept=c(-1, 1), col="black", lty="dotted") +
  geom_hline(yintercept=-log10(0.05), col="black", lty="dotted") 




######################PROTEOMIC######################



prot <- read_xlsx("../Proteomique/Experience_1/210414-DT-0241-0249-(1).xlsx", skip = 1,col_names = TRUE)
#prot <- na.omit(prot)
head(prot)

prot$diffexpressed <- "NO"
# if log2Foldchange > 0.6 and pvalue < 0.05, set as "UP" 
prot$diffexpressed[prot$`Abundance Ratio (log2): (T48h) / (T0)` > 1 & prot$`Abundance Ratio Adj. P-Value: (T48h) / (T0)` < 0.05] <- "UP"
# if log2Foldchange < -0.6 and pvalue < 0.05, set as "DOWN"
prot$diffexpressed[prot$`Abundance Ratio (log2): (T48h) / (T0)` < -1 & prot$`Abundance Ratio Adj. P-Value: (T48h) / (T0)` < 0.05] <- "DOWN"

mycolors <- c("blue", "red", "grey")
names(mycolors) <- c("DOWN", "UP", "NO")

ggplot(prot, aes(`Abundance Ratio (log2): (T48h) / (T0)`, -log10(`Abundance Ratio Adj. P-Value: (T48h) / (T0)`), col=diffexpressed)) + 
  geom_point() +theme_minimal() +scale_color_manual(values = mycolors)



##############################################################################
if (!require("BiocManager", quietly = TRUE))
  install.packages("BiocManager")

BiocManager::install("ReactomeGSA")

library(ReactomeGSA)



