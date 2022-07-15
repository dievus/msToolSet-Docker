FROM ubuntu as baseline

LABEL maintainer="themayor" github="https://www.github.com/dievus"
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata gnupg2 wget
RUN \
apt-get update && \
apt-get install -y apt-utils python3 python3-pip git iproute2 iputils-ping net-tools nano exiftool nmap wget 
RUN git clone https://github.com/dievus/msToolSet-Docker.git /opt/msToolSet-Docker
RUN pip3 install -r /opt/msToolSet-Docker/requirements.txt
RUN pip3 install threader3000
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
-a 'CASE_SENSITIVE="true"'
RUN rm -rf /root/.zshrc
RUN wget https://gist.githubusercontent.com/dievus/8fc77e1c82a6f525d93429a25938c204/raw/3eb95d29e75e25d6f6ca608b82ccf86ac4325211/.zshrc -O /root/.zshrc
ENTRYPOINT [ "/bin/zsh" ]
RUN chmod +x /opt/msToolSet-Docker/oh365userfinder.py /opt/msToolSet-Docker/msdnsscan.py /opt/msToolSet-Docker/geemailuserfinder.py /opt/msToolSet-Docker/msdorkdump.py
SHELL ["/bin/zsh", "-c"] 
