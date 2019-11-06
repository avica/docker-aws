FROM python:3-slim
RUN apt-get update && \
    apt-get install -y jq && \
    apt-get install -y curl && \
    pip3 --no-cache-dir install awscli && \
    apt-get -y clean && \
    rm -rf /var/lib/apt/lists/*
WORKDIR /deploy