FROM ubuntu:14.04
RUN /bin/bash -c \
  'apt-get update'
RUN /bin/bash -c 'apt-get -qq -y install curl'
RUN /bin/bash -c 'curl -sL https://deb.nodesource.com/setup_0.10 | sudo bash -'
RUN /bin/bash -c 'apt-get -y install nodejs'
RUN /bin/bash -c 'apt-get -y install wget'
RUN /bin/bash -c 'wget https://s3-us-west-1.amazonaws.com/chefsample/archive.tar.gz'
RUN /bin/bash -c 'tar xzvf /archive.tar.gz'
CMD ["bash"]
CMD npm install
CMD npm start 
  
