FROM centos:centos7

ENV salt_version 2017.7.2-1.el7.noarch

# Add salt repositories and install dependencies
RUN yum -y update && \
    yum install -y \
                https://repo.saltstack.com/yum/redhat/salt-repo-latest-2.el7.noarch.rpm \
                gcc \
                libffi-devel \
                python \
                python-devel \
                bzip2-devel \
                git \
                openssl \
                openssl-devel \
                make \
                zlib-devel \
                tar &&\
	yum clean expire-cache

RUN yum install -y vim

# Install setuptools + pip
RUN cd /tmp && \
    curl https://bootstrap.pypa.io/get-pip.py -O &&\
    python2.7 get-pip.py

RUN yum install -y salt-minion-${salt_version}

# Install ansible and its dependencies
RUN pip install pyaml setuptools boto3 boto virtualenv credstash &&\
    yum clean all && rm -rf /tmp/* /var/tmp/*

# Add Run File
ADD run.sh /usr/local/bin/run.sh
RUN chmod +x /usr/local/bin/run.sh

# Run Command
CMD "/usr/local/bin/run.sh"
