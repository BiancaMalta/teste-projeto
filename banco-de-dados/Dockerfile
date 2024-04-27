# Usa a imagem oficial do MySQL
FROM mysql:latest

# Copia o arquivo de configuração personalizado my.cnf para o diretório de configuração do MySQL
COPY my.cnf /etc/mysql/my.cnf

# Reinicia o servidor MySQL para aplicar as configurações


# Copia o script SQL para o diretório docker-entrypoint-initdb.d para que ele seja executado automaticamente na inicialização do contêiner MySQL
COPY setup_database.sql /docker-entrypoint-initdb.d/

# Define variáveis de ambiente para configurar o usuário e a senha do MySQL
ENV MYSQL_DATABASE=arquivos
ENV MYSQL_USER=ada
ENV MYSQL_PASSWORD=123

# Define a porta em que o MySQL estará acessível (opcional)
EXPOSE 3306
