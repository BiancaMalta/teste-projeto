# Usa a imagem oficial do Python
FROM python:3.8-slim

RUN apt-get update -y && \
    apt-get install -y python3-pip python3-dev

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY requirements.txt /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Copie o restante dos arquivos da aplicação
COPY . .

# Cria o diretório de uploads
RUN mkdir -p /app/uploads

# Aplica permissões totais à pasta de upload
RUN chmod -R 777 /app/uploads

# Expõe a porta 5000 do contêiner
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
