FROM python:3.8
LABEL maintainer="Udacity"

WORKDIR /app

COPY . app.py /app/

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

# command to run on container start
CMD [ "python", "app.py" ]
