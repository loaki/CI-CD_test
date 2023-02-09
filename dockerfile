FROM ubuntu:22.04

RUN mkdir /app
WORKDIR /app

COPY app ./

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip

RUN pip3 install --no-cache-dir -r /app/requirements.txt

RUN touch /var/log/app.log

CMD app.py >> /var/log/app.log 2>&1
ENTRYPOINT python3
