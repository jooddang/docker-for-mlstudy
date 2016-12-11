FROM continuumio/miniconda:4.1.11
MAINTAINER jooddang <jooddang@gmail.com>

# docker build -t "ml-study:0.1" .
# docker run -it --rm -v "$PWD":/mnt -v /private/tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY={IP}:0 ml-study:0.1

ENV LANG=C.UTF-8 LC_ALL=C.UTF-8
ENV TERM=xterm-256color

RUN apt-get install -y vim

RUN export LSCOLORS=GxFxCxDxBxegedabagaced
RUN conda install python=3.5.2 numpy matplotlib PyQt=4 keras

CMD [ "/bin/bash" ]

