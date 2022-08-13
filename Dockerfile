ARG ANSIBLE_VERSION=6.2.0

# pull base image
FROM liksi/ansible:${ANSIBLE_VERSION}-ubuntu22.04

LABEL "maintainer"="liksi <ops@liksi.fr>"

ENV TZ=Europe/Paris
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN echo "===> Installing boto3"  && \
    pip3 install --upgrade boto3==1.24.51



