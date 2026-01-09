CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

# Criar a tabela de categorias
CREATE TABLE tb_categorias (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome_categoria VARCHAR(255) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    setor VARCHAR(100) NOT NULL
);

# Criar a tabela de produtos
CREATE TABLE tb_produtos (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    marca VARCHAR(100) NOT NULL,
    valor DECIMAL(6,2) NOT NULL,
    estoque INT NOT NULL,
    categoria_id BIGINT,
    FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);

# Inserir dados na tabela tb_categorias (5 registros)
INSERT INTO tb_categorias (nome_categoria, descricao, setor)
VALUES
("Medicamentos", "Remédios controlados e não controlados", "Saúde"),
("Cosméticos", "Produtos de beleza e cuidados pessoais", "Beleza"),
("Higiene", "Produtos de higiene pessoal", "Cuidados"),
("Infantil", "Produtos para bebês e crianças", "Família"),
("Suplementos", "Vitaminas e suplementos alimentares", "Nutrição");

# Inserir dados na tabela tb_produtos (8 registros)
INSERT INTO tb_produtos (nome, marca, valor, estoque, categoria_id)
VALUES
("Paracetamol", "Medley", 12.90, 100, 1),
("Dipirona", "Neo Química", 8.50, 200, 1),
("Creme Dental", "Colgate", 6.90, 150, 3),
("Shampoo Anticaspa", "Clear", 24.90, 80, 3),
("Protetor Solar", "Nivea", 59.90, 60, 2),
("Creme Hidratante", "Nivea", 42.90, 90, 2),
("Vitamina C", "Centrum", 65.90, 70, 5),
("Pomada Infantil", "Hipoglós", 32.90, 50, 4);

# Produtos com valor MAIOR que 50
SELECT * FROM tb_produtos WHERE valor > 50.00;

# Produtos com valor ENTRE 5 e 60
SELECT * FROM tb_produtos WHERE valor BETWEEN 5.00 AND 60.00;

# Produtos que possuem a letra C no nome
SELECT * FROM tb_produtos WHERE nome LIKE "%C%";

# INNER JOIN entre produtos e categorias
SELECT 
    tb_produtos.nome,
    tb_produtos.marca,
    tb_produtos.valor,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id;

# INNER JOIN trazendo apenas produtos da categoria Cosméticos
SELECT 
    tb_produtos.nome,
    tb_produtos.marca,
    tb_produtos.valor,
    tb_categorias.nome_categoria
FROM tb_produtos
INNER JOIN tb_categorias
ON tb_produtos.categoria_id = tb_categorias.id
WHERE tb_categorias.nome_categoria = "Cosméticos";


