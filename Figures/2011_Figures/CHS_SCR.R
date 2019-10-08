#
"
Created on Sep 2018
@author: YQ Tian
"

rm(list=ls())
library(readxl)
# Create Line Chart
# import data
a <- read_excel("/Users/tianrachel/Desktop/FC_final_181201/2011/2011_SCR_Late.xls")
#View(a)
library(ggplot2)
library(plyr)
library(reshape2)
melted <- melt(a, id.vars=c("Group"))
#View(melted)
means <- ddply(melted, c("Group", "variable"), summarise,
               mean=mean(value),se=sd(value)/sqrt(length(value)))
#View(means)
p<-ggplot(means, aes(x=variable, y=mean, fill=Group)) + 
  xlab("Time")+ylab("SCR")+
  scale_x_discrete(breaks=1:2, labels=c("CS+", "CS-")) +
  geom_bar(position=position_dodge(), stat="identity",
           # Use black outlines, colour="black",
           size=.3,aes(fill=factor(Group))) +      # Thinner lines
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se),
                size=.3,    # Thinner lines
                width=.2,
                position=position_dodge(.9))

p+  
  #scale_fill_hue(name="Time", # Legend label, use darker colors
  #                breaks=c("BiAMG_CSp_CSm_Early", "BiAMG_CSp_CSm_Late"),
  #               labels=c("Early","Late")
  #              ) +
  scale_fill_manual(values = c("grey","red3"),name = "Group", labels = c("Control CAR Group", "Blunted CAR Group"))+
  #  scale_fill_manual(values = c("red3","dodgerblue2"),guide=FALSE)+
  ggtitle("SCR-Late") +
  theme(plot.title=element_text(hjust=0.5,face="bold", size=12),
        legend.position = "top",
        legend.text = element_text(hjust=1,face="bold"),
        panel.background = element_rect(fill = "white"),
        axis.text.x = element_text(size = 10, colour = "black"),
        axis.text.y = element_text(size = 10, colour = "black"),
        axis.line.x = element_line(colour = "black", size = 0.8),
        axis.line.y = element_line(colour = "black", size = 0.8),
        axis.title.x = element_text(size=12,face="bold"),
        axis.title.y = element_text(size=12,face="bold")
  )


ggsave("2011_SCR_Late.eps", plot = last_plot(), device = "eps", path = "/Users/tianrachel/Desktop/FC_final_181201/2011/",
       scale = 1, width = 10, height = 10, units = "cm",
       dpi = 300, limitsize = TRUE)

