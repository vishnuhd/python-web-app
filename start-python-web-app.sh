#!/bin/bash
curl -fsSL https://get.docker.com -o get-docker.sh
bash get-docker.sh
git clone https://github.com/vishnuhd/python-web-app.git
cd python-web-app/
docker build -t python-web-app:latest .
docker run -d -p 5000:5000 python-web-app