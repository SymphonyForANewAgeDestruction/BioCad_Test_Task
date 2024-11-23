FROM ubuntu

RUN apt update 
RUN apt install python3 python3-pip -y

COPY .  /web_server

RUN chmod +x /web_server/main.py

CMD python3 /web_server/main.py
