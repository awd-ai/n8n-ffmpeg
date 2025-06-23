FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install FFmpeg (using the correct package manager for this image)
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Switch back to n8n user for security
USER node

# Start n8n
ENTRYPOINT ["n8n", "start"]
