FROM python:3.11-slim-buster
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt requirements.txt
RUN pip install --upgrade pip && pip install -r requirements.txt
COPY . /app/ 
CMD ["python", "notification_tg_bot.py"]
