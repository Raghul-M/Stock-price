FROM python:3.6

EXPOSE 8501

WORKDIR /app

COPY requirements.txt  requirements.txt

RUN  pip install -r requirements.txt

COPY . ./


ENTRYPOINT ["streamlit", "run", "mainapp.py", "--server.port=8501", "--server.address=0.0.0.0"]
