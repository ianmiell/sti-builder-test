# sti-builder-test
FROM openshift/base-centos7

RUN chown -R default:default /opt/openshift
COPY ./.sti/bin /usr/local/sti
RUN chmod +x /usr/local/sti/*

USER default
