#Nuskaitomi duomenų failai data6089.csv ir data9013.csv

data1=read.csv("C:/Users/auste/Downloads/data6089.csv")
data2=read.csv("C:/Users/auste/Downloads/data9013.csv")

#Naudojant R funkciją merge sujungiami nuskaityti duomenų rinkiniai (visi duomenys) ir sukuriamas naujas rinkinys
data=merge(data1,data2,by.x=c('year','country','gdppc','unemp','export','import'),by.y=c('year','country','gdppc','unemp','export','import'),all=T)

#Nuskaitomas naujas failas datapol.csv
data3=read.csv("C:/Users/auste/Downloads/datapol.csv")

#Naudojant R funkciją merge sujungiami du duomenų rinkiniai (data3 ir data) ir sukuriamas naujas rinkinys 
data_pol=merge(data,data3,by.x=c('year','country'),by.y=c('year','country'))
