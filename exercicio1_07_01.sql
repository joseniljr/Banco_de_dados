# Criar o Banco de Dados

CREATE DATABASE db_rh;

USE db_rh;

# Criar a tabela de colaboradores
CREATE TABLE tb_colaboradores (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cargo VARCHAR(255) NOT NULL,
    setor VARCHAR(255) NOT NULL,
    salario DECIMAL(6,2) NOT NULL,
    data_admissao DATE NOT NULL
);

# Inserir dados na tabela
INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Ana Silva", "Analista de RH", "Recursos Humanos", 2500.00, "2021-03-10");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Carlos Souza", "Assistente Administrativo", "Administração", 1800.00, "2022-06-15");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Mariana Costa", "Desenvolvedora Júnior", "Tecnologia", 3000.00, "2023-01-20");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("João Pereira", "Auxiliar de Serviços Gerais", "Operacional", 1500.00, "2020-09-05");

INSERT INTO tb_colaboradores (nome, cargo, setor, salario, data_admissao)
VALUES ("Fernanda Lima", "Analista Financeira", "Financeiro", 2800.00, "2021-11-30");

# Colaboradores com salário MAIOR que 2000
SELECT * FROM tb_colaboradores WHERE salario > 2000;

# Colaboradores com salário MENOR que 2000
SELECT * FROM tb_colaboradores WHERE salario < 2000;

# Atualizar um registro da tabela
UPDATE tb_colaboradores SET salario = 2200.00 WHERE id = 2;

SELECT * FROM tb_colaboradores;




