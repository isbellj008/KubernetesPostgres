#!/bin/zsh
#kubectl apply -f pv.yaml
#kubectl apply -f pvc.yaml
kubectl apply -f pvc-pv.yaml
kubectl apply -f cm.yaml
kubectl apply -f secret.yaml
kubectl apply -f deploy.yaml
kubectl apply -f nodeport.yaml