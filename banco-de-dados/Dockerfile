# Use a imagem oficial do MySQL
FROM mysql:latest

# Copie o arquivo grant_permissions.sql para o diretório /docker-entrypoint-initdb.d/ no contêiner
COPY setup_database.sql /docker-entrypoint-initdb.d/

# Copie o script SQL de inicialização para o diretório de inicialização do MySQL
COPY init.sql /docker-entrypoint-initdb.d/

# Copie o arquivo de configuração personalizado para o diretório /etc/mysql/ no contêiner
COPY my.cnf /etc/mysql/my.cnf

# Exponha a porta do MySQL
EXPOSE 3306
