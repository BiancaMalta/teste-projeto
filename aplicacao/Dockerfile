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

# Instala as dependências do Python
# Usa cache para evitar reinstalação de dependências não modificadas
# e monta o arquivo requirements.txt para instalar as dependências listadas
RUN --mount=type=cache,target=/root/.cache/pip \
    --mount=type=bind,source=requirements.txt,target=requirements.txt \
    python -m pip install -r requirements.txt

# Troca para o usuário não privilegiado antes de copiar o código do aplicativo
# Isso é uma medida de segurança para reduzir os riscos de execução com privilégios elevados
USER appuser

# Copia o código Python e os templates HTML para o diretório de trabalho no contêiner
COPY . .

# Cria um diretório para os templates HTML dentro do contêiner
RUN mkdir -p /app/templates

# Copia os arquivos HTML para o diretório de templates dentro do contêiner
COPY templates/upload.html /app/templates/upload.html
COPY templates/login.html /app/templates/login.html
COPY templates/reports.html /app/templates/reports.html

# Expõe a porta 5000 do contêiner
# Isso permite que o tráfego entre no contêiner através da porta 5000
EXPOSE 5000

# Define o comando padrão para iniciar o aplicativo Flask
CMD ["python", "app.py"]
