# Seven of I Static Site
Hugo site for SevenofI.com

### Build and Deploy Site

Build Hugo site and then build and push the docker container.

```bash

# install bumpcalver
pip install --upgrade bumpcalver
# build the site
hugo
# bump the calendar version
make bump
# build the docker container
docker build --no-cache -t 7oi:2024-11-08 .
# tag the docker container
docker tag 7oi:2024-11-08 mikeryan56/7oi:2024-11-08
# push the docker container
docker push mikeryan56/7oi:2024-11-08
# tag the docker container as latest
docker tag 7oi:2024-11-08 mikeryan56/7oi:latest
# push the docker container as latest
docker push mikeryan56/7oi:latest

```