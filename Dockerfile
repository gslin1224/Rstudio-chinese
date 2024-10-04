FROM rocker/rstudio:latest

RUN apt-get update \
    && apt-get install -y \
    locales fonts-noto-cjk \
    && locale-gen zh_TW.UTF-8

ENV LANG=zh_TW.UTF-8 \
    LC_ALL=zh_TW.UTF-8

EXPOSE 8787

WORKDIR /home/rstudio/project

CMD ["/init"]
