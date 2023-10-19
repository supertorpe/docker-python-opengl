FROM python:3.10-slim

RUN apt update && apt -y install freeglut3-dev sudo &&\
    pip install PyOpenGL notebook &&\
    mkdir -p /opt/notebooks
COPY startup.sh /app/startup.sh
RUN chmod -R 777 /app /opt/notebooks
WORKDIR /app

ENTRYPOINT ["/app/startup.sh"]
