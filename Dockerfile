FROM rocker/rstudio:latest


RUN apt-get update && \
    apt-get install -y locales fonts-noto-cjk && \
    locale-gen zh_TW.UTF-8 && \
    update-locale LANG=zh_TW.UTF-8 LC_ALL=zh_TW.UTF-8

ENV LANG zh_TW.UTF-8
ENV LC_ALL zh_TW.UTF-8


RUN echo 'par(family = "Noto Sans CJK TC")' >> /home/rstudio/.Rprofile


ENV PASSWORD=password

