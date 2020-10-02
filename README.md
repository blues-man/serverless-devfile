# NodeJS fuction for Serverless.com Knative Component demo

This demo will setup an env on Eclipse Che to code, build and run a Function on your [Kubernetes](https://kubernetes.io) and [OpenShift](https://openshift.com) cluster using [Knative](https://knative.dev/) and  [Serverless.com components](https://www.serverless.com/components/). Components give the possiblity of delegating the build phase to the cluster, so that can be done for you by *Kaniko* or *Source-to-Image* when using [Knative Component](https://github.com/serverless-components/knative/).


## Prerequisites

### Serverless.com

Serverless.com components require a login at [Serverless.com](https://serverless.com).

From Dashboard, Create an *Access Key*, we will use it for Deploying the function: `https://app.serverless.com/<YOUR_USER>/settings/accessKeys`

### Knative

Install Knative or OpenShift Serverless in your cluster. Get them from [OperatorHub](https://operatorhub.io/operator/knative-operator) or from OperatorHub embedded marketplace inside OpenShift.

### Cluster info

Populate the `.env` file with your cluster info:

* KUBERNETES_ENDPOINT: Cluster API URL (e.g. https://api.my-cluster.tld)
* KUBERNETES_PORT: Cluster API port (e.g. 6443)
* KUBERNETES_SERVICE_ACCOUNT_TOKEN: get your k8s user serviceaccount token (e.g. in OpenShift `oc whoami -t`) 
* KUBERNETES_SKIP_TLS_VERIFY: skip TLS verification if you are not using trusted certificates for API (e.g. true)

if you are using it on Kubernetes, a [Docker Hub](https://hub.docker.com) account is required. Add these credentials to the `.env` file then:

* DOCKER_USERNAME: Docker Hub username
* DOCKER_PASSWORD: Docker Hub password

## Run in Eclipse Che!

Code, build, test and deploy your Function as scale-to-zero app directly from [Eclipse Che](https://www.eclipse.org/che/) in-browser IDE:

[![Contribute](https://www.eclipse.org/che/contribute.svg)](https://codeready-openshift-workspaces.apps.openshift4.openshift4.dev//f?url=https://github.com/openshift-labs/serverless-devfile/)

