FROM quay.io/eclipse/che-nodejs10-ubi:nightly

LABEL maintainer=osevg@redhat.com

RUN npm install -g serverless

USER root

RUN chown -R 1001:0 /home/user/ && chmod -R ug+rwx /home/user && \
    rpm-file-permissions
    
RUN chmod -R ug+rwx /tmp && \
    rpm-file-permissions

RUN export KN_VERSION=0.15.2  && \
    curl -o /tmp/kn.tar.gz -L https://mirror.openshift.com/pub/openshift-v4/clients/serverless/$KN_VERSION/kn-linux-amd64-$KN_VERSION.tar.gz && \
    tar -xvf /tmp/kn.tar.gz -C /tmp/ && \
    rm -f /tmp/kn.tar.gz && \
    mv /tmp/kn /usr/bin/kn && \
    chmod +x /usr/bin/kn

USER 1001

