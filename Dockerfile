
# sti-builder-test
FROM openshift/base-centos7

ENV STI_NODEJS_VERSION 0.10

# TODO: Install required packages here:
# RUN yum install -y ... ; yum clean all -y


# TODO (optional): Copy the builder files into /opt/openshift
# COPY ./<builder_folder>/ /opt/openshift/
COPY ./.sti/bin /usr/local/sti
RUN chmod +x /usr/local/sti/*

USER default
# TODO: Set the default port for applications built using this image
# EXPOSE 3000
