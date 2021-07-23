FROM python:3.7-stretch
WORKDIR /docker_data
COPY docker_data/ /docker_data/
COPY requirements.txt requirements.txt
COPY app.py app.py
RUN ls -la /docker_data/*
RUN pip install --upgrade pip
RUN pip install faiss-cpu --no-cache
RUN apt-get update
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]