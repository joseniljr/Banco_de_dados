# CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE db_registro_escola;

USE db_registro_escola;

# CRIAÇÃO DA TABELA ESTUDANTES 
CREATE TABLE tb_estudantes (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT NOT NULL,
    turma VARCHAR(20) NOT NULL,
    nota DECIMAL(4,2) NOT NULL,
    matricula VARCHAR(20) NOT NULL
);

# INSERÇÃO DE DADOS (8 REGISTROS)
INSERT INTO tb_estudantes (nome, idade, turma, nota, matricula) VALUES
('Ana Souza', 15, '9A', 8.5, 'Ativo'),
('Carlos Lima', 16, '9B', 6.8, 'Ativo'),
('Beatriz Santos', 14, '8A', 9.2, 'Ativo'),
('Diego Pereira', 15, '9A', 5.9, 'Ativo'),
('Fernanda Rocha', 17, '1EM', 7.4, 'Ativo'),
('Lucas Oliveira', 16, '9C', 6.5, 'Ativo'),
('Mariana Costa', 15, '9B', 8.0, 'Ativo'),
('João Alves', 14, '8B', 7.0, 'Ativo');

# Todos os estudantes
SELECT * FROM tb_estudantes;

# ESTUDANTES COM NOTA MAIOR QUE 7.0
SELECT * 
FROM tb_estudantes
WHERE nota > 7.0;

# ESTUDANTES COM NOTA MENOR QUE 7.0
SELECT * 
FROM tb_estudantes
WHERE nota < 7.0;

# ATUALIZAÇÃO DE UM REGISTRO
UPDATE tb_estudantes
SET nota = 7.5
WHERE id = 2;

SELECT * FROM tb_estudantes;


