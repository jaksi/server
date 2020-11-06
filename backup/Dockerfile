FROM ubuntu:focal
RUN apt-get -q update && apt-get -yq install curl jq
RUN curl -Lo /dbxcli $(curl -s https://api.github.com/repos/dropbox/dbxcli/releases/latest | jq -r '.assets[] | select(.name == "dbxcli-linux-amd64").browser_download_url') && chmod +x /dbxcli
COPY backup.sh /
ENTRYPOINT ["/backup.sh"]
