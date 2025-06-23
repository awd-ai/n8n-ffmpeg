FROM n8nio/n8n:latest

# Install FFmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Start n8n
ENTRYPOINT ["n8n", "start"]
