FROM ubuntu:18.04

ADD ./server /dolphinDB

RUN apt update && apt install -y tzdata && chmod +x /dolphinDB/dolphindb

WORKDIR /dolphinDB

ENTRYPOINT ["./dolphindb"]