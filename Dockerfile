FROM ubuntu

RUN apt-get update
RUN apt-get install python3

# TODO: Do we really to copy to the root?? Can't we just run on the current path??
COPY . /docker-woof/

RUN pip3 install -r requirements.txt

RUN python3 /docker-woof/main.py