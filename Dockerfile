FROM ubuntu:18.10
RUN apt-get update
RUN apt-get install -y python3 python3-dev python3-pip
RUN apt-get install python3-pymysql
COPY ./ ./app
WORKDIR ./app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["app.py"]

