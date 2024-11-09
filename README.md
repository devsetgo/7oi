# Seven of I Static Site
Hugo site for SevenofI.com

### Build and Deploy Site

BUild Hugo site and then build and push the docker container.

```bash
hugo
docker build --no-cache -t 7oi:2024-11-08 .
docker tag 7oi:2024-11-08 mikeryan56/7oi:2024-11-08
docker push mikeryan56/7oi:2024-11-08
docker tag 7oi:2024-11-08 mikeryan56/7oi:latest
docker push mikeryan56/7oi:latest
```