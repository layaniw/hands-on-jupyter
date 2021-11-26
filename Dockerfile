FROM jupyter/scipy--notebook
WORKDIR /home/jovyan/repo
USER root
RUN apt update && apt -y upgrade && apt install git
USER jovyan
COPY requirement.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 8888