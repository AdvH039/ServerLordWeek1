FROM python:3.13

WORKDIR /app

RUN pip install flask

COPY . .

CMD ["python3","main.py"]