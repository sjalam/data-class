library(dplyr)
library(readr)
library(tidyr)


#Extraction of level 1 from NSSO 77th round (Household level data)

Level1<-read_fwf(file="D:/NSSO level 1/r77s331v1L01.txt")

Level1<-read_fwf(file="D:/NSSO level 1/r77s331v1L01.txt",
                 fwf_cols(centercode=c(1,3),    fsuslno=c(4,8),
                          round=c(9,10),      schedule=c(11,13),
                          sample=c(14,14),    sector=c(15,15),
                          region=c(16,18),    distcode=c(19,20),
                          stratum=c(21,22),   substratum=c(23,24),
                          subround=c(25,25),  fod=c(26,29),
                          sssno=c(30,30),     hhno=c(31,32),
                          visit=c(33,33),     level=c(34,35),
                          filler=c(36,40),    infslno=c(41,42),
                          responscd=c(43,43), surveycd=c(44,44),
                          casualtycd=c(45,45),employcd1=c(46,49),
                          employcd2=c(50,53), employcd3=c(54,57),
                          sdate=c(58,63),     ddate=c(64,69),
                          time=c(70,72),      noinvest=c(73,73),
                          remarks1=c(74,74),  remarks2=c(75,75),
                          remarks3=c(76,76),  remarks4=c(77,77),
                          blank=c(78,126),    nsc=c(127,129),
                          mlt=c(130,139)),
                 col_types=cols(centercode=col_character(),       fsuslno=col_character(),
                                round=col_integer(),         schedule=col_character(),
                                sample=col_character(),         sector=col_integer(),
                                region=col_character(),    distcode=col_character(),
                                stratum=col_character(),   substratum=col_character(),
                                subround=col_character(),  fod=col_character(),
                                sssno=col_character(),     hhno=col_character(),
                                visit=col_integer(),     level=col_character(),
                                filler=col_character(),    infslno=col_character(),
                                responscd=col_character(), surveycd=col_character(),
                                casualtycd=col_character(), employcd1=col_character(),
                                employcd2=col_character(), employcd3=col_character(),
                                sdate=col_date(),     ddate=col_date(),
                                time=col_character(),      noinvest=col_character(),
                                remarks1=col_character(),  remarks2=col_character(),
                                remarks3=col_character(),  remarks4=col_character(),
                                blank=col_character(),    nsc=col_number(),
                                mlt=col_number()))                 
save(Level1,file="Level1.RData")
View(Level1)


#Extraction of round (Individual level data)level 3 from NSSO 77th 
Level3 <-read_fwf(file="D:/NSSO level 1/r77s331v1L03.txt")

Level3 <-read_fwf(file="D:/NSSO level 1/r77s331v1L03.txt",
                  fwf_cols(centercode=c(1,3),    fsuslno=c(4,8),
                           round=c(9,10),      schedule=c(11,13),
                           sample=c(14,14),    sector=c(15,15),
                           region=c(16,18),    distcode=c(19,20),
                           stratum=c(21,22),   substratum=c(23,24),
                           subround=c(25,25),  fod=c(26,29),
                           sssno=c(30,30),     hhno=c(31,32),
                           visit=c(33,33),level=c(34,35),
                           filler=c(36,40),    hhsize=c(41,43),
                           rlgncode=c(44,44), sclgrpcode=c(45,45),
                           hhclasscode=c(46,46),  uslconsexpnd1=c(47,56),
                           homegrownsock=c(57,66), uslconsexpnd2=c(67,76),
                           uslconsexpnd3=c(77,86),  uslconsexpnd4=c(87,96),
                           vlofagriprdct=c(97,97), dwellinguntcode=c(98,98),
                           typeofstrt=c(99,99),hhmemberbankacct=c(100,100),
                           mnregajobcard=c(101,101), wrkudrmnrega=c(102,102),    
                           rgrfrmrorg=c(103,103), kisancreditcard=c(104,104),
                           soilhealthcard=c(105,105), soilhealthcard2=c(106,106),
                           animalhealthcard=c(107,107),  pmfsby=c(108,108),
                           blank=c(109,126), nsc=c(127,129), mlt=c(130,139)),
                  col_types=cols(centercode=col_character(),       fsuslno=col_character(),
                                 round=col_integer(),         schedule=col_character(),
                                 sample=col_character(),         sector=col_integer(),
                                 region=col_character(),    distcode=col_character(),
                                 stratum=col_character(),   substratum=col_character(),
                                 subround=col_character(),  fod=col_character(),
                                 sssno=col_character(),     hhno=col_character(),
                                 visit=col_integer(),     level=col_character(),
                                 filler=col_character(),   hhsize=col_character(),
                                 rlgncode=col_character(), sclgrpcode=col_character(),
                                 hhclasscode=col_number(),  uslconsexpnd1=col_number(),
                                 homegrownsock=col_number(), uslconsexpnd2=col_number(),
                                 uslconsexpnd3=col_number(),  uslconsexpnd4=col_number(),
                                 vlofagriprdct=col_character(), dwellinguntcode=col_integer(),
                                 mnregajobcard=col_character(),  hhmemberbankacct=col_character(),
                                 rgrfrmrorg=col_character(),   kisancreditcard=col_character(),
                                 soilhealthcard=col_character(),  soilhealthcard2=col_character(),
                                 animalhealthcard=col_character(), pmfsby=col_character(),
                                 blank=col_character(),    nsc=col_number(),
                                 mlt=col_number()))
