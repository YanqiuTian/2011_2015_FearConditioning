#
"
Created on Sep 2018
@author: YQ Tian
"
rm(list=ls())

# Create Line Chart


# import data

library(readxl)
cortisol <- read_excel("/Users/tianrachel/Desktop/CHS_Final/cortisol.xls")
#View(a)
library(ggplot2)
library(plyr)
library(reshape2)
melted <- melt(cortisol, id.vars=c("sub", "group_h1_l2","group"))
#View(melted)
means <- ddply(melted, c("group_h1_l2","group", "variable"), summarise,
               mean=mean(value,na.rm=TRUE),se=sd(value,na.rm=TRUE)/sqrt(length(value[!is.na(value)])))


t=1:3
t[4]=5
t[5]=7
t[6]=8
t[7:12]=t[1:6]
# add lines 
p<- ggplot(means, aes(x=t, y=mean, group=group_h1_l2,col=group)) + 
  #geom_ribbon(aes(ymin=mean-se, ymax=mean+se,linetype=NA),alpha=0.3) +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width=.08) +
  geom_line(size=1) +
  #geom_point() +
  scale_color_manual (values=c("grey", "red3"), name="Group", labels=c("normal CAR Group", "blunted CAR Group")) +
  ggtitle("Cortisol Level") +
  theme(plot.title=element_text(hjust=0.5,face="bold", size=13),
        axis.ticks = element_line(size = 0.6),
        #axis.text = element_text(size=10),
        axis.ticks.length = unit(0.2, "cm"),
        axis.line.x = element_line(colour = "black", size = 0.8),
        axis.line.y = element_line(colour = "black", size = 0.8),
        axis.title.x=element_text(size=11,face = "bold"),
        axis.title.y=element_text(size=11,face = "bold"),
        axis.text.x = element_text(vjust = 1, hjust = 1,colour = "black",size = 10),#, 
        axis.text.y = element_text(vjust = 1, hjust = 1,size = 10),#size = 10, 
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12),
        legend.position = "top",
        legend.justification = c(0.5,1),
        panel.background = element_rect(fill = "white"))+
  
  
  xlab("Time (hours)")+ylab("Cortisol (nmol/l)")+
  scale_x_continuous(breaks=1:8, labels=c("7:00", "7:15", "7:30", "","8:00","","14:45","15:45")) 

p

ggsave("Fig1_CHS_cortisol_total.eps", plot = last_plot(), device = "eps", path = "/Users/tianrachel/Desktop/CHS_Final",
       scale = 1, width = 25, height = 15, units = "cm",
       dpi = 300, limitsize = TRUE)
 