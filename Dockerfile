FROM ubuntu:20.04
RUN apt-get -qq update && \
    apt-get -qq upgrade && \
    apt-get -qq install aria2
RUN pip3 install -r requirements.txt
COPY . .
CMD ["python3","bot.py"]
