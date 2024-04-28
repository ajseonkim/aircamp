![image](https://github.com/ajseonkim/aircamp/assets/155918264/03774e20-b898-4c6e-9233-2b06f8f66235)
- 배포 URL : http://13.124.184.222:8080/camp/list

## 개요
- 날씨 및 미세먼지 정보를 추출하여 캠핑장및  관광지를 사용자에게 추천해 주는 사이트 구현했습니다.

## 팀원 구성
![image](https://github.com/ajseonkim/aircamp/assets/155918264/e340abf8-6e18-4058-8b92-4d5ab498ca12)

- 역할 :
  이번 프로젝트 팀은 많은 기능을 추가하기보다는 기본적인 기능을 스스로 학습하고 구현하는 것에 초점을 맞추었습니다.
  그리고 각자가 구현한 기능을 합치는 과정에서 토론하고 결합는 과정에서 팀원 간의 협력이 중요한 역할을 하였습니다.

## 힘들었던 점
공공데이터 포털 사이트에 있는 캠핑장 API를 파싱하는 작업이 어려웠습니다.
이 작업에 대한 수업이 없었기 때문에 처음에는 어려움을 겪었지만, 검색을 통해 구현하는 방법을 익히고, 이를 통해 유익한 학습 경험을 얻었습니다.

## 아쉬운 점
프로젝트 진행 중 API를 파싱하는 과정에서 처음에는 RestTemplate을 활용하려 했으나, 
시간 부족 및 이해도 부족으로 성공하지 못했습니다. 이에 대처하여 URL Connection를 사용하여 파싱하였습니다. 
또한 로그인 기능을 구현할 때, JWT를 활용한 토큰 방식이 아닌 Session 방식을 선택하여 구현하였습니다. 
2차 프로젝트에서는 RestTemplate이랑 JWT를 공부하여 구현하고 싶습니다.

## 활용한 기술
Java, JSP, MyBatis, MySQL, HTML, JavaScript, CSS, SpringBoot, STS, AWS(EC2, RDS)