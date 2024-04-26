# Define a versão do Python como argumento de construção
ARG PYTHON_VERSION=3.8.12

# Usa a imagem oficial do Python com a versão especificada
FROM python:${PYTHON_VERSION}-slim as base

# Define variáveis de ambiente para o Python
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

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

# Copia os arquivos necessários para o diretório de trabalho no contêiner
COPY . .

# Instala as dependências do Python
RUN --mount=type=cache,target=/root/.cache/pip \
    python -m pip install --upgrade pip && \
    python -m pip install -r requirements.txt

# Cria um diretório para os templates HTML dentro do contêiner
RUN mkdir -p /app/templates

# Copia os arquivos HTML para o diretório de templates dentro do contêiner
COPY templates/upload.html /app/templates/upload.html
COPY templates/login.html /app/templates/login.html
COPY templates/reports.html /app/templates/reports.html

# Expõe a porta 5000 do contêiner
EXPOSE 5000

# Define o usuário não privilegiado como o usuário padrão para execução do aplicativo
USER appuser

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
