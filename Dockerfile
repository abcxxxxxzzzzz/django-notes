From python:3.6.5-alpine


ADD ./project.tar.gz /data



WORKDIR /data/project



RUN pip install --upgrade pip && \
    pip install -r requirements.txt



EXPOSE 5000


CMD ["python","manage.py","runserver","0.0.0.0:5000"]
