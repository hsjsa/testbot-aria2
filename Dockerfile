FROM ubuntu:20.04
RUN apt-get -qq update && \
    apt-get -qq upgrade && \
    apt-get -qq install aria2 && \
    apt-get -qq install python3 -y && \
    apt-get -qq install python3-pip -y
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3","bot.py"]
