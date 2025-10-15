FROM node:24-alpine

WORKDIR /app

# Copier les fichiers de configuration
COPY package*.json ./

RUN npm ci

# Copier le code source
COPY . .

EXPOSE 4200

CMD ["npm", "start", "--", "--host", "0.0.0.0", "--poll", "1000"]