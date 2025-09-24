FROM ubuntu:22.04


RUN apt-get update && apt-get install -y python3 && rm -rf /var/lib/apt/lists/*


WORKDIR /app


RUN mkdir -p /app/bind_mount


CMD ["python3", "/app/bind_mount/ishappy.py"]
