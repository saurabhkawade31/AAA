#From the application language
FROM python:3.12

#current working directory
WORKDIR /app

#copy the directory
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

#host the webside
EXPOSE 1010

ENTRYPOINT ["python","app.py"]
