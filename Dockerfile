FROM quay.io/eclipse/che-nodejs10-ubi:nightly

LABEL maintainer=osevg@redhat.com

RUN npm install -g serverless
