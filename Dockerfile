FROM python:slim

RUN apt-get update && apt-get -y install --no-install-recommends openssh-client && rm -rf /var/lib/apt/lists/* 

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /myapp

CMD [ "python" ]