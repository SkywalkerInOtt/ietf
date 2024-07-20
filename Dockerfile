From ubuntu
ENV RUBYOPT="-KU -E utf-8:utf-8"
RUN apt-get update && \
    apt-get install -y python3 && \
    apt-get install -y python3-pip
RUN pip3 install --upgrade xml2rfc --break-system-packages
RUN apt-get update && \
    apt-get install -y xdg-utils && \
    apt-get install -y libffi-dev && \
    apt-get install -y libyaml-dev && \
    apt-get install -y libssl-dev && \
    apt-get install -y libreadline-dev && \
    apt-get install -y ruby-dev
RUN gem update
RUN gem install kdwatch
WORKDIR /var/mkd
ENTRYPOINT kdwatch -i *.mkd
