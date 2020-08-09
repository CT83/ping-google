FROM ubuntu

COPY start_script.sh /app/start_script.sh
RUN chmod +x /app/start_script.sh

RUN apt-get update -y
RUN apt-get install iputils-ping -y

CMD [ "/app/start_script.sh" ]