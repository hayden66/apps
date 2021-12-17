FROM python:3-alpine

WORKDIR /usr/src/app

COPY . .

RUN pip install  --upgrade pip \
    && pip install --no-cache-dir -r requirements.txt \
    && adduser --disabled-password --home /home/temp temp

CMD ["python","/usr/src/app/temp.py"]

WORKDIR /home/temp/

USER temp