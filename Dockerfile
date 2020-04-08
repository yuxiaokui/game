FROM alpine:3.9
MAINTAINER xi4okv <xi4okui@gmail.com>
RUN echo "https://mirror.tuna.tsinghua.edu.cn/alpine/v3.9/main" > /etc/apk/repositories

RUN apk add --update \
    python \
  && rm -rf /var/cache/apk/*

WORKDIR /data
COPY / /data

EXPOSE 8000

CMD ["sh","run.sh"]
