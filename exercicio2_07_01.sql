# CRIAÇÃO DO BANCO DE DADOS
CREATE DATABASE db_ecommerce;

USE db_ecommerce;

# CRIAÇÃO DA TABELA PRODUTOS
CREATE TABLE tb_produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(120) NOT NULL,
    categoria VARCHAR(50) NOT NULL,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL
);

# INSERÇÃO DE DADOS 
INSERT INTO tb_produtos (nome_produto, categoria, preco, estoque) VALUES
('Notebook Lenovo Ideapad', 'Informática', 3500.00, 10),
('Smartphone Samsung Galaxy', 'Telefonia', 2200.00, 15),
('Fone de Ouvido Bluetooth', 'Acessórios', 299.90, 40),
('Monitor LG 24"', 'Informática', 899.90, 12),
('Teclado Mecânico Gamer', 'Periféricos', 650.00, 20),
('Mouse Óptico USB', 'Periféricos', 120.00, 50),
('Smart TV 50"', 'Eletrônicos', 2800.00, 8),
('Impressora Multifuncional', 'Informática', 480.00, 6);

# Mostrar todos os produtos
SELECT * FROM tb_produtos;

# PRODUTOS COM VALOR MAIOR QUE 500
SELECT *
FROM tb_produtos
WHERE preco > 500;


# PRODUTOS COM VALOR MENOR QUE 500
SELECT *
FROM tb_produtos
WHERE preco < 500;

# ATUALIZAÇÃO DE UM REGISTRO
UPDATE tb_produtos
SET preco = 520.00
WHERE id_produto = 8;

SELECT * FROM tb_produtos;