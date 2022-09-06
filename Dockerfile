FROM ubuntu

EXPOSE 5000

WORKDIR /workspace

COPY requirements.txt .

RUN apt update

RUN apt install -y python3.10
RUN apt install -y pi 
RUN apt install -y vim 
RUN apt install -y git 
RUN apt install -y jupyter
RUN apt install -y virtualenv

RUN pip install -r requirements.txt

CMD jupyter notebook





