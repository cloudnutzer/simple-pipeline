# Description English:
# Simple Pipeline
* Simple pipeline example for demonstration purposes

# Prerequisites
* Docker Hub Registry or another registry to store or retrieve the built container image
* I have deployed an AKS cluster in Azure
* The AKS Cluster Config has been converted to BASE64 format (for more information, see below)

# Pipeline Procedure
* First, a Docker image is built
* Docker Image is stored in a Docker Hub Registry
* The new Docker image is deployed on an Azure Kubernetes Service Cluster

# Variables that need to be set:
* Within the repo -> Settings -> Security / Secrets and variables -> Actions -> "Secrets" Tab
* I have set three variables for my use case:
  * DOCKER_PASSWORD
  * DOCKER_USERNAME
  * KUBECONFIG_BASE64
  
  <img src="media/simple-pipeline-secrets-vars.png"/>

# A few CLI commands that can be helpful during the demo:
* watch -n 1 "kubectl get pods -o wide"
* kubectl get deployment
* kubectl delete deployment webapp-deployment
* kubectl get services

# Use AKS Cluster Kubeconfig text converted to base64 as a variable in Github:
* Command to read the AKS kubeconfig file in Azure and then download locally:
  * az aks get-credentials --resource-group <rg-name> --name <aks-name> --file kubeconfig-aks
* Encode the local Kubeconfig File in Base64 and copy to the clipboard:
  * cat kubeconfig-aks | base64 | pbcopy
* Transfer the content from the clipboard to Github Secrets as described above.


# Description in German:

# Simple Pipeline
* Einfaches Pipeline Beispiel zu Demo-Zwecken

# Voraussetzung
* Docker Hub Registry oder ein anderes Registry, um das gebaute Container Image abzulegen bzw. abzurufen
* Ich habe ein AKS Cluster in Azure deployed
* Die AKS Cluster Config in BASE64 format umgewandelt (Fuer weitere Infos siehe weiter unten)

# Pipeline Ablauf
* Zuerst wird ein Dockerimage gebaut
* Docker Image wird in eine Docker Hub Registry abgelegt
* Das neue Docker Image wird auf einem Azure Kubernetes Service Cluster deployed

# Variablen, die gesetzt werden muessen:
* Innerhalb des Repos -> Settings -> Security / Secrets and variables -> Actions -> "Secrets" Tab
* Ich habe drei Variablen fuer meinen Anwendungsfall gesetzt:
  * DOCKER_PASSWORD
  * DOCKER_USERNAME
  * KUBECONFIG_BASE64

# Ein paar CLI Befehle, die waehrend der Demo hilfreich sein koennen:
* watch -n 1 "kubectl get pods -o wide"
* kubectl get deployment
* kubectl delete deployment webapp-deployment
* kubectl get services

# AKS Cluster Kubeconfig in base64 umgewandelten Text als Variable in Github einsetzen:
* Befehl aks kubeconfig file in Azure auslesen und dann lokal downloaden:
    * az aks get-credentials --resource-group <rg-name> --name <aks-name> --file kubeconfig-aks
* Das lokale Kubeconfig File in Base64 encoden und ins clipboard kopieren:
    * cat kubeconfig-aks | base64 | pbcopy
* Den Inhalt im Clipboard in die Github Secrets uebernehmen, wie oben beschrieben

