FROM ubuntu as baseline

LABEL maintainer="themayor" github="https://www.github.com/dievus"
LABEL org.opencontainers.image.source="https://github.com/dievus/msToolSet-Docker"
LABEL org.opencontainers.image.description="Dockerized version of my most used tools."
LABEL org.opencontainers.image.authors="dievus"
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata gnupg2 wget apt-utils python3 python3-pip git iproute2 iputils-ping net-tools nano exiftool nmap wget dos2unix smbclient
RUN git clone https://github.com/dievus/msToolSet-docker.git /opt/msToolSet
RUN pip3 install -r /opt/msToolSet/requirements.txt
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
-a 'CASE_SENSITIVE="true"'
RUN rm -rf /root/.zshrc
RUN cp /opt/msToolSet/.zshrc /root/.zshrc
ENTRYPOINT [ "/bin/zsh" ]
RUN chmod +x /opt/msToolSet/oh365userfinder.py /opt/msToolSet/msdnsscan.py /opt/msToolSet/geemailuserfinder.py /opt/msToolSet/msdorkdump.py /opt/msToolSet/threader3000.py /opt/msToolSet/pingsweep.sh
RUN dos2unix /opt/msToolSet/msdorkdump.py
RUN dos2unix /opt/msToolSet/msdnsscan.py 
RUN dos2unix /opt/msToolSet/oh365userfinder.py 
RUN dos2unix /opt/msToolSet/geemailuserfinder.py 
RUN dos2unix /opt/msToolSet/threader3000.py
RUN dos2unix /opt/msToolSet/pingsweep.sh
SHELL ["/bin/zsh", "-c"] 
