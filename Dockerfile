From python:3.6.5-alpine


ADD ./project.tar.gz /data



WORKDIR /data/project



RUN pip install --upgrade pip && \
    apk update && \
    apk add gcc python3-dev linux-headers libc-dev
 

RUN pip install -r requirements.txt



EXPOSE 5000


CMD ["uwsgi","--ini","uwsgi.ini"]
