FROM ubuntu:focal

# Allow log messages to be printed to stdout immediately
ENV PYTHONUNBUFFERED=TRUE

# https://repo.saltstack.com/#ubuntu
#RUN apt-get install curl && \
#    curl -s https://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add - && \
#    echo "deb http://repo.saltstack.com/py3/ubuntu/20.04/amd64/latest focal main" >> /etc/apt/sources.list.d/saltstack.list

# Install Python3.9 (and components)
RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get install -y \
        curl \
        python3.9 \
        python3.9-dev \
        libpython3.9 \
        libpython3.9-dev \
        python3-pip \
        python3-virtualenv \
        build-essential

# Install Node 14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Set up Python virtualenv
RUN virtualenv --python `which python3.9` /app/var/venv
WORKDIR /app
COPY etc/requirements.txt .
RUN /app/var/venv/bin/pip install -r requirements.txt
RUN /app/var/venv/bin/pip install uwsgi

# Set up the Node environment
COPY package.json package-lock.json .
RUN npm install --save-prod --save-dev

# Copy the source
COPY src/manage.py src/hpk/* static/* src/templates/* .

EXPOSE 49152
CMD ["/bin/bash"]
