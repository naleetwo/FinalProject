# FinalProject
### 토마토 재배의 성공적 결실을 위한 모델
### 소제목 추천받아요<br/><br/>

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


V001_tom1_43_085_d2_11_20211031_18_06072546_38102607
