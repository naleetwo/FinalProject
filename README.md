# AI 기반 토마토 질병·상태 분류 및 품질예측 모델 개발

## 팀원소개
¯\_(ツ)_/¯[윤진석]() : 데이터 수집, 데이터 전처리, 분석, 시각화, 팀장, 발표

(●'◡'●)[김현경]() : 데이터 분석, 데이터 전처리, 분석, 시각화

(*/ω＼*)[나석원]() : 데이터 수집, 데이터 분석, 전처리, 시각화

༼ つ ◕_◕ ༽つ[송호준]() : 데이터 분석, 데이터 상관분석, 데이터 전처리

☜(ﾟヮﾟ☜)[정승빈]() : 데이터 수집, 데이터 전처리, 데이터 분석

( ´･･)ﾉ(._.`)[황준하]() : 데이터 수집, 데이터 전처리, 데이터 분석

## 사용언어 및 모듈
<a href="https://www.python.org/" target="_blank"><img src="https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white"/></a>
<a href="https://jupyter.org/" target="_blank"><img src="https://img.shields.io/badge/Jupyter-F37626?style=flat&logo=jupyter&logoColor=white"/></a>
<a href="https://www.tensorflow.org/?hl=ko" target="_blank"><img src="https://img.shields.io/badge/Tensorflow-FF6F00?style=flat&logo=tensorflow&logoColor=white"/></a>
<a href="https://keras.io/" target="_blank"><img src="https://img.shields.io/badge/Keras-D00000?style=flat&logo=keras&logoColor=white"/></a>
<a href="https://scikit-learn.org/stable/index.html" target="_blank"><img src="https://img.shields.io/badge/Scikitlearn-F7931E?style=flat&logo=Scikitlearn&logoColor=white"/></a>
<a href="https://numpy.org/" target="_blank"><img src="https://img.shields.io/badge/Numpy-013243?style=flat&logo=numpy&logoColor=white"/></a>
<a href="https://pandas.pydata.org/" target="_blank"><img src="https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white"/></a>
<a href="https://www.r-project.org/" target="_blank"><img src="https://img.shields.io/badge/R-276DC3?style=flat&logo=r&logoColor=white"/></a>



## 사용언어 및 모듈
<a href="https://www.python.org/" target="_blank"><img src="https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white"/></a>
<a href="https://www.r-project.org/" target="_blank"><img src="https://img.shields.io/badge/R-276DC3?style=flat&logo=r&logoColor=white"/></a>
<a href="https://jupyter.org/" target="_blank"><img src="https://img.shields.io/badge/Jupyter-F37626?style=flat&logo=jupyter&logoColor=white"/></a>
<a href="https://numpy.org/" target="_blank"><img src="https://img.shields.io/badge/Numpy-013243?style=flat&logo=numpy&logoColor=white"/></a>
<a href="https://numpy.org/" target="_blank"><img src="https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white"/></a>

## 폴더 분류

[analysis](https://github.com/Decoyer-71/GwangProject/tree/master/Analysis%20(Notebook)) : 분석에 쓰인 jupyter, R 분석 파일들을 모아둔 곳

[Data](https://github.com/Decoyer-71/GwangProject/tree/master/Data) : 크롤링 및 데이터 수집에 쓰인 파일들을 모아둔 곳 

[PPT](https://github.com/Decoyer-71/GwangProject/tree/master/PPT) : PPT만든 것을 모아둔 곳

[회의록](https://github.com/Decoyer-71/GwangProject/tree/master/회의록) : 회의록 작성하는 곳

## 1. 프로젝트 소개

광진구 주차문제 해소를 통한 공공복지 증진과 광진구에서 추진하고 있는 주차문제 해결 사업 효과를 극대화하기 위하여

인구, 주차장 면수, 대중교통 등의 데이터를 토대로 행정동 기준 가장 적합한 사업적용방안 제시

## 2. 데이터 출처
[건축물](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EA%B1%B4%EC%B6%95%EB%AC%BC) : [서울 열린데이터 광장](https://data.seoul.go.kr/)

[교통량](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EA%B5%90%ED%86%B5%EB%9F%89) : [서울시 교통정보 시스템](https://topis.seoul.go.kr/)

[기타](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EA%B8%B0%ED%83%80) : [서울 열린데이터 광장](https://data.seoul.go.kr/)

[대중교통](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EB%8C%80%EC%A4%91%EA%B5%90%ED%86%B5) : [서울 열린데이터 광장](https://data.seoul.go.kr/)

[동별](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EB%8F%99%EB%B3%84) : [공공데이터포털](https://www.data.go.kr/)

[불법주정차](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EB%B6%88%EB%B2%95%EC%A3%BC%EC%A0%95%EC%B0%A8) : [서울 열린데이터 광장](https://data.seoul.go.kr/)

[상관분석](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EC%83%81%EA%B4%80%EB%B6%84%EC%84%9D) : [서울 열린데이터 광장](https://data.seoul.go.kr/), [서울시 상권분석 서비스](https://golmok.seoul.go.kr/main.do)

[인구](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EC%9D%B8%EA%B5%AC) : [서울시 상권분석 서비스](https://golmok.seoul.go.kr/main.do)

[주차장이용률](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EC%A3%BC%EC%B0%A8%EC%9E%A5%EC%9D%B4%EC%9A%A9%EB%A5%A0) : [서울특별시 주차정보안내시스템](https://parking.seoul.go.kr/)

[주택](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EC%A3%BC%ED%83%9D) : [공공데이터포털](https://www.data.go.kr/)

[차,주차장](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%EC%B0%A8%2C%EC%A3%BC%EC%B0%A8%EC%9E%A5): [공공데이터포털](https://www.data.go.kr/), [서울 열린데이터 광장](https://data.seoul.go.kr/)

[회귀분석](https://github.com/Decoyer-71/GwangProject/tree/master/Data/%ED%9A%8C%EA%B7%80%EB%B6%84%EC%84%9D) : [공공데이터포털](https://www.data.go.kr/), [서울 열린데이터 광장](https://data.seoul.go.kr/), [서울시 상권분석 서비스](https://golmok.seoul.go.kr/main.do)

## 3. 데이터 분석
### 1) 여유면적 분석
    담장허물기 사업이 가능한 여유면적을 많이 보유한 지역을 알아내기 위해 
    서울시 건축물대장 정보를 이용하여 아파트를 제외한 광진구 동별 평균 여유면적을 분석
![aaa](https://user-images.githubusercontent.com/127808901/235427890-71ed0567-4a9e-43b3-9071-dad7d0f355b7.png)


    
### 2) 주차장 수요 분석
    ① 회귀분석
        주차장면수에 영향을 주는 요인 분석
        -> 주요회귀변수: 평균직장인구, 차량등록대수, 대중교통 승객수  
![스크린샷 2023-05-01 175256](https://user-images.githubusercontent.com/127808901/235431475-b41ddfc8-64cf-4ab2-bba0-05d13baa19cb.png)

    
    ② 장소분석
        - 광진구 동별 유동인구, 직장인구, 거주인구를 비교하여 주차 수요가 많은 동 분석
            -> 자양동, 중곡동, 구의동
![스크린샷 2023-05-01 172850](https://user-images.githubusercontent.com/127808901/235429029-45a732ff-826b-4e93-adfc-774513e0a8c5.png)       
        
        - 대중교통 이용량, 차량등록대수, 주민등록인구, 불법주차 단속건수를 비교하여 주차 수요가 많은 동 분석
            -> 구의동, 중곡동, 자양동
            
    ③ 주차장 이용률 분석
        실시간 주차가능면을 제공하는 부설주차장을 크롤링하여 일주일간 주차장 이용률 분석
![스크린샷 2023-05-01 173141](https://user-images.githubusercontent.com/127808901/235429347-f55d720e-4380-4ff4-af81-640b1004b83d.png)
        
## 4. 결론
- 여유면적 분석결과, 구의동이 담장허물기 사업을 진행하기에 가장 적합하고,
- 주차수요 분석결과, 구의동, 중곡동, 자양동 중심의 그린파킹 사업 추진 시 주차문제를 효율적으로 해결할 수 있다.


## 목차
1. [팀원 소개](#팀원-소개)
2. [사용 언어](#사용-언어)
2. [자료 사이트](#자료-사이트)
3. [자료 수집 기간](#자료-수집-기간)
4. [폴더 구성](#폴더-구성)
5. [비교할 요소](#비교할-요소)
6. [분석 결과](#분석-결과)
7. [자료별 구성요소 출처](#자료별-구성요소-출처)
<br/><br/>

## 모델 설명
1. 목적 
2. 사용방식
   - 사진과 환경 정보를 입력
3. 모델 구조
   - 사진 모델
     + 건강한 잎:1, 병든 잎:2, 덜핀 꽃:3, 만개한 꽃:4, 덜익은 열매:5, 다 익은 열매:6
     + 사진을 업로드하면 분석하여 부위 이름 및 생육 크기를 출력
     + 만약 사진이 잎이라면 질병 여부와 함께 감염시 해당 질병을 출력
     + 만약 열매라면, 해당 열매가 익었는지 익지 않았는지 판별
   - 환경 모델
     +예상 수확 결과를 출력


<토마토 project 참고 link>

[토마토 농사로](https://www.nongsaro.go.kr/portal/ps/psb/psbl/workScheduleDtl.ps?menuId=PS00087&cntntsNo=30646&sKidofcomdtySeCode=210001&totalSearchYn=Y)

[작물병 방재정보](http://www.knco.co.kr/portfolio-items/tomato/)

[토마토 생육조사 정보](https://www.youtube.com/watch?v=ok0BOVvwxVE)

[토마토 생장시기별 최적환경정보(표준 데이터)](https://smartfarm.rda.go.kr/dtsv/grwhct_pub.do)

[토마토 양수분관리 기초교육](https://samwha27.com/entry/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8C%9C-%EA%B8%B0%EC%B4%88%EA%B5%90%EC%9C%A1-%EC%96%91%EC%88%98%EB%B6%84-%EA%B4%80%EB%A6%AC%EB%A5%BC-%EB%B0%B0%EC%9B%8C%EB%B3%B4%EC%9E%90)
