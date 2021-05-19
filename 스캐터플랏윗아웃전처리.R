library(dplyr)
library(reshape2)
library(ggplot2)
library(readr)
#데이터 불러오기
train <- read_csv("C://RProject/sf-crime/train.csv/train.csv")
summary(train)#기본통계량 보기
qplot(train$X,train$Y,main='X,Y position',xlab = 'Longitude', ylab = 'Latitude')
Longitude <- table(train$X)
Longitude <- sort(Longitude,decreasing = T) #내림차순 정렬하기
Longitude
Latitude <- table(train$Y)