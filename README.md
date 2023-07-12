# 국내 스마트팜 도입을 위한 AI기반 토마토 생체정보 모니터링 시스템 및 품질 예측 모델 개발
<br>

## 🤼 팀원소개
[윤진석](https://github.com/naleetwo/FinalProject/tree/master/Code/jinseok) : 팀장 / 프로젝트 관리, 데이터 전처리, 분석 및 품질예측 모델 구현

[김현경](https://github.com/naleetwo/FinalProject/tree/master/Code/jinseok) : 팀원 / 데이터 수집 및 전처리, 분석 및 생육상태 판단 모델 구현

[나석원](https://github.com/naleetwo/FinalProject/tree/master/Code/SeokwonNa) : 팀원 / 데이터 수집 및 전처리, 분석 및 품질예측 모델 구현, PPT, 발표

[송호준](https://github.com/naleetwo/FinalProject/tree/master/Code/Songhojun) : 팀원 / 데이터 수집 및 전처리, 품질예측 모델 구현 및 프로그램 개발, 프론트앤드 Web 구현

[정승빈](https://github.com/naleetwo/FinalProject/tree/master/Code/Seungbin) : 팀원 / 데이터 수집 및 전처리, 생육 상태 판단 모델 구축, PPT, 발표

[황준하](https://github.com/naleetwo/FinalProject/tree/master/Code/Juna) : 팀원 / 데이터 수집 및 전처리, 질병진단 모델 구현
<br>
<br>

## 📚 사용언어 및 모듈
<a href="https://www.python.org/" target="_blank"><img src="https://img.shields.io/badge/Python-3776AB?style=flat&logo=python&logoColor=white"/></a>
<a href="https://jupyter.org/" target="_blank"><img src="https://img.shields.io/badge/Jupyter-F37626?style=flat&logo=jupyter&logoColor=white"/></a>
<a href="https://www.tensorflow.org/?hl=ko" target="_blank"><img src="https://img.shields.io/badge/Tensorflow-FF6F00?style=flat&logo=tensorflow&logoColor=white"/></a>
<a href="https://keras.io/" target="_blank"><img src="https://img.shields.io/badge/Keras-D00000?style=flat&logo=keras&logoColor=white"/></a>
<a href="https://scikit-learn.org/stable/index.html" target="_blank"><img src="https://img.shields.io/badge/Scikitlearn-F7931E?style=flat&logo=Scikitlearn&logoColor=white"/></a>
<a href="https://numpy.org/" target="_blank"><img src="https://img.shields.io/badge/Numpy-013243?style=flat&logo=numpy&logoColor=white"/></a>
<a href="https://pandas.pydata.org/" target="_blank"><img src="https://img.shields.io/badge/Pandas-150458?style=flat&logo=pandas&logoColor=white"/></a>
<a href="https://www.r-project.org/" target="_blank"><img src="https://img.shields.io/badge/R-276DC3?style=flat&logo=r&logoColor=white"/></a>
<a href="https://www.r-project.org/" target="_blank"><img src="https://img.shields.io/badge/Flask-000000?style=flat&logo=flask&logoColor=white"/></a>
<a href="https://www.r-project.org/" target="_blank"><img src="https://img.shields.io/badge/PyTorch-EE4C2C?style=flat&logo=PyTorch&logoColor=white"/></a>

<br>
<br>

## 📁 폴더 분류

[Code](https://github.com/naleetwo/FinalProject/tree/master/Code) : 팀원별 분석에 쓰인 jupyter, R 분석 파일들을 모아둔 곳

[PPT](https://github.com/naleetwo/FinalProject/tree/master/PPT) : 프로젝트 기획안 및 최종 PPT 결과물 보관

[회의록](https://github.com/naleetwo/FinalProject/tree/master/%ED%9A%8C%EC%9D%98%EB%A1%9D) : 회의일지 정리
<br>
<br>

## 📋 프로젝트 개요

### 1. 프로젝트 배경
#### ① 세계 분쟁 및 기후재난·식량문제와 더불어 저출산 및 고령화가 진행중인 국내 문제로 인해 국내 농업 생산량과 농업종사 인구가 줄어듬
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/de5fd6f8-9613-4b83-86ec-6cbd2c73c01d" width = "640" height = "380"></img>
</div>
<br>


#### ② 국내에서는 작물 생육과정 전반에 걸친 자동화 시스템을 구축하기 위해 한국형 스마트팜 모델을 도입
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/b80d6b6f-50e2-49ad-89d4-266abb0cb2db" width = "640" height = "380"></img>
</div>
<br>

    
#### ③ 작물 중 두번째로 생산량이 많은 토마토에 대하여 스마트팜 기반이 되는 AI모델(생장예측 및 질병진단, 품질예측) 개발
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/fae700d3-41ef-4219-8035-3fdf2e9b313f" width = "640" height = "380"/>
</div>
<br>
<br>
<br>

### 2. 프로젝트 기간 : '23. 6. 5. ~ 7.12.
<br>
        
### 3. 주요 프로젝트 성과

#### 1) 품질예측 모델
    - 환경데이터를 통해 품질(당도, 산도, 과중)을 예측하는 모델 구상
    - 데이터의 결측치에 대한 다양한 접근(Simple Imputation, KNN Imputation, Multivariate feature Imputation 등) 및 이상치 허용기준을 확립해 다양한 데이터 셋 구성
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/6b1bbcd2-509a-4604-9a44-fcbb2bbc05f8" width = "680" height = "380"/>
</div>
<br>

    - 준비한 데이터 셋에 다양한 ML 회귀모델(KNN, Linear, Lasso, Ridge, SVR 등) 테스트를 통한 최적 모델 탐색
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/372e9c21-4d62-46e0-bdca-c868931bdaa2" width = "680" height = "380"/>
</div>
<br>

    - 「과중·당도 ML 예측모델」회귀 예측모델생성
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/2af95d0c-b8d5-4fd9-8ddb-06fa61d4a5da" width = "680" height = "380"/>
</div>
<br>


    - 「산도 DLL 분류모델」생성 * 카테고리화된 산도 Label 고려
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/70bb74ee-3c93-48ef-9c4a-92ddf690a647" width = "680" height = "380"/>
</div>
<br>

#### 2) YOLO 모델
    - Yolo v8을 활용한 질병상태 및 생육단계 판별 모델 구상
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/06707f6a-8420-428f-a8ab-f51359806541" width = "680" height = "380"/>
</div>
<br>

    - 상 : 실제 해외 농가에서 사용되는 모습
    - 좌 : 질병 진단 모델 Predict / 우 : 생장 예측 모델 Predict
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/128697640/2273e4bb-ee51-47d1-b207-cf3c4c8bf5f4" width = "680" height = "380"/><br>
    <img src = "https://github.com/naleetwo/FinalProject/assets/128697640/9d4ab035-7bfd-4e7c-8356-d24161ecde79" width = "240" height = "380"/>
    <img src = "https://github.com/naleetwo/FinalProject/assets/128697640/567888d9-8b6b-4239-a6c9-d151a5354ea9" width = "440" height = "380"/>
</div><br>
    
#### ① 질병 진단 모델
    - 「질병진단 모델 훈련 결과」
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/5b2d687b-4dfb-4db8-ac34-c84f94225051" width = "680" height = "380"/>
    <img src = "https://github.com/naleetwo/FinalProject/assets/128697640/a478e8be-7348-439b-a98c-0b9a4e3658f7" width = "400" height = "380"/>
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/5a2d9fd5-c081-4f8d-88e4-c1d68d9ea2b7" width = "600" height = "380"/>
</div><br>

#### ② 생장 예측 모델
    - 「생육단계 판단 모델 훈련 결과」
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/7efbe451-cee1-499e-a26c-6a72e9725312" width = "680" height = "380"/>
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/1c9f186c-0cea-4c70-8c32-cb0d39b45332" width = "680" height = "380"/>
</div><br>


    

#### 3) Web 서비스 구현
    - 웹 서비스 이용 시연
<div align = "center">
    <img src = "https://github.com/naleetwo/FinalProject/assets/127948197/991686e4-ed64-4d21-be44-5c9df3509a56" width = "680" height = "380"/>
</div>
<br>
<br>
<br>

## 🔒 출처 및 참고

### [토마토 농사로](https://www.nongsaro.go.kr)
    - 농작업 일정 : https://www.nongsaro.go.kr/portal/ps/psb/psbl/workScheduleDtl.ps?menuId=PS00087&cntntsNo=30646&sKidofcomdtySeCode=210001&totalSearchYn=Y
    - 이달의 농업기술 : http://www.nongsaro.go.kr/portal/ps/psv/psvr/psvre/curationDtl.ps?menuId=PS03352&srchCurationNo=1466&pageUnit=&pageIndex=1&sEraInfo=&sSrchAll=Y&sKidofcomdtySeCode=&sType=&srchStr=
### [작물병 방재정보](http://www.knco.co.kr/portfolio-items/tomato/)

### [토마토 생육조사 정보](https://www.youtube.com/watch?v=ok0BOVvwxVE)

### [토마토 생장시기별 최적환경정보(표준 데이터)](https://smartfarm.rda.go.kr/dtsv/grwhct_pub.do)

### [토마토 양수분관리 기초교육](https://samwha27.com/entry/%EC%8A%A4%EB%A7%88%ED%8A%B8%ED%8C%9C-%EA%B8%B0%EC%B4%88%EA%B5%90%EC%9C%A1-%EC%96%91%EC%88%98%EB%B6%84-%EA%B4%80%EB%A6%AC%EB%A5%BC-%EB%B0%B0%EC%9B%8C%EB%B3%B4%EC%9E%90)

### [농넷 토마토 가격정보](https://www.nongnet.or.kr/front/M000000006/stats/totSearch.do?keyword=0803)

### [농업전망](https://www.aglook.kr/event)

### [AI-Hub / 지능형 스마트팜 통합 데이터(토마토)](https://www.aihub.or.kr/aihubdata/data/view.do?currMenu=115&topMenu=100)

### [농립축산식품부](https://www.mafra.go.kr)
    - 스마트팜 사업내용 : https://www.mafra.go.kr/home/5281/subview.do
    - 농업경영체 등록정보 통계서비스 : http://uni.agrix.go.kr/docs7/biOlap/fixType.do?reportId=eqpt_oudor_area_item

### [대한민국 정책브리핑](https://www.korea.kr/special/policyCurationView.do?newsId=148864055#L1)

### [전자신문 – 인공지능이 농사짓는 시대.. 2세대 스마트팜 개발](https://www.etnews.com/20181114000242)

### [조선경제 – “네덜란드는 농사99%가 스마트팜, IT강국 한국이 아직도 1% 라니](https://www.chosun.com/economy/weeklybiz/2021/02/05/YNKNBZAC4RBMFBRHSRI2EH3EHI/)

### [국가농식품통계서비스 - 핵심지표](https://kass.mafra.go.kr/newkass/kas/consmr/core/selectList.do)

### [농민신문 - 정책 – 반전 없는 곡물자급률 세계 최하위 수준](https://www.nongmin.com/article/20230607500551)

### [SGIS 통계지리정보서비스 – 인구피라미드](https://sgis.kostat.go.kr/jsp/pyramid/pyramid1.jsp)

### [한국농어촌공사 - 스마트팜 혁신밸리조성사업](https://www.ekr.or.kr/Kkrpub/webzine/2022/12/subpage-102.html)
