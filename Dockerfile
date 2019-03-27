FROM ubuntu:18.04

ENV LANG C.UTF-8

# Install dependencies
RUN apt-get -y update && \
    apt-get -y install \
      build-essential \
      zlib1g-dev \
      libsdl2-dev \
      git \
      wget \
      unzip && \
    apt-get clean

# Install Julius
RUN git clone https://github.com/julius-speech/julius.git && \
    cd /julius && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf julius

# Download Dictation-kit
RUN wget -nv https://osdn.net/dl/julius/dictation-kit-v4.4.zip && \
    unzip dictation-kit-v4.4.zip && \
    mv dictation-kit-v4.4 dickit && \
    rm -f dictation-kit-v4.4.zip

WORKDIR /julius
