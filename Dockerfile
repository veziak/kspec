FROM ubuntu:16.04
RUN apt-get -qq update
RUN apt-get install -y g++
RUN apt-get install -y libboost-all-dev
RUN apt-get install -y scons
RUN apt-get install -y coco-cpp
RUN apt-get install -y liblua5.2-dev

COPY * /tmp/kspec/
RUN cp /usr/share/coco-cpp/Parser.frame /tmp/kspec
RUN cp /usr/share/coco-cpp/Scanner.frame /tmp/kspec

WORKDIR "/tmp/kspec/"
RUN scons
RUN ls


