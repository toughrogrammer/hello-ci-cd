FROM python:3.7

# pip 업그레이드
RUN pip install pip --upgrade

# 여러분의 현재 디렉토리의 모든 파일들을 도커 컨테이너의 /python-docker 디렉토리로 복사 (원하는 디렉토리로 설정해도 됨)
ADD . /python-docker

# 작업 디렉토리로 이동
WORKDIR /python-docker

# 작업 디렉토리에 있는 requirements.txt로 패키지 설치
RUN pip install -r requirements.txt

# 컨테이너에서 실행될 명령어. 컨테이거나 실행되면 app.py를 실행시킨다.
CMD pytest tests
