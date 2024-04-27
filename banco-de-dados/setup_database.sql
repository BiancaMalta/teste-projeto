-- Concede permissões de leitura e escrita para o usuário 'ada' no banco de dados 'arquivos'
GRANT ALL PRIVILEGES ON *.* TO 'ada'@'%' WITH GRANT OPTION;
-- Recarrega as permissões para que as alterações tenham efeito
FLUSH PRIVILEGES;
