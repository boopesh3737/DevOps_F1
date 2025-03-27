#!/bin/bash
    echo hyyy
    sh 'chmod +x build.sh'
    sh './build.sh'
    docker login -u boopeshs -p 02-Apr-05
    docker tag test boopeshs/task_f
    docker push boopeshs/task_f
    
