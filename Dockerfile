# Crane Image for container registry operations
FROM alpine:latest

# Install dependencies for the download and AWS CLI
RUN apk add --no-cache curl bash unzip groff python3 py3-pip

# Install Google's crane from go-containerregistry
RUN curl -L https://github.com/google/go-containerregistry/releases/latest/download/go-containerregistry_Linux_x86_64.tar.gz \
    | tar -xz crane -C /usr/local/bin/

# AWS CLI installation
RUN curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip" && \
    unzip awscliv2.zip && \
    ./aws/install && \
    rm -rf awscliv2.zip aws

WORKDIR /root
CMD ["/bin/bash"]