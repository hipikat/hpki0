FROM ubuntu:focal AS hpk-web-base

LABEL maintainer="Ada Wright <ada@hpk.io>"
LABEL version="0.1.0"
LABEL Description="Django app for hpk.io"

ARG build_number
ARG commit_hash
ARG git_branch

RUN echo "Build #$build_number"
RUN echo "From commit $commit_hash on $git_branch"

# Update apt, add PPAs, and install python 3.9
RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get install -y \
        python3.9 \
        python3-virtualenv

# Install Node 14
RUN curl -sL https://deb.nodesource.com/setup_14.x | bash - && \
    apt-get install -y nodejs

# Set up Python virtualenv, and install uWSGI
RUN virtualenv --python `which python3.9` /app/var/venv
WORKDIR /app
COPY etc/requirements*.txt .
RUN /app/var/venv/bin/pip install -r requirements.txt
RUN /app/var/venv/bin/pip install uwsgi

# Set up the Node environment
COPY package.json package-lock.json .
RUN npm install --save-prod

# Copy the required source
COPY src/manage.py src/hpk/* static/* src/templates/* .

EXPOSE 8080
#CMD ["/bin/bash"]
CMD ["echo", "Hi there"]


###
# PRODUCTION
FROM hpk-web-base AS hpk-web-prod

# Default to production
ENV DJANGO_SETTINGS_MODULE=hpk.settings.prod

# Clean up after apt
RUN rm -rf /var/lib/apt/lists/*


###
# DEVELOPMENT
FROM hpk-web-base as hpk-web-dev

# Default to production
ENV DJANGO_SETTINGS_MODULE=hpk.settings.debug

# Allow log messages to be printed to stdout immediately
ENV PYTHONUNBUFFERED=FALSE

# Install Python3.9 development stuff, and clean up after apt
RUN apt-get update -y && \
    apt-get install -y software-properties-common && \
    add-apt-repository -y ppa:deadsnakes/ppa && \
    apt-get install -y \
        curl \
        python3.9-dev \
        libpython3.9 \
        libpython3.9-dev \
        python3-pip \
        build-essential \
		&& rm -rf /var/lib/apt/lists/*

# Install Python and node dev packages
RUN /app/var/venv/bin/pip install -r requirements-dev.txt
RUN npm install --save-dev

# Copy ALL the source, just in case
COPY src .

