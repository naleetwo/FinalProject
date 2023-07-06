library(car)

tom_ori <- read.csv("../data/final/tom_ori_scaler.csv", fileEncoding = "utf-8", header = T)
tom_ori <- tom_ori[2:14]

str(tom_ori)
View(tom_ori)

## label 과중, 당도, 산도 컬럼 분류
# 과중
tom_ori_w <- tom_ori[1:11]
# 당도
tom_ori_s <- tom_ori[c(1:10, 12)]
# 산도
tom_ori_p <- tom_ori[c(1:10, 13)]


## 1) 과중, 당도, 산도에 영향을 미치는 요인분석

# 다중공선성 확인


# -과중
fit1 <- lm(과중 ~ ., data = tom_ori_w)
summary(fit1) # adjusted r-squared : 2.5%

vif(fit1) # 다중공선성 의심 : PH배액, 온도급액, 온도배액
sqrt(vif(fit1)) # 다중공선성 의심 : EC급액, PH급액, PH배액, 온도토양, 온도급액, 온도배액
# 중복된 컬럼 : PH배액, 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit1) # graph : 정규성 x, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit1)) # 정규분포 아님
ncvTest(fit1) # 등분산 아님


# -당도
fit2 <- lm(당도 ~ ., data = tom_ori_s)
summary(fit2) # adjusted r-squared : 14%

vif(fit2) # 다중공선성 의심 :  PH배액, 온도급액, 온도배액
sqrt(vif(fit2)) # 다중공선성 의심 :EC급액, PH급액, PH배액, 온도토양, 온도급액, 온도배액
# 중복된 컬럼 :PH배액, 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit2) # graph : 정규성 애매, 선형성 : x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit2)) # 정규분포(24%)
ncvTest(fit2) # 등분산(86%)


# -산도
fit3 <- lm(산도 ~ ., data = tom_ori_p)
summary(fit3) # adjusted r-squared : -3.6%

vif(fit3) # 다중공선성 의심 : PH배액, 온도급액, 온도배액
sqrt(vif(fit3)) # 다중공선성 의심 :EC급액, PH급액, PH배액, 온도토양, 온도급액, 온도배액
# 중복된 컬럼 : PH배액, 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit) # graph : 정규성 x, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit2)) # 정규분포(24)
ncvTest(fit2) # 등분산(86)





#########################################################################################
library(car)
# 2. 토마토 cnn_inputer data 다중 회귀분석
tom_knn <- read.csv("../data/final/tom_knn.csv", fileEncoding = "utf-8", header = T)
str(tom_knn)
tom_knn <- tom_knn[2:16]
str(tom_knn)

## label 과중, 당도, 산도 컬럼 분류
# 과중
tom_knn_w <- tom_knn[1:13]
str(tom_knn_w)
# 당도
tom_knn_s <- tom_knn[c(1:12, 14)]
str(tom_knn_s)
# 산도
tom_knn_p <- tom_knn[c(1:12, 15)]
str(tom_knn_p)



# -과중
fit1 <- lm(과중 ~ ., data = tom_knn_w)
summary(fit1) # adjusted r-squared : 28.06%

vif(fit1) # 다중공선성 의심 : 온도급액, 온도배액
sqrt(vif(fit1)) # 다중공선성 의심 : EC급액, 온도급액, 온도배액
# 중복된 컬럼 : 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit1) # graph : 정규성 x, 선형성 : x, 등분산성 : x

shapiro.test(resid(fit1)) # 정규분포 아님
ncvTest(fit1) # 등분산 아님


# -당도
fit2 <- lm(당도 ~ ., data = tom_knn_s)
summary(fit2) # adjusted r-squared : 5.1%

vif(fit2) # 다중공선성 의심 : 온도급액, 온도배액
sqrt(vif(fit2)) # 다중공선성 의심 : EC급액, 온도급액, 온도배액
# 중복된 컬럼 : 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit2) # graph : 정규성 애매, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit2)) # 정규분포 아님
ncvTest(fit2) # 등분산 


# -산도
fit3 <- lm(산도 ~ ., data = tom_knn_p)
summary(fit3) # adjusted r-squared : -0.0009%

vif(fit3) # 다중공선성 의심 : 온도급액, 온도배액
sqrt(vif(fit3)) # 다중공선성 의심 : EC급액, 온도급액, 온도배액
# 중복된 컬럼 : 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit3) # graph : 정규성 x, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit3)) # 정규분포 아님
ncvTest(fit3) # 등분산 이네? 


# 1) 다중공선성 요인 제거 : 온도급액, 온도배액
fit1 <- lm(과중 ~ EC급액 + EC배액 + pH급액 + pH배액 + 내부이산화탄소 +
               평균온도 + J.Day + 온도토양, data = tom_knn_w)
summary(fit1) # adjusted r-squared : 12% / 쓰레기

vif(fit1)
sqrt(vif(fit1)) # 다중공선성 없음

par(mfrow = c(2, 2))
plot(fit1)  

influencePlot(fit1, id=list(method = "identify")) # 유별난 269번 없애자!
shapiro.test(resid(fit1)) # 정규성 X

# outlier TEST
car::outlierTest(fit1)
car::outlierTest(fit1_1)

test1 <- tom_knn_w
test1 <- subset(test1, rownames(test1) != 269)
test1 <- subset(test1, rownames(test1) != 356)
test1 <- subset(test1, rownames(test1) != 324)
test1 <- subset(test1, rownames(test1) != 88)
test1 <- subset(test1, rownames(test1) != 536)
# outlier test 등으로 이상치 확인하면서 유별난 값 5개 제거해보았으나, 크게 의미없다.

fit1_1 <- lm(과중 ~ EC급액 + EC배액 + pH급액 + pH배액 + 내부이산화탄소 +
               평균온도 + J.Day + 온도토양, data = test1)
influencePlot(fit1_1, id=list(method = "identify"))

par(mfrow = c(2, 2))
plot(fit1_1)  

# All subset Regression 확인
library(leaps)
leap <- regsubsets(과중 ~ EC급액 + EC배액 + pH급액 + pH배액 + 내부이산화탄소 +
               평균온도 + J.Day + 온도토양, data = test1, nbest = 8)
leap

par(mfrow = c(1, 1))
plot(leap, scale = "adjr2") # 유의미 : EC급액, EC배액, PH급액, 내부이산화탄소, J.day

# 요인 2차 제거
fit1_2 <- lm(과중 ~ EC급액 + EC배액 + pH급액 + 내부이산화탄소 +  J.Day + 온도토양, data = test1)
summary(fit1_1) # 17% / 쓰레기





####################################### 쓰이는 부분 ######################################

# 3. 토마토 multi_inputer data 다중 회귀분석
tom_mul <- read.csv("../data/final/tom_mul_weight_scale_seed_98_1.csv", fileEncoding = "utf-8", header = T)
str(tom_mul)
tom_mul <- tom_mul[2:16]
str(tom_mul)


## label 과중, 당도, 산도 컬럼 분류
# 과중
tom_mul_w <- tom_mul[1:13]
str(tom_mul_w)
# 당도
tom_mul_s <- tom_mul[c(1:12, 14)]
# 산도
tom_mul_p <- tom_mul[c(1:12, 15)]


# -과중

fit1 <- lm(과중 ~ ., data = tom_mul_w)
summary(fit1) 
# adjusted r-squared : 99.55% (모델이 이 데이터에 대해 99.55%의 설명력을 가짐짐)
# p_value : 0.05이하로 다중선형회귀모델로서 유의하다
# 설명변수 중 유의한 변수(0.05이하) : 모든 변수
# => 다중선형회귀모형 구축가능

tom_mul_w_1 <- tom_mul_w
str(tom_mul_w_1)

fit1_1 <- lm(과중 ~ ., data = tom_mul_w_1)
summary(fit1_1)
# 모델이 이 데이터에 대해서 99.5%의 설명력을 가짐
# 0.05이하로 다중선형회귀모델로서 유의하다

shapiro.test(resid(fit1))
ncvTest(fit1)

par(mfrow = c(2, 2))
plot(fit1_1)

# outlier
tom_mul_view <- read.csv("../data/final/tom_mul_weight_seed_98_1.csv", fileEncoding = "utf-8", header = T)
View(tom_mul_view)
test1 <- tom_mul_w_1
fit1_2<- lm(과중 ~ ., data = test1)
summary(fit1_2)
car::outlierTest(fit1_2)

