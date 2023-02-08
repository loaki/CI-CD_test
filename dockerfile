FROM python:latest

RUN mkdir /app
WORKDIR /app

COPY app ./

RUN apt-get update

RUN pip3 install -r /app/requirements.txt

RUN touch /var/log/app.log

CMD "ls"
# CMD "python3 app.py >> /var/log/app.log 2>&1"
# ENTRYPOINT ["python"]
