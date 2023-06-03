# Simple Pipeline
* Einfaches Pipeline Beispiel zu Demo-Zwecken

# Ablauf
* Zuerst wird ein Dockerimage gebaut
* Docker Image wird in eine Docker Hub Registry abgelegt
* Das neue Docker Image wird auf einem Azure Kubernetes Service Cluster deployed

# Weitere Befehle:
* watch -n 1 "kubectl get pods -o wide"
* kubectl get deployment
* kubectl delete deployment webapp-deployment
* kubectl get services

# AKS Cluster Kubeconfig in base64 umgewandelten Text als Variable in Github einsetzen:
* Befehl aks kubeconfig file in Azure auslesen und dann lokal downloaden:
    * az aks get-credentials --resource-group <rg-name> --name <aks-name> --file kubeconfig-aks
* Das lokale Kubeconfig File in Base64 encoden und ins clipboard kopieren:
    * cat kubeconfig-aks | base64 | pbcopy

