library(dplyr)
library(reshape2)
library(ggplot2)
library(readr)
#데이터 불러오기
train <- read_csv("C://RProject/sf-crime/train.csv/train.csv")
summary(train)#기본통계량 보기
str(train)

is.na(train)#결측치 확인
table(is.na(train))#결측치 빈도 출력
table(is.na(train$X))# X 결측치 빈도 출력
mean(train$X)# 평균 산출
sum(train$X)# 합계 산출
train %>% filter(is.na(X)) #<dbl>:double float
train$Y = ifelse((train$Y>38),NA,train$Y) #샌프란시스코 좌표에 맞지 않는 Y값 NA로 변경
train
train$X = ifelse((train$X>-122.0),NA,train$X) #샌프란시스코 좌표에 맞지 않는 X값 NA로 변경
train
#결측값을 모두 제거
train[!is.na(train$X)&!is.na(train$Y),]
train
qplot(train$X,train$Y,main='X,Y position',xlab = 'Longitude', ylab = 'Latitude')
