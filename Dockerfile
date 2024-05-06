FROM python:3.12-alpine as builder

WORKDIR /app

COPY requirements.txt .

RUN python -m venv /venv 

ENV PATH="/venv/bin:$PATH"

RUN pip install --no-cache-dir -r requirements.txt

COPY . . 

FROM python:3.12-alpine

WORKDIR /app

COPY --from=builder /venv /venv

ENV PATH="/venv/bin:$PATH"

COPY --from=builder /app .


EXPOSE 8000

ENTRYPOINT ["python", "todoApplication/manage.py"]

CMD ["runserver", "0.0.0.0:8000"]