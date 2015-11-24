FROM rijalati/alpine-java8
MAINTAINER rijalati@gmail.com

RUN git clone https://github.com/oltpbenchmark/oltpbench.git
WORKDIR /oltpbench

RUN ant
WORKDIR /
RUN git clone https://github.com/rijalati/dotfiles.git \
    && cp /dotfiles/mkshrc /root/.mkshrc
WORKDIR /oltpbench
RUN mkdir /oltpbench/templates
ENV TMPLDIR=/oltpbench/templates
COPY templates/*.xml templates/
ENTRYPOINT ["/oltpbench/oltpbenchmark"]
CMD ["--help"]