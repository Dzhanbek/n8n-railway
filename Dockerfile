# Шаг 1: Указываем точную версию Node.js (LTS)
FROM node:20-alpine

# Шаг 2: Устанавливаем n8n глобально внутри контейнера
RUN npm install -g n8n

# Шаг 3: Создаем рабочий каталог для данных n8n
WORKDIR /data

# Шаг 4: Указываем команду по умолчанию для запуска n8n
# Эта команда будет выполнена, если в Railway не указана другая
CMD ["n8n"]
