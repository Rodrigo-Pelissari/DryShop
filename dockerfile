# Usa a imagem do Node.js
FROM node:18-alpine

# Define o diretório de trabalho
WORKDIR /usr/src/app

# Copia os arquivos necessários
COPY package*.json ./
RUN npm install

# Copia o restante dos arquivos
COPY . .

# Expõe a porta da aplicação
EXPOSE 3000

# Comando padrão ao iniciar o container
CMD ["npm", "run", "start:dev"]
