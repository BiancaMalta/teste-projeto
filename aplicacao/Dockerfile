# Usa a imagem oficial do Python
FROM python:3.8-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia os arquivos necessários, incluindo requirements.txt
COPY . .

# Instala as dependências do Python especificadas no arquivo requirements.txt
RUN pip install Flask==1.1.2 \
                Jinja2==2.11.3 \
                # Usa a imagem oficial do Python
FROM python:3.8-slim

# Define o diretório de trabalho no container
WORKDIR /app

# Copia o código Python para o diretório de trabalho no contêiner
COPY . .

# Instala as dependências do Python
RUN pip install Flask==1.1.2 \
                Jinja2==2.11.3 \
                MarkupSafe==1.1.1 \ # Adicione esta linha com a versão específica do MarkupSafe
                PyMySQL==1.0.2 \
                boto3==1.18.41

# Copia os arquivos HTML para o diretório de templates dentro do contêiner
COPY templates/upload.html /app/templates/upload.html
COPY templates/login.html /app/templates/login.html
COPY templates/reports.html /app/templates/reports.html

# Expõe a porta 5000 do contêiner
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]

                PyMySQL==1.0.2 \
                boto3==1.18.41

# Copia os arquivos HTML para o diretório de templates dentro do contêiner
COPY templates/upload.html /app/templates/upload.html
COPY templates/login.html /app/templates/login.html
COPY templates/reports.html /app/templates/reports.html

# Expõe a porta 5000 do contêiner
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
