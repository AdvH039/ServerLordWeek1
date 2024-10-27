FROM python:3.13

WORKDIR /app

RUN pip install flask

COPY . .

EXPOSE 8080

CMD ["python3","main.py"]