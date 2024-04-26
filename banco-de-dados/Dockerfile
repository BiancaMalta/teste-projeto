# Use a imagem oficial do MySQL
FROM mysql:latest

# Copia o arquivo grant_permissions.sql para o diretório /docker-entrypoint-initdb.d/ no contêiner
COPY setup_database.sql /docker-entrypoint-initdb.d/

# Defina as variáveis de ambiente para configurar o banco de dados
ENV MYSQL_ROOT_PASSWORD=senha_root \
    MYSQL_DATABASE=arquivos \
    MYSQL_USER=ada \
    MYSQL_PASSWORD=123

# Copie o script SQL de inicialização para o diretório de inicialização do MySQL
COPY init.sql /docker-entrypoint-initdb.d/

# Exponha a porta do MySQL
EXPOSE 3306
