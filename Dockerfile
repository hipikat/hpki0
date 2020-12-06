FROM ubuntu:focal

# Allow log messages to be printed to stdout immediately
ENV PYTHONUNBUFFERED=TRUE

# https://repo.saltstack.com/#ubuntu
#RUN apt-get install curl && \
#    curl -s https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add - && \
#    echo "deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main" >> /etc/apt/sources.list.d/saltstack.list
RUN DEBIAN_FRONTEND=noninteractive \
    apt-get update -y && \
    apt --assume-yes full-upgrade

#ENV PYTHONUNBUFFERED=1
#RUN mkdir /code
#WORKDIR /code
#COPY requirements.txt /code/
#RUN pip install -r requirements.txt
#COPY . /code/
