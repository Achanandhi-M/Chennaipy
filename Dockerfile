FROM python:3.12-bullseye
WORKDIR /app
COPY requirements.txt /app/
RUN pip install -r requirements.txt
COPY . /app/
EXPOSE 8000
ENTRYPOINT ["python", "todoApplication/manage.py"]
CMD ["runserver", "0.0.0.0:8000"]