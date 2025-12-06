FROM python:3.11-slim

WORKDIR /app

COPY project.html .

RUN pip install http.server

EXPOSE 8000

CMD ["python", "-m", "http.server", "8000", "--directory", "/app"]
