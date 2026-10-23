# Seven of I Static Site
Plain HTML site for SevenofI.com, served by nginx in a docker container.

The pages are in `site/`: edit `site/index.html` (the book) and `site/valerie/index.html` (about the author) directly.

### Build and Deploy Site

The version comes from `APP_VERSION` in the makefile.

```bash
# install bumpcalver
pip install --upgrade bumpcalver
# bump the calendar version (updates makefile and docker/dockerfile)
make bump
# optional: build and preview the container at http://localhost:5000
make docker-build docker-run
# log in to docker hub (only needed once per machine)
make docker-login
# build the container and push both the version tag and latest
make release
```
