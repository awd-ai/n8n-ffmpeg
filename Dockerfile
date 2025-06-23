FROM n8nio/n8n

RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean
