# Written by Hao (2017/08/06) revised by TYQ for FC DST
# haolpsy@gmail.com
# Qinlab.BNU

rm(list = ls())
library(ggplot2); library(psych)
Fig.dpi <- 100; Fig.wid <- 20; Fig.hei <- 15

library(readxl)
a <- read_excel("/Users/tianrachel/Desktop/FC_Final/Data/FC_final_181201/2015/FC_DST_MW_light.xlsx")

MWact.Line <- ggplot(data = a, 
                   aes(x = as.factor(data.cond), y = m.act,
                       colour = fig.subgrp,group = fig.subgrp)) + 
  geom_errorbar(aes(ymin = m.act - se.act, ymax = m.act+se.act), width = 0.08) +
  # geom_point(size = 2.5) +
  #geom_vline(xintercept = 4,size=1)+
  #geom_vline(xintercept = 13,size=1)+  
  geom_line(size = 1) +
  labs(x = "Time(hours)", y = "mean Light", 
       title = paste("Light",sep = "")) + 
  scale_color_manual (values=c("grey", "red3"), name="Group",labels=c("Control CAR", "Suppressed CAR")) + 
  scale_x_discrete(breaks=1:25,labels=c("12:00", "13:00", "14:00","15:00","16:00","17:00","18:00","19:00","20:00","21:00", "22:00","23:00","00:00","01:00","02:00","03:00","04:00","05:00","06:00","07:00","08:00","09:00","10:00","11:00","12:00"))+
#  scale_x_discrete(breaks=1:18,labels=c("9:00", "10:00", "22:00","7:00","7:15","7:30","8:00","11:00","14:00", "15:00","16:00","22:00","7:00","7:15","7:30","8:00","11:00","16:00"))+
  
#  scale_shape_manual (values=c("gray60", "salmon1"), name="Group", labels=c("DXM", "Placebo"), guide=FALSE) +
  theme(
    plot.title = element_text(size = 15, colour = "black", face = "bold", hjust = 0.5),
    axis.ticks = element_line(size = 0.6, colour = "black"),
    #axis.ticks.length = unit(0.2, "cm"),
    axis.line.x = element_line(colour = "black", size = 0.8),
    axis.line.y = element_line(colour = "black", size = 0.8),
    axis.text = element_text(size = 15, colour = 'black'),
    axis.text.x = element_text(vjust = 1, hjust = 1, angle = 45),
    axis.title.x = element_text(size = 12,face = "bold"),
    axis.title.y = element_text(size = 12,face = "bold"),
    panel.background = element_rect(fill = "white"),
    legend.title = element_text(size = 18),
    legend.text = element_text(size = 15),
    legend.position = "top",
    legend.justification = c(0.5,1))
#  annotate('text',x=1,y=800,label = 'Day 1', size = 4) +
#  annotate('text',x=14,y=800,label = 'Day 2', size = 4) 
#  annotate('text',x=13.5,y=12,label = 'Day 3', size = 4)


MWact.Line

#Fig.Name <- paste("ANT_ACC_", Data.Sample, ".tiff", sep = "")
# ggsave(Fig.Name, path = Fig.SaveDir, ACC.Line, width=Fig.wid, height=Fig.hei, units="cm", dpi=Fig.dpi)
ggsave("2015_MW_light_exclude.eps", plot = last_plot(), device = "eps", path = "/Users/tianrachel/Desktop/FC_Final/Data/FC_final_181201/2015/",
       scale = 1, width = 25, height = 15, units = "cm",
       dpi = 300, limitsize = TRUE)