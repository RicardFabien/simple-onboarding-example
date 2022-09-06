FROM ubuntu

EXPOSE 5000

WORKDIR /workspace

COPY requirements.txt .

RUN apt update

RUN apt install -y python3.10
RUN apt install -y pi 
RUN apt install -y vim 
RUN apt install -y git 
RUN apt install -y virtualenv
RUN apt install -y jupyter

RUN mkdir notebook
RUN cd notebook
RUN virtualenv jupyterenv
RUN source jupyterenv/bin/activate
RUN pip install jupyter

RUN pip install -r requirements.txt

CMD jupyter notebook





