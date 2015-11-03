FROM rijalati/alpine-java8
MAINTAINER rijalati@gmail.com

RUN git clone https://github.com/oltpbenchmark/oltpbench.git
WORKDIR /oltpbench

RUN ant
WORKDIR /
RUN git clone https://github.com/rijalati/dotfiles.git
RUN cp /dotfiles/mkshrc /root/.mkshrc
WORKDIR /oltpbench
ENTRYPOINT ["/usr/bin/mksh", "-li"]