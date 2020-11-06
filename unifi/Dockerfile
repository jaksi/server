FROM ubuntu:focal
RUN apt-get -q update && apt-get -y -q install wget gnupg
RUN wget -qO - https://dl.ui.com/unifi/unifi-repo.gpg | apt-key add -
RUN echo 'deb https://www.ui.com/downloads/unifi/debian stable ubiquiti' > /etc/apt/sources.list.d/100-ubnt-unifi.list
RUN apt-get -q update && apt-get -y -q install openjdk-8-jre-headless unifi
VOLUME /usr/lib/unifi/data
ENTRYPOINT ["java", "-jar", "/usr/lib/unifi/lib/ace.jar", "start"]
