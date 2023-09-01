FROM ubuntu

MAINTAINER yeabsra2000

COPY files /Desktop

RUN apt-get -y update && \
    apt-get -y install neofetch python2 git

RUN git clone https://github.com/yeabsra2000/fsociety.git && \
    cd fsociety/fsociety-master && \
    chmod +x install.sh && \
    ./install.sh

CMD [ "echo", "If you want to start fsociety, run python3 fsociety.py" ]
