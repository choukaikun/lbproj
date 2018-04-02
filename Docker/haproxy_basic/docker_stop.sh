#!/usr/bin/env bash

for cnt in web1 web2 lbl; do
  echo "Stopping container ${cnt}"
	docker stop ${cnt}
  echo "Removing container ${cnt}"
	docker rm ${cnt}
done
