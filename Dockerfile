FROM node:18-bullseye-slim

# Install FFmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Install n8n
RUN npm install -g n8n

# Create a working directory
WORKDIR /data

# Expose default port
EXPOSE 5678

# Start n8n
CMD ["n8n"]
