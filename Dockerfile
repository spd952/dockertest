FROM ubuntu:22.04
#12
RUN apt-get update && apt-get install -y build-essential 

COPY test.deb /tmp/app.deb
RUN dpkg -i /tmp/app.deb 

CMD ["/usr/bin/hello"]
