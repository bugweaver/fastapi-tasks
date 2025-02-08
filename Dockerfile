FROM python:3-12-slim

COPY .. /app

RUN pip install -r requirements.txt

CMD ["uvicorn", "main:app", "-host", "0.0.0.0", "--post", "80"]