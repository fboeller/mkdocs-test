FROM python:3.7

RUN pip install --upgrade pip
RUN pip install mkdocs mkdocs-material

WORKDIR /usr/app

VOLUME [ "/usr/app" ]

EXPOSE 8000

CMD [ "mkdocs", "serve", "-a", "0.0.0.0:8000" ]