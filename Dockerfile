FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip
RUN cd /
RUN git clone https://github.com/Itzharshit/Mega.nz-Bot
RUN cd Mega.nz-Bot
WORKDIR /Mega.nz-Bot
RUN pip3 install -U -r requirements.txt
CMD python3 -m megadl
