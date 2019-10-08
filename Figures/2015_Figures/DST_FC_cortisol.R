#
"
Created on Aug 2017
@author: Wanjun Lin
"
rm(list=ls())

# Create Line Chart


# import data
library(readxl)
a <- read_excel("/Users/tianrachel/Desktop/FC/FC_figures/DST_FC_figures/2cortisol/DST_FC_cortisol_mean.xlsx")

# View(a)
library(ggplot2)
library(plyr)
library(reshape2)
melted <- melt(a, id.vars=c("sub", "group_DXM2_Pla1","group"))
#View(melted)
means <- ddply(melted, c("group_DXM2_Pla1","group", "variable"), summarise,
               mean=mean(value,na.rm=TRUE),se=sd(value,na.rm=TRUE)/sqrt(length(value[!is.na(value)])))

# convert factor to numeric for convenience 
#means$timepoint <- as.numeric(means$variable)

#D3_4
#t=1:3
#t[4]=5
#t[5:8]=t[1:4]


#D2_6
#t=1:3
#t[4]=5
#t[5]=7
#t[6]=8
#t[7:12]=t[1:6]
t=1:15
t[16:30]=t[1:15]




# add lines D3_4

#p<- ggplot(means, aes(x=t, y=mean, group=group_DXM1_Pla2,col=group)) + 
#  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width=.1) +
#  geom_line() +
#  geom_point() +
# ggtitle("Cortisol level for DXM vs. Placebo CAR") +
#  theme(plot.title=element_text(hjust=0.5,face="bold", size=10))
#p+  xlab("time (hours)")+ylab("cortisol (nmol/l)")+
#  scale_x_continuous(breaks=1:5, labels=c("0", "+0.25", "+0.5","","+1.0 ") )


# add lines D2_6
#p<- ggplot(means, aes(x=t, y=mean, group=group_DXM1_Pla2,col=group)) + 
#  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width=.1) +
#  geom_line() +
#  geom_point() +
# ggtitle("Cortisol level for DXM vs. Placebo CAR") +
#  theme(plot.title=element_text(hjust=0.5,face="bold", size=10))
#p+  xlab("time (hours)")+ylab("cortisol (nmol/l)")+
#  scale_x_continuous(breaks=1:8, labels=c("0", "+0.25", "+0.5","","+1.0 "," ","+5.5","+6.5"))

# add lines D2&D3_total
p<- ggplot(means, aes(x=t, y=mean, group=group_DXM2_Pla1,col=group)) + 
  # xlim(0,15) +
#  geom_vline(xintercept = 2,size=1)+
#  geom_vline(xintercept = 10,size=1)+
  geom_errorbar(aes(ymin=mean-se, ymax=mean+se), width=.08) +
  #geom_ribbon(aes(ymin=mean-se, ymax=mean+se,linetype=NA),alpha=0.3)+
  geom_line(size=1) +
  #geom_point() +
  scale_color_manual (values=c("grey", "red3"), name="Group", labels=c("Control Group", "Pharmacological Group")) +
  ggtitle("Cortisol Level") +
  #theme(plot.title=element_text(hjust=0.5,face="bold", size=10))+
  theme(plot.title=element_text(hjust=0.5,face="bold", size=15),
        axis.ticks = element_line(size = 0.6),
        #axis.text = element_text(size=10),
        axis.ticks.length = unit(0.2, "cm"),
        axis.line.x = element_line(colour = "black", size = 0.8),
        axis.line.y = element_line(colour = "black", size = 0.8),
        axis.title.x=element_text(size=12,face = "bold"),
        axis.title.y=element_text(size=12,face = "bold"),
        axis.text.x = element_text(vjust = 1, hjust = 1,colour = "black"),#size = 10, 
        axis.text.y = element_text(vjust = 1, hjust = 1),#size = 10, 
        legend.title = element_text(size = 18),
        legend.text = element_text(size = 15),
        legend.position = "top",
        legend.justification = c(0.5,1),
        panel.background = element_rect(fill = "white"))+


  xlab("Time (hours)")+ylab("Cortisol (nmol/l)")+
  annotate('text',x=0,y=23,label = 'Day 1', size = 4) +
  annotate('text',x=0,y=21,label = 'Pill: 8 PM', size = 3) +
#  annotate('text',x=3,y=23,label = 'Day 2', size = 4) +
#  annotate('text',x=11,y=23,label = 'Day 3', size = 4) +
#  annotate("rect",xmin=7,xmax =8,ymin=0,ymax=22,alpha=1,fill="gray60")+
#  annotate('text',x=7.5,y=2,label = 'fMRI', size = 4) +
  scale_x_continuous(breaks=1:15, labels=c("22:00","7:00", "7:15","7:30","8:00","11:00","14:45/before","15:45/after","22:00","7:00", "7:15","7:30","8:00","11:00","16:00"))
#  scale_x_continuous(breaks=1:15, labels=c("S1", "S2", "S3","S4","S5","S6","S7","S8","S9","S10", "S11","S12","S13","S14","S15"))

  p

ggsave("DST_FC_cortisol.eps", plot = last_plot(), device = "eps", path = "/Users/tianrachel/Desktop/DST_Final/",
       scale = 1, width = 28, height = 15, units = "cm",
       dpi = 300, limitsize = TRUE)