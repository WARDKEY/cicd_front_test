# 베이스 이미지
FROM node:20.12.2


# 클라우드 환경에서 디렉토리를 의미
WORKDIR /front-vue

# 현재 디렉토리에 있는 모든 파일을 WORKDIR로 이동
COPY . .


# 필요한 의존관계 라이브러리를 설치하는 명령어
RUN npm install
RUN npm i axios
RUN npm install vuex@next --save

# 포트번호 노출
EXPOSE 8081

# 스크립트 실행 명령어(하나의 도커파일은 하나의 CMD만 가짐, 배열 형식으로 지정)
CMD ["npm", "run", "serve"]
