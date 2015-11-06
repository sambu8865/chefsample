#
# Elasticsearch Dockerfile
#
# https://github.com/dockerfile/elasticsearch
#

# Pull base image.
FROM node:0.12

# Install Elasticsearch.
RUN \
  cd /home/
  wget https://s3-us-west-1.amazonaws.com/chefsample/server.js
  node server.js 
  
