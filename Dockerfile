FROM ubuntu:latest
RUN apt update
RUN apt install python3 -y
COPY . /app
WORKDIR /app
COPY hello.py ./
RUN pip3 install -r requirements.txt
EXPOSE 5000
CMD ["python3" "./hello.py" ]
