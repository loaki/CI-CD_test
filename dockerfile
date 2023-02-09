FROM ubuntu:latest

RUN mkdir /app
WORKDIR /app

COPY app ./
COPY requirements.txt ./

RUN apt-get update
RUN apt-get install -y python3
RUN apt-get -y install python3-pip

RUN pip3 install --no-cache-dir -r /app/requirements.txt

CMD ["python3", "app.py"]