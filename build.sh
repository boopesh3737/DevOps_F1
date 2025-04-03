#!/bin/bash
docker build -t task737 .
echo Hyyy
docker login -u boopeshs -p 02-Apr-05
docker tag task737 boopeshs/f_task
docker push boopeshs/f_task
kubectl apply -f  deploy.yaml --validate=false
kubectl apply -f svc.yaml --validate=false
