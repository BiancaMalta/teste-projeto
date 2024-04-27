-- Concede permissões de leitura e escrita para o usuário 'ada' no banco de dados 'arquivos'
GRANT SELECT, INSERT ON arquivos.* TO 'ada'@'%';

-- Recarrega as permissões para que as alterações tenham efeito
FLUSH PRIVILEGES;
