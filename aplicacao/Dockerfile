# Usa a imagem oficial do Python
FROM python:3.8-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o arquivo requirements.txt para o diretório de trabalho
COPY . .

# Instala as dependências do Python
RUN pip install Flask Werkzeug Jinja2 MarkupSafe PyMySQL boto3 python-dotenv

# Cria o diretório de uploads
RUN mkdir -p /app/uploads

# Aplica permissões totais à pasta de upload
RUN chmod -R 777 /app/uploads

# Expõe a porta 5000 do contêiner
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