save(Level3,file="Level3.RData") 
View(Level3)


#Extraction of level 10 from NSSO 77th round (Individual level data)


Level10 <-read_fwf(file="D:/NSSO level 1/r77s331v1L10.txt")
Level10 <-read_fwf(file="D:/NSSO level 1/r77s331v1L10.txt",
                   fwf_cols(centercode=c(1,3),    fsuslno=c(4,8),
                            round=c(9,10),      schedule=c(11,13),
                            sample=c(14,14),    sector=c(15,15),
                            region=c(16,18),    distcode=c(19,20),
                            stratum=c(21,22),   substratum=c(23,24),
                            subround=c(25,25),  fod=c(26,29),
                            sssno=c(30,30),     hhno=c(31,32),
                            visit=c(33,33),level=c(34,35),
                            filler=c(36,38), srlno=c(39,40),
                            ownconsqnty=c(41,50),  owncnsvlue=c(51,60),
                            othrhhqnty=c(61,70),   othrhhvlue=c(71,80),
                            cprtiveqnty=c(81,90),   cprtivevlue=c(91,100),
                            prvtprcessrqnty=c(101,110),  prvtprcessrvlue=c(111,120),
                            blank=c(121,129),   nsc=c(127,129),
                            mlt=c(130,139)),
      col_types = cols(centercode=col_character(),       fsuslno=col_character(),
                       round=col_integer(),         schedule=col_character(),
                       sample=col_character(),         sector=col_integer(),
                       region=col_character(),    distcode=col_character(),
                       stratum=col_character(),   substratum=col_character(),
                       subround=col_character(),  fod=col_character(),
                       sssno=col_character(),     hhno=col_character(),
                       visit=col_integer(),     level=col_character(),
                       filler=col_character(),srlno=col_character(),
                       ownconsqnty=col_number(),owncnsvlue=col_number(),
                       othrhhqnty=col_number(), othrhhvlue=col_number(),
                       cprtiveqnty=col_number(), cprtivevlue=col_number(),
                       prvtprcessrqnty=col_number(), prvtprcessrvlue=col_number(),
                       blank=col_character(),    nsc=col_number(),
                       mlt=col_number()))

save(Level10,file="Level10.RData") 
View(Level10)

Level10=Level10[-c(58041:75414),]


#Adding weights to convert sample to population
Level3$weight <- Level3$mlt/100
Level10$weight <- Level10$mlt/100      


#Merging level 3 & 10 together
#Creating Individual level Primary keys for merging 3 and 10
Level3$keyind <- paste0(Level3$fsuslno,Level3$sssno,Level3$hhno)
Level10$keyind <-paste0(Level10$fsuslno,Level10$sssno,Level10$hhno)



#Merging Level 6 and 7 using primary keys
Level3_10 <- merge(Level3,Level10,by="keyind",all=TRUE)
View(Level3_10)
str(Level3_10)
Level3_10[is.na(Level3_10)]=0
summary(Level3_10)




#Running regression: Regressing value of usual consumer expenditure on working under manrega, prime minister fsal bima yojna and other household
#Apriori expecting all the signs to be positive 
lm1 <- lm(uslconsexpnd4 ~ wrkudrmnrega+pmfsby+ownconsqnty+prvtprcessrvlue+homegrownsock+hhsize,data=Level3_10)
summary(lm1)
summary(lm1)$coef
summary(lm1)$sigma
summary(lm1)$r.squared
