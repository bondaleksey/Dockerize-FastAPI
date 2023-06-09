FROM python:3.10.6-slim

WORKDIR /app

COPY ./requirements.txt /app/requirements.txt

RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY  . /app

EXPOSE 8000

CMD ["bash", "start.sh"]