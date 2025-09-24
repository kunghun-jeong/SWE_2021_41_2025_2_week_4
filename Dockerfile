FROM ubuntu:22.04

# Python 설치
RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*

# 작업 디렉토리
WORKDIR /app

# bind mount로 외부에서 코드를 넣을 거라 폴더만 준비
RUN mkdir -p /app/bind_mount

# 컨테이너 시작 시 파이썬 실행 (과제 요구)
CMD ["python3", "/app/bind_mount/ishappy.py"]
