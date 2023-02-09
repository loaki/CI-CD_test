FROM ubuntu

RUN mkdir /app
WORKDIR /app

COPY app ./

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip

RUN pip3 install -r /app/requirements.txt

RUN touch /var/log/app.log

CMD python3 app.py >> /var/log/app.log 2>&1
