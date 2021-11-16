From python:3.6.5-alpine


ADD ./project.tar.gz /data



WORKDIR /data/project




RUN apk --no-cache update && \
    apk add --no-cache gcc python3-dev linux-headers libc-dev &&\
    pip install --upgrade pip && \
    pip install -r requirements.txt



EXPOSE 5000


CMD ["uwsgi","--ini","uwsgi.ini"]
