-- Cria o banco de dados se não existir
CREATE DATABASE IF NOT EXISTS arquivos;

-- Usa o banco de dados
USE arquivos;

-- Cria a tabela de relatórios
CREATE TABLE IF NOT EXISTS Report (
    id INT AUTO_INCREMENT PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    username VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insere alguns dados de exemplo na tabela de relatórios
INSERT INTO Report (filename, username) VALUES ('relatorio1.pdf', 'admin');
INSERT INTO Report (filename, username) VALUES ('relatorio2.pdf', 'usuario1');
INSERT INTO Report (filename, username) VALUES ('relatorio3.pdf', 'usuario2');

-- Concede permissões ao usuário 'ada' para acessar o banco de dados 'arquivos' localmente
GRANT ALL PRIVILEGES ON arquivos.* TO 'ada'@'localhost';
FLUSH PRIVILEGES;
