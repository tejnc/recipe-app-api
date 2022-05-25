# creating a light docker image using python alpine
FROM python:3.7-alpine

ENV PYTHONUNBUFFERED 1 


# copying requirements to the docker image
COPY ./requirements.txt /requirements.txt

RUN pip install -r requirements.txt 



# creating a new folder 
RUN mkdir /app 
WORKDIR /app

COPY ./app /app 

# copying docker-compose file for ci/cd in github actions
COPY ./docker-compose-yml /docker-compose.yml


# for security purposes
RUN adduser -D user
USER user 