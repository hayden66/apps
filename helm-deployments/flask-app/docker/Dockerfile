FROM python:3-alpine

WORKDIR /usr/source/

COPY . .

RUN pip install  --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && adduser --disabled-password --home /home/flask flask

CMD ["python","/usr/source/app.py"]

WORKDIR /home/flask/

USER flask