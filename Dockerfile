FROM openkbs/jdk-mvn-py3-x11
#FROM ubuntu:latest

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

## ---- USER_NAME is defined in parent image: openkbs/jdk-mvn-py3-x11 already ----
ENV USER_NAME=${USER_NAME:-developer}
ENV HOME=/home/${USER_NAME}

#### ---- MYSQL Setup ----
ENV MYSQL_REPO=https://dev.mysql.com/get/Downloads/MySQLGUITools
ENV MYSQL_WORKBENCH_VERSION=${MYSQL_WORKBENCH_VERSION:-6.3.10-1ubuntu16.04-amd64}
ENV MYSQL_WORKBENCH_WORKBENCH=${MYSQL_WORKBENCH_WORKBENCH:-mysql-workbench-community-6.3.10-1ubuntu16.04-amd64.deb}

RUN \
    sudo apt-get update && \
    sudo apt-get install -y mysql-workbench 
    
    #curl -L ${MYSQL_REPO}/${MYSQL_WORKBENCH_WORKBENCH} > /tmp/${MYSQL_WORKBENCH_WORKBENCH} && \
    #dpkg -i ${MYSQL_WORKBENCH_WORKBENCH} && \
    #rm -f ${MYSQL_WORKBENCH_WORKBENCH} 

USER ${USER_NAME}
WORKDIR ${HOME}

RUN \
    mkdir -p ${HOME}/workspace 

VOLUME ${HOME}/workspace
VOLUME ${HOME}/.mysql/workbench

CMD ["mysql-workbench"]

