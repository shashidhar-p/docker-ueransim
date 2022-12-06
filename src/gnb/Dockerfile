FROM ubuntu:20.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && apt-get install -y && \
    apt-get -y install make && \
    apt-get -y install libsctp-dev lksctp-tools && \
    apt-get -y install g++ && \
    apt-get -y install iproute2 && \
    apt-get -y install apt-transport-https ca-certificates gnupg software-properties-common wget && \
    wget -qO - https://apt.kitware.com/keys/kitware-archive-latest.asc | apt-key add - && \
    apt-add-repository 'deb https://apt.kitware.com/ubuntu/ bionic main' &&\
    apt-get update &&\
    apt-get -y install cmake

# COPY UERANSIM /usr/src/UERANSIM
COPY UERANSIM/build /usr/src/UERANSIM/build
COPY UERANSIM/config /usr/src/UERANSIM/config


WORKDIR /usr/src/UERANSIM

# RUN make 
# CMD ["build/nr-gnb","-c","config/$CONFIG" ]
# ENTRYPOINT [ "executable" ]
CMD exec build/nr-gnb -c config/$CONFIG


