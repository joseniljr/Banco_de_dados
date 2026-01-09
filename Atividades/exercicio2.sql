CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

# Criar a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL
);

# Criar a tabela de pizzas
CREATE TABLE tb_pizzas (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    disponibilidade BOOLEAN NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

# Inserir dados na tabela tb_categorias (5 registros)
INSERT INTO tb_categorias (nome_categoria, descricao)
VALUES
("Tradicional", "Pizzas salgadas tradicionais"),
("Especial", "Pizzas com ingredientes especiais"),
("Doce", "Pizzas doces"),
("Vegetariana", "Pizzas sem carne"),
("Premium", "Pizzas gourmet");

# Inserir dados na tabela tb_pizzas (8 registros)
INSERT INTO tb_pizzas (nome, tamanho, valor, disponibilidade, categoria_id)
VALUES
("Mussarela", "Grande", 39.90, TRUE, 1),
("Calabresa", "Grande", 44.90, TRUE, 1),
("Frango com Catupiry", "Grande", 49.90, TRUE, 2),
("Quatro Queijos", "Média", 46.90, TRUE, 2),
("Margherita", "Média", 47.50, TRUE, 4),
("Chocolate", "Média", 54.90, TRUE, 3),
("Morango com Chocolate", "Grande", 62.90, TRUE, 3),
("Parma com Rúcula", "Grande", 89.90, TRUE, 5);

# Pizzas com valor MAIOR que 45
SELECT * FROM tb_pizzas WHERE valor > 45.00;

# Pizzas com valor ENTRE 50 e 100
SELECT * FROM tb_pizzas WHERE valor BETWEEN 50.00 AND 100.00;

# Pizzas que possuem a letra M no nome
SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

# INNER JOIN entre pizzas e categorias
SELECT 
    tb_pizzas.nome,
    tb_pizzas.tamanho,
    tb_pizzas.valor,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id;

# INNER JOIN trazendo apenas pizzas da categoria Doce
SELECT 
    tb_pizzas.nome,
    tb_pizzas.tamanho,
    tb_pizzas.valor,
    tb_categorias.nome_categoria
FROM tb_pizzas
INNER JOIN tb_categorias
ON tb_pizzas.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Doce";

