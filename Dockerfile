FROM ubuntu:18.04 as osinstall



RUN apt-get update && apt-get install -y gnupg1 apt-transport-https dirmngr


RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
RUN echo "deb https://ookla.bintray.com/debian generic main" | tee  /etc/apt/sources.list.d/speedtest.list

RUN apt-get update && apt-get install -y speedtest
