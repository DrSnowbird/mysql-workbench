FROM openkbs/ubuntu-bionic-jdk-mvn-py3-x11
#FROM ubuntu:latest

MAINTAINER DrSnowbird "DrSnowbird@openkbs.org"

## ---- USER_NAME is defined in parent image: openkbs/ubuntu-bionic-jdk-mvn-py3-x11 already ----
ENV USER_NAME=${USER_NAME:-developer}
ENV HOME=/home/${USER_NAME}

#### ---- MYSQL Setup ----
#https://dev.mysql.com/get/Downloads/MySQLGUITools/mysql-workbench-community_8.0.12-1ubuntu18.04_amd64.deb
ENV MYSQL_REPO=https://dev.mysql.com/get/Downloads/MySQLGUITools

#ENV MYSQL_WORKBENCH_WORKBENCH=${MYSQL_WORKBENCH_WORKBENCH:-mysql-workbench-community-6.3.10-1ubuntu16.04-amd64.deb}
ENV MYSQL_WORKBENCH_WORKBENCH=${MYSQL_WORKBENCH_WORKBENCH:-mysql-workbench-community_8.0.12-1ubuntu18.04_amd64.deb}

#RUN \
#    sudo apt-get update && \
#    sudo apt-get install -y mysql-workbench 

RUN \
    sudo apt-get update && \
    wget ${MYSQL_REPO}/${MYSQL_WORKBENCH_WORKBENCH}
    
RUN \
    sudo apt-get install \
        libatkmm-1.6-1v5 \
        libcairomm-1.0-1v5 \
        libglibmm-2.4-1v5 \
        libgtkmm-3.0-1v5 \
        libpangomm-1.4-1v5 \
        libpython2.7 \
        libsigc++-2.0-0v5 \
        libssh-4 \
        libvsqlitepp3v5 \
        libzip4

RUN \
    sudo dpkg -i ${MYSQL_WORKBENCH_WORKBENCH} && \
    rm -f ${MYSQL_WORKBENCH_WORKBENCH} 

USER ${USER_NAME}
WORKDIR ${HOME}

RUN \
    mkdir -p ${HOME}/workspace 

VOLUME ${HOME}/workspace
VOLUME ${HOME}/.mysql/workbench

CMD ["mysql-workbench"]

