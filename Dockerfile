FROM python:3.8.6-buster

COPY fast.py /fast.py
COPY requirements.txt /requirements.txt
COPY rain-prediction-machine-3c922b5e88ba.json /rain-prediction-machine-3c922b5e88ba.json

ENV GOOGLE_APPLICATION_CREDENTIALS rain-prediction-machine-3c922b5e88ba.json

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

CMD uvicorn fast:app --host 0.0.0.0 --port $PORT

