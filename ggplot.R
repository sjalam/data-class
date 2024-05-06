library(readr)
library(dplyr)
dataB<-read.csv(file.choose())
Business<-dataB

Business<-Business[c(1:12),c(1,3,5:10,12:17,19:28)]


colnames(Business)<-c("name","time"
                      ,"constrn permit","enforce contract"
                      ,"attorney fees","ec cost",
                      "ec score","getting credit ","gc legal right"
                      ,"electricitycost","other taxes","global eodb",
                      "protect minority liablity","protect minority transp",
                      "register prop","resolving insolvancy","starting a business",
                      "sab cost men","sab cost women","sabprocreqmen",
                      "sabprocreqwomen","trad acoss border","tab cost","tab time to export")
install.packages("tidyverse")                     
install.packages("gridExtra")
install.packages("ggplot2")  
library(tidyverse)
library(ggplot2)
library(gridExtra)

Business<-as.data.frame(Business)

Business%>%
ggplot(aes(time, electricitycost, colour = name)) + labs(title="electricity consumption") + 
  geom_point()

Business$'getting credit'<-as.numeric("Business$'getting credit'")

Business%>%
ggplot( aes(time, 'getting credit', colour = name)) + labs(title="getting credit") +
  geom_point()+geom_smooth()+geom_boxplot()


Business$sabprocreqmen<-as.numeric("Business$sabprocreqmen")
Business$sabprocreqmen<-round(Business$sabprocreqmen, digits = 2)

Business%>%
ggplot( aes(time, sabprocreqmen ,  colour = name)) + 
  labs(title="Starting cost of Business-Male")+geom_point()



Business%>%
  ggplot( aes(time, sabprocreqmen ,  colour = name)) + 
  labs(title="Starting cost of Business-Male")+geom_point()+ geom_smooth()


Business%>%
  ggplot( aes(time, sabprocreqmen ,  colour = name)) + 
  labs(title="Starting cost of Business-Male")+geom_point()+geom_smooth()+geom_boxplot()

Business$sabprocreqwomen<-as.numeric("Business$sabprocreqwomen")
Business$sabprocreqwomen<-round(Business$sabprocreqwomen, digits = 2)

Business%>%
  ggplot( aes(time, sabprocreqwomen ,  colour = name)) + 
  labs(title="Starting cost of Business-Female")+geom_point()+geom_smooth()+geom_boxplot()
