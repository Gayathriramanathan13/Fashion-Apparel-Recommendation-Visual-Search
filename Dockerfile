FROM python:3.7-alpine
WORKDIR /docker-flask-test
COPY . /docker-flask-test
RUN pip install -r requirements.txt
CMD ["python","flask_sample.py"]