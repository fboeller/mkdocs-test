docker build -q -t mkdocs .
docker run -ti --rm -p 8000:8000 -v "$HOME/src/mkdocs-test:/usr/app" --user 1000:1000 --name mkdocs mkdocs mkdocs "$@"