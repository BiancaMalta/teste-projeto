-- Cria o usuário 'ada' se ele ainda não existir
CREATE USER IF NOT EXISTS 'ada'@'%';

-- Concede todos os privilégios para o usuário 'ada' em todas as bases de dados e tabelas
GRANT ALL PRIVILEGES ON *.* TO 'ada'@'%' WITH GRANT OPTION;

-- Atualiza as permissões
FLUSH PRIVILEGES;
