#
"
Created on Sep 2018
@author: YQ Tian
"
rm(list=ls())
# Create Line Chart
# import data
library(readxl)
a <- read_excel("/Users/tianrachel/Desktop/DST_Final/DST_act_EL_CHS_2x2_LHPC_-22_R.xlsx")

# View(a)
library(ggplot2)
library(plyr)
library(reshape2)
melted <- melt(a, id.vars=c("group_h1_l2","group"))
#View(melted)
means <- ddply(melted, c("group_h1_l2","group", "variable"), summarise,
               mean=mean(value,na.rm=TRUE),se=sd(value,na.rm=TRUE)/sqrt(length(value[!is.na(value)])))


t=1:4
#t[4]=5
t[5:8]=t[1:4]


# add lines D2&D3_total
p<- ggplot(means, aes(x=t, y=mean, group=group_h1_l2,col=group)) + 
  #geom_ribbon(aes(ymin=mean-se, ymax=mean+se,linetype=NA),alpha=0.3,fill="grey") +
  #geom_ribbon(aes(ymin=mean-se, ymax=mean+se,linetype=NA),alpha=0.3,fill="red3") +
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width=.08) +
  geom_line(size=1) +
  #geom_point() +
  scale_color_manual (values=c("grey", "red3"), name="Group", labels=c("normal CAR Group", "blunted CAR Group")) +
  ggtitle("LAMG") +
  theme(plot.title=element_text(hjust=0.5,face="bold", size=13),
        axis.ticks = element_line(size = 0.6),
        #axis.text = element_text(size=10),
        axis.ticks.length = unit(0.2, "cm"),
        axis.line.x = element_line(colour = "black", size = 0.8),
        axis.line.y = element_line(colour = "black", size = 0.8),
        axis.title.x=element_text(size=13,face = "bold"),
        axis.title.y=element_text(size=13,face = "bold"),
        axis.text.x = element_text(vjust = 0.5, hjust = 0.5,colour = "black",size = 12),#, 
        axis.text.y = element_text(vjust = 0.5, hjust = 0.5,size = 12),#size = 10, 
        legend.title = element_text(size = 12),
        legend.text = element_text(size = 12),
        legend.position = "top",
        legend.justification = c(0.5,1),
        panel.background = element_rect(fill = "white"))+
  
  
  xlab("Trials")+ylab("activation estimation(a.u.)")+
  scale_x_continuous(breaks=1:4, labels=c("stage1", "stage2", "stage3","stage4")) 


p

ggsave("CHS_activation_UCS_LAMG3354_CSm.eps", plot = last_plot(), device = "eps", path = "/Users/tianrachel/Desktop/CHS_Final",
       scale = 1, width = 25, height = 15, units = "cm",
       dpi = 300, limitsize = TRUE)