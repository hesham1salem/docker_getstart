FROM ubuntu:22.04
RUN apt-get update && apt-get install -y python3  pip
RUN pip install "fastapi[standard]"
WORKDIR /app
COPY main.py app/main.py
COPY myentrypoint.sh myentrypoint.sh
#CMD [ "tail", "-f", "/dev/null" ] 
