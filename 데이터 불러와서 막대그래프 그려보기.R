library(dplyr)
library(reshape2)
library(ggplot2)
library(readr)
#데이터 불러오기
train <- read_csv("C://RProject/sf-crime/train.csv/train.csv") 
#데이터 파악하기
head(train)#데이터 상위 6개 보기
tail(train)#데이터 하위 6개 보기
nrow(train)#데이터 row수 보기
summary(train)#기본통계량 보기
str(train)#변수 특성 확인 등 구조 확인
View(train)#데이터 보기
#막대그래프 그리기
bar_Category <- table(train$Category) #Category 분할표 만들기
bar_Category <- sort(bar_Category,decreasing = T) #내림차순 정렬하기
bar_Category #출력해보기
barplot(bar_Category)
#그래프 색 지정
barplot(bar_Category,col="skyblue")
barplot(bar_Category,col="grey",border="white")
cols <- ifelse(bar_Category == max(bar_Category),"red","grey")
cols <- ifelse(bar_Category == min(bar_Category),"blue","grey")
cols
barplot(bar_Category,col=cols,border="white")
#막대 크기 조절(space,width)
barplot(bar_Category,space=0.5)
barplot(bar_Category,width = 50)
#y축 범위 설정(ylim)
barplot(bar_Category,ylim=c(0,200000))
#값 입력(text,pos)
bar_Category.text <- barplot(bar_Category)
text(bar_Category.text,bar_Category+20,labels=bar_Category)

par(mfrow=c(2,2))
bar_Category.text <- barplot(bar_Category)
text(bar_Category.text, bar_Category+20, labels=bar_Category, pos=1)

bar_Category.text <- barplot(bar_Category)
text(bar_Category.text, bar_Category+20, labels=bar_Category, pos=2)

bar_Category.text <- barplot(bar_Category)
text(bar_Category.text, bar_Category+20, labels=bar_Category, pos=3)

bar_Category.text <- barplot(bar_Category)
text(bar_Category.text, bar_Category+20, labels=bar_Category, pos=4)

#막대그래프 그리기
bar_DayOfweek <- table(train$DayOfWeek) #Category 분할표 만들기
bar_DayOfweek <- sort(bar_DayOfweek,decreasing = T) #내림차순 정렬하기
bar_DayOfweek #출력해보기
barplot(bar_DayOfweek)
