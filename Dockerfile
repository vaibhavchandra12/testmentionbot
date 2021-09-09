FROM debian:latest
FROM python:3.9.6-slim-buster
RUN apt update && apt upgrade -y && 
RUN apt update && apt upgrade -y && \
    apt install --no-install-recommends -y \
    python3 \
ENV PATH="/home/bot/bin:$PATH"
RUN pip3 install -U pip
RUN pip3 install -U -r requirements.txt
CMD python3 bot.py