test1 <- subset(test1, rownames(test1) != 569) # EC배액 3.5미만


shapiro.test(resid(fit1_2)) # 0.07
ncvTest(fit1_2) # 0.047 애매하게 등분산아님님

par(mfrow = c(2, 2))
plot(fit1_2)





## sugar만을 위한
tom_mul_sugar <- read.csv("../data/final/tom_mul_sugar_scale_seed_98.csv", fileEncoding = "utf-8", header = T)
#tom_mul_sugar_view <- read.csv("../data/final/tom_mul_sugar.csv", fileEncoding = "utf-8", header = T)

str(tom_mul_sugar)
tom_mul_sugar <- tom_mul_sugar[2:16]
str(tom_mul_sugar)

## label 과중, 당도, 산도 컬럼 분류
# 과중
tom_mul_w <- tom_mul_sugar[1:13]
str(tom_mul_w)
# 당도
tom_mul_s <- tom_mul_sugar[c(1:12, 14)]
# 산도
tom_mul_p <- tom_mul_sugar[c(1:12, 15)]

# -당도
fit1 <- lm(당도 ~ ., data = tom_mul_s)
summary(fit1) 
# adjusted r-squared : 96.59% 
# p_value : 0.05이하로 다중선형회귀모델로서 유의하다
# 설명변수 중 유의한 변수(0.05이하) : ph급액. ec비율, ph비율 제외
# => 다중선형회귀모형 구축가능

tom_mul_s_1 <- tom_mul_s[c(1:11, 13)]
str(tom_mul_s_1)

# EC급액 + EC배액 + pH배액 + 내부이산화탄소 + 평균온도 + J.Day + 온도토양 + 온도급액 + pH비율

fit1_1 <- lm(당도 ~ ., data = tom_mul_s_1)
summary(fit1_1)
# 모델이 이 데이터에 대해서 96.59%의 설명력을 가짐
# 0.05이하로 다중선형회귀모델로서 유의하다

shapiro.test(resid(fit1))
ncvTest(fit1)

par(mfrow = c(2, 2))
plot(fit1)

# outlier
test1 <- tom_mul_s_1
fit1_2<- lm(당도 ~ ., data = test1)
summary(fit1_2)
car::outlierTest(fit1_2)

test1 <- subset(test1, rownames(test1) != 516) 
test1 <- subset(test1, rownames(test1) != 589)
test1 <- subset(test1, rownames(test1) != 353)
test1 <- subset(test1, rownames(test1) != 453)
test1 <- subset(test1, rownames(test1) != 439)
test1 <- subset(test1, rownames(test1) != 332)
test1 <- subset(test1, rownames(test1) != 329)
test1 <- subset(test1, rownames(test1) != 571)
test1 <- subset(test1, rownames(test1) != 312)
test1 <- subset(test1, rownames(test1) != 357)

test1 <- subset(test1, rownames(test1) != 524)
test1 <- subset(test1, rownames(test1) != 392)
test1 <- subset(test1, rownames(test1) != 397)
test1 <- subset(test1, rownames(test1) != 438)
test1 <- subset(test1, rownames(test1) != 320)
test1 <- subset(test1, rownames(test1) != 389)
test1 <- subset(test1, rownames(test1) != 303)
test1 <- subset(test1, rownames(test1) != 333)

write.csv(test1, "../data/final/test1.csv")



shapiro.test(resid(fit1_2)) # 0.07
ncvTest(fit1_2) # 0.047 애매하게 등분산아님님

par(mfrow = c(2, 2))
plot(fit1_2)


# 산도만을 위한
tom_mul_ph <- read.csv("../data/final/tom_mul_ph_scale_seed_100.csv", fileEncoding = "utf-8", header = T)

str(tom_mul_ph)
tom_mul_ph <- tom_mul_ph[2:16]
str(tom_mul_ph)

## label 과중, 당도, 산도 컬럼 분류
# 과중
tom_mul_w <- tom_mul_ph[1:13]
str(tom_mul_w)
# 당도
tom_mul_s <- tom_mul_ph[c(1:12, 14)]
# 산도
tom_mul_p <- tom_mul_ph[c(1:12, 15)]

# -산도
fit3 <- lm(산도 ~ ., data = tom_mul_p)
summary(fit3) 


shapiro.test(resid(fit3)) # 정규분포  x
ncvTest(fit3) # 등분산

par(mfrow = c(2, 2))
plot(fit3)
##############################################################################################

View(tom_mul_w_1)



# 모델평가
fitted.results <- predict(fit1_1, newdata = subset(tom_mul_w_1, select=c(2, 3, 4, 5, 6, 7, 8), type="response"))
fitted.results <- ifelse(fitted.results > 0.5, 1, 0)
miserror <- mean(fitted.results != test$과중)
print(paste("Accuracy", 1-miserror))
# 일단 버리고
            

attach(tom_mul_w_1)
x <- cbind(EC급액, EC배액, pH배액, 내부이산화탄소, 평균온도, J.Day, 온도토양, 온도급액, pH비율, 과중)
cor(x)
detach(tom_mul_w_1)

# 주성분분석(PCA) 
pca_1 <- prcomp(tom_mul_w_1, center = T, scale = T) # rotation에서 각각의 변수가 미치는 영향(계수)확인
pca_1
plot(prcomp(tom_mul_w_1, center = T, scale = T), type="l") # 그래프 기울기가 급격히 감소하는 부분 전단계까지 활용가능
summary(prcomp(tom_mul_w_1, center = T, scale = T)) # 누적기여율(cumulative proportion)이 90%가 넘는 pc6(주성분6)까지 사용하자

pca_1$rotation[,c(1:5)] # pc5까지 주성분분석 값

train_pca <- as.matrix(tom_mul_w_1) %*% pca_1$rotation[,c(1:5)] 





vif(fit1_1) # 다중공선성 의심 : ph급액,ph배액 제외 전체
sqrt(vif(fit1_1)) # 다중공선성 의심 : PH배액 제외 전체
# 중복된 컬럼 : ph배액 제외 전체


# 모형
par(mfrow = c(2, 2))
plot(fit1) # 정규성 X, 선형성 : 병신, 등분산성 : 병신

shapiro.test(resid(fit1)) # 정규분포 아님
ncvTest(fit1) # 등분산 아님


# -당도
str(tom_mul_s)
# 컬럼 목록 : C급액 EC배액 pH급액 pH배액 내부이산화탄소 평균온도 J.Day 온도토양 온도급액 온도배액  EC비율 pH비율 당도   


fit2 <- lm(당도 ~ ., data = tom_mul_s)
summary(fit2) # adjusted r-squared : 23.01%

vif(fit2) # 다중공선성 의심 : PH배액 제외 전체
sqrt(vif(fit2)) # 다중공선성 의심 : ph배액 제외 전체
# 중복된 컬럼 : PH배액 제외 전체

# 모형
par(mfrow = c(2, 2))
plot(fit2) # 정규성 : 병신, 선형성 : 병신, 등분산성 : 병신

shapiro.test(resid(fit2)) # 정규분포 아님
ncvTest(fit2) # 등분산 아님



# -산도
fit3 <- lm(산도 ~ ., data = tom_mul_p)
summary(fit3) # adjusted r-squared : 31.15%

vif(fit3) # 다중공선성 의심 : PH급액, 평균온도, 온도토양, 온도급액, 온도배액
sqrt(vif(fit3)) # 다중공선성 의심 : EC급액, EC배액, PH급액, 평균온도, J.DAY, 온도토양, 온도급액, 온도배액
# 중복된 컬럼 : PH급액, 평균온도, 온도토양, 온도급액

# 모형
par(mfrow = c(2, 2))
plot(fit3) # graph : 정규성 x, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit3)) # 정규분포 아님
ncvTest(fit3) # 등분산 아님

str(tom_mul_w)
##############
library(leaps)

leap <- regsubsets(당도 ~ ., data = tom_mul_s, nbest = 10)
leap

par(mfrow = c(1, 1))
plot(leap, scale = "adjr2")

attach(tom_mul_s)
x <- cbind(EC급액, EC배액, pH급액, pH배액, 내부이산화탄소, 평균온도, J.Day, 온도토양, 온도급액, 온도배액,  EC비율, pH비율, 당도)
cor(x)
detach(tom_mul_s)

