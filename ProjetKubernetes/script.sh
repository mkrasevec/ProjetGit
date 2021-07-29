#!/bin/bash

#Création du namespace
# kubectl create -f namespace global-vote-app
#Création des deployments
deployments=("redis.yml","voting.yml","result.yml","worker.yml","db.yml")
for e in $deployments
do 
    kubectl create -f ${e}
done

#Création de services
services=("service1.yml","service2.yml","nodservice1.yml","nodservice2.yml")
for s in $services
do 
    kubectl create -f ${s}
done

# minikube service nodservice1 -n=global-vote-app
# minikube service nodservice2 -n=global-vote-app