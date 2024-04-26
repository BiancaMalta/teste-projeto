# Define a versão do Python como argumento de construção
ARG PYTHON_VERSION=3.8.12

# Usa a imagem oficial do Python com a versão especificada
FROM python:${PYTHON_VERSION}-slim as base

# Define variáveis de ambiente para o Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Instala as dependências necessárias, incluindo o Jinja2
RUN apt-get update && apt-get install -y \
    build-essential \
    libssl-dev \
    libffi-dev \
    python3-dev \
    && rm -rf /var/lib/apt/lists/* \
    && pip install --no-cache-dir --upgrade pip setuptools wheel \
    && pip install --no-cache-dir Flask Jinja2 pymysql boto3

# Define o diretório de trabalho no container
WORKDIR /app

# Adiciona um usuário não privilegiado para execução do aplicativo
# Isso é uma medida de segurança recomendada para evitar execução do aplicativo com privilégios elevados
ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser

# Copia o código Python e os templates HTML para o diretório de trabalho no contêiner
COPY . .

# Cria um diretório para os templates HTML dentro do contêiner
RUN mkdir -p /app/templates

# Copia os arquivos HTML para o diretório de templates dentro do contêiner
COPY templates/upload.html /app/templates/upload.html
COPY templates/login.html /app/templates/login.html
COPY templates/reports.html /app/templates/reports.html

# Troca para o usuário não privilegiado antes de copiar o código do aplicativo
# Isso é uma medida de segurança para reduzir os riscos de execução com privilégios elevados
USER appuser

# Expõe a porta 5000 do contêiner
# Isso permite que o tráfego entre no contêiner através da porta 5000
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