# EC급액 EC배액 pH급액 pH배액 내부이산화탄소 평균온도 J.Day 온도토양 온도급액 온도배액

# 1) 다중공선성 요인 제거 : 
#fit2_1 <- lm(당도 ~ EC급액 + EC배액 + pH급액 + pH배액 + J.Day + 온도토양 + 온도급액 + 온도배액, data = tom_mul_s)
#summary(fit2_1) # adjusted r-squared : 56.96

fit2_1 <- lm(당도 ~ EC급액 + pH급액 + pH배액 + 내부이산화탄소+ J.Day + 온도토양, data = tom_mul_s)
summary(fit2_1) # adjusted r-squared : 15.86
#EC급액, pH급액, pH배액, 내부이산화탄소, J.Day, 온도토양
vif(fit2_1)
sqrt(vif(fit2_1))

par(mfrow = c(2, 2))
plot(fit2_1)

shapiro.test(resid(fit2_1)) # 정규성 x
ncvTest(fit2_1) # 등분산 x

# outlier TEST
test1 <- tom_mul_s
fit2_2 <- lm(당도 ~ ., data = test1)
car::outlierTest(fit2_2)
tom_mul_View <- read.csv("../data/final/tom_mul.csv", fileEncoding = "utf-8", header = T)
View(tom_mul_View)


test2 <- subset(test2, rownames(test2) != 195)
test2 <- subset(test2, rownames(test2) != 1080)
test2 <- subset(test2, rownames(test2) != 269)


# 그래프
influencePlot(fit2_1, id=list(method = "identify"))
# boxplot(test2[1:4]) / 대기


# 모형
par(mfrow = c(2, 2))
plot(fit2_1) # 정규성 X, 선형성 : 병신, 등분산성 : 병신

shapiro.test(resid(fit2_1)) # 정규분포 아님
ncvTest(fit2_1) # 등분산



#########################################################################################

# 4. 토마토 5번 농장 난수 data대입 다중 회귀분석
tom5 <- read.csv("../data/final/tom5_scale.csv", fileEncoding = "utf-8", header = T)
tom5 <- tom5[2:14]
str(tom5)

## label 과중, 당도, 산도 컬럼 분류
# 과중
tom5_w <- tom5[1:11]
# 당도
tom5_s <- tom5[c(1:10, 12)]
# 산도
tom5_p <- tom5[c(1:10, 13)]



# -과중
fit1 <- lm(과중 ~ ., data = tom5_w)
summary(fit1) # adjusted r-squared : -0.004%

vif(fit1) # 다중공선성 의심 : x
sqrt(vif(fit1)) # 다중공선성 의심 : x
# 중복된 컬럼 : x

# 모형
par(mfrow = c(2, 2))
plot(fit1) # 정규성 X, 선형성 : 병신, 등분산성 : 병신

shapiro.test(resid(fit1)) # 정규분포 아님
ncvTest(fit1) # 등분산 맞음



# -당도
fit2 <- lm(당도 ~ ., data = tom5_s)
summary(fit2) # adjusted r-squared : -0.003%

vif(fit2) # 다중공선성 의심 : x
sqrt(vif(fit2)) # 다중공선성 의심 : x
# 중복된 컬럼 : x

# 모형
par(mfrow = c(2, 2))
plot(fit2) # 정규성 : 병신, 선형성 : 병신, 등분산성 : 병신

shapiro.test(resid(fit2)) # 정규분포 아님
ncvTest(fit2) # 등분산 아님



# 산도
fit3 <- lm(산도 ~ ., data = tom5_p)
summary(fit3) # adjusted r-squared : 0.0002%

vif(fit3) # 다중공선성 의심 : PH급액, 평균온도, 온도토양, 온도급액, 온도배액
sqrt(vif(fit3)) # 다중공선성 의심 : EC급액, EC배액, PH급액, 평균온도, J.DAY, 온도토양, 온도급액, 온도배액
# 중복된 컬럼 : 온도급액, 온도배액

# 모형
par(mfrow = c(2, 2))
plot(fit3) # graph : 정규성 x, 선형성 : 애매하지만 x, 등분산성 : 애매하지만 x

shapiro.test(resid(fit3)) # 정규분포 아님
ncvTest(fit3) # 등분산 맞음ㅁ



###############################################





