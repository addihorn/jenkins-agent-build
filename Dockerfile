FROM docker.io/jenkins/inbound-agent:latest

USER root
RUN apt-get update
RUN apt-get install -y git

#install openshift
RUN apt-get install -y libc6
RUN wget https://mirror.openshift.com/pub/openshift-v4/clients/oc/4.2/linux/oc.tar.gz
RUN tar -xf oc.tar.gz -C /usr/bin

RUN chgrp -R 0 /home/jenkins && \
    chmod -R g=rwX /home/jenkins

USER 1000
