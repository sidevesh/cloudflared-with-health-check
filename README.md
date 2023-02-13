# Erisa's Cloudflared Docker Image with curl

## To run with health check:

`docker run --health-cmd='curl --fail http://localhost:3333/ready' --health-interval=60s --health-timeout=10s cloudflare/cloudflared:latest tunnel --no-autoupdate --metrics localhost:3333 --hello-world`

Available on [Docker Hub](https://hub.docker.com/r/sidevesh/cloudflared)
