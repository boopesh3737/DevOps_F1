#!/bin/bash
docker build -t task73 .
echo Hyyy
docker login -u boopeshs -p 02-Apr-05
docker tag task73 boopeshs/final_task
docker push boopeshs/final_task
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
