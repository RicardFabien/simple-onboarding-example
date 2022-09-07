FROM ubuntu

ENV TINI_VERSION v0.6.0

EXPOSE 8888

WORKDIR /workspace

COPY requirements.txt .

RUN apt update

RUN apt install -y python3
RUN apt install -y python3-pip python3-dev python3-venv
RUN apt install -y pip
RUN apt install -y vim 
RUN apt install -y git 
RUN apt install -y virtualenv 
#RUN apt install -y jupyter

#RUN mkdir notebook
#RUN cd notebook

RUN python3 -m venv jupyterenv
#RUN jupyterenv/bin/activate
RUN pip install notebook

RUN pip install -r requirements.txt

CMD ["sh", "-c", "jupyter notebook --allow-root --ip=0.0.0.0"]





