#!/bin/bash

kubectl get deploy -n dev | grep pc-api | awk '{print $1}' > sudo /home/ubuntu/list-deploy.txt

while IFS= read -r line; do
	kubectl set image deployment/$line -n dev pc-api=9870050478/linux_tweet_app:{RELEASE_NAME}
done < sudo /home/ubuntu/list-deploy.txt
