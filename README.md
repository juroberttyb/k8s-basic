# k8s-basic
### BUILD
* docker build -t juroberttyb/app:latest .
* docker push juroberttyb/app:2.0
### DEPLOY
* k apply -f server.yaml -f nginx.yaml
