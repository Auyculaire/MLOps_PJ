# Dockerfile to build a flask app
FROM python:3.8.1

WORKDIR /app 

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
EXPOSE 5000
COPY . .

CMD [ "C:/Users/timo-/AppData/Local/Microsoft/WindowsApps/python3.exe", "-m", "flask", "run"]
