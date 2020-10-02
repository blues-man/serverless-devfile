# NodeJS fuction for Serverless.com Knative Component demo

This demo will setup an env on Eclipse Che to code, build and run a Function on your [Kubernetes](https://kubernetes.io) and [OpenShift](https://openshift.com) cluster using [Knative](https://knative.dev/) and  [Serverless.com components](https://www.serverless.com/components/). Components give the possiblity of delegating the build phase to the cluster, so that can be done for you by *Kaniko* or *Source-to-Image* when using [Knative Component](https://github.com/serverless-components/knative/).


## Prerequisites

### Serverless.com

Serverless.com components requires a login at [Serverless.com](https://serverless.com).

Create ad Access Key, we will use it for Deploying the function.

### Knative

Install Knative or OpenShift Serverless in your cluster. Get them from [OperatorHub](https://operatorhub.io/operator/knative-operator) or from OperatorHub embedded marketplace inside OpenShift.

### Cluster info

Populate the `.env` file with your cluster info:


* **KUBERNETES_ENDPOINT**: Cluster API hostname (e.g. api.my-cluster.tld)
* **KUBERNETES_PORT**: Cluster API port (e.g. 6443)
* **KUBERNETES_SERVICE_ACCOUNT_TOKEN**: get your k8s user serviceaccount token (e.g. in OpenShift `oc whoami -t`) 
* **KUBERNETES_SKIP_TLS_VERIFY**: skip TLS verification if you are not using trusted certificates for API (e.g. true)

## Run in Eclipse Che!

Code, build, test and deploy your Function as scale-to-zero app directly from [Eclipse Che](https://www.eclipse.org/che/) in-browser IDE:

[![Contribute](https://www.eclipse.org/che/contribute.svg)](https://che.openshift.io/f?url=https://github.com/openshift-labs/serverless-devfile/)

