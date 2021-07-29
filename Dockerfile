FROM python:alpine3.7

COPY requirements.txt .

RUN pip install -r requirements.txt && \
    rm requirements.txt

COPY app.py .

EXPOSE 5000

CMD ["python", "app.py"]