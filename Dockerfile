FROM ubuntu as baseline

LABEL maintainer="themayor" github="https://www.github.com/dievus"
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get -y install tzdata gnupg2 wget
RUN \
apt-get update && \
apt-get install -y apt-utils python3 python3-pip git iproute2 iputils-ping net-tools nano exiftool nmap wget dos2unix smbclient
RUN git clone https://github.com/dievus/msToolSet-docker.git /opt/msToolSet
RUN pip3 install -r /opt/msToolSet/requirements.txt
RUN git clone https://github.com/dievus/threader3000.git /opt/threader3000
RUN sh -c "$(wget -O- https://github.com/deluan/zsh-in-docker/releases/download/v1.1.2/zsh-in-docker.sh)" -- \
-a 'CASE_SENSITIVE="true"'
RUN rm -rf /root/.zshrc
RUN wget https://gist.githubusercontent.com/dievus/8fc77e1c82a6f525d93429a25938c204/raw/4cdf103b26c4b090c7d5a2fdd6d8373fcb0c2e82/.zshrc -O /root/.zshrc
ENTRYPOINT [ "/bin/zsh" ]
RUN chmod +x /opt/msToolSet/oh365userfinder.py /opt/msToolSet/msdnsscan.py /opt/msToolSet/geemailuserfinder.py /opt/msToolSet/msdorkdump.py /opt/threader3000/threader3000.py
RUN dos2unix /opt/msToolSet/msdorkdump.py
RUN dos2unix /opt/msToolSet/msdnsscan.py 
RUN dos2unix /opt/msToolSet/oh365userfinder.py 
RUN dos2unix /opt/msToolSet/geemailuserfinder.py 
RUN dos2unix /opt/threader3000/threader3000.py
SHELL ["/bin/zsh", "-c"] 
