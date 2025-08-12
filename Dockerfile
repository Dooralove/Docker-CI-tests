# 1. Базовый образ с Python
FROM python:3.11-slim

# 2. Директория внутри контейнера
WORKDIR /app

# 3. Копируем только файл зависимостей (чтобы кешировалось)
COPY requirements.txt .

# 4. Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# 5. Копируем весь проект
COPY . .

# 6. Запускаем Flask-приложение
CMD ["python", "app/main.py"]
