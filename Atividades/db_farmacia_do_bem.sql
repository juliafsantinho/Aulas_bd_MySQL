-- 	Criar banco de dados
CREATE DATABASE db_farmacia_do_bem;

-- Comando que seleciona o banco de dados
USE db_farmacia_do_bem;

-- Criar a tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categoria
INSERT INTO tb_categoria (categoria)
VALUES ("Medicamentos");

INSERT INTO tb_categoria (categoria)
VALUES ("Medicamentos c/ prescrição médica");

INSERT INTO tb_categoria (categoria)
VALUES ("Dermocosméticos");

INSERT INTO tb_categoria (categoria)
VALUES ("Bebidas");

INSERT INTO tb_categoria (categoria)
VALUES ("Cosméticos");

-- Listar todos os dados da tabela tb_categoria
SELECT * FROM tb_categoria;

-- Criar a tabela tb_produto
CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
produto varchar(255) NOT NULL,
valor_produto decimal (8,2) NOT NULL, 
cliente_nome varchar(255) NOT NULL,
cliente_telefone varchar(255) NOT NULL,
retirada_entrega varchar(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Insere dados na tabela tb_produto
INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Levoid 50", 13.00, "Carlos Alberto Silva", "11 98569-9856", "RETIRADA", 1);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Rimel Maybelline", 25.00, "Clara Silva", "11 98896-6985", "RETIRADA", 5);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Amoxilina", 58.00, "Beatriz Vargas", "11 98745-9652", "ENTREGA", 2);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Engov After", 19.00, "Suzana Teixeira", "11 98747-4426", "RETIRADA", 4);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Hidratante Corporal Vichy", 98.00, "Maria Cecíclia Gomes", "11 98896-5236", "ENTREGA", 3);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Neosoro", 6.00, "Anderson Menezes", "11 98963-4865", "RETIRADA",1);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Rifocina", 55.00, "Maria Aparecida Marinheiro", "11 98785-5624", "ENTREGA", 2);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Absorvente c/ Abas Sempre Livre", 12.30, "Isabella Sampaio", "11 98785-7412", "RETIRADA", 5);

/* SESSÃO SELECT */
-- Lista todos os dados da tabela tb_produto
SELECT * FROM tb_produto;

-- Produtos com o valor maior que 50.00
SELECT * FROM tb_produto WHERE valor_produto > 50.00;

-- Produtos com valor entre 3.00 e 60.00
SELECT * FROM tb_produto WHERE valor_produto BETWEEN 3.00 AND 60.00;

-- Pesquisa os produtos com a letra "B" no nome.
SELECT * FROM tb_produto WHERE produto LIKE "%b%";

/* CONSULTAS DO TIPO JOIN -> JUNTAR DUAS TABELAS*/
-- INNER JOIN -> INTERSECÇÃO, SÓ O MEIO ENTRE AS TABELAS PRODUTOS E CATEGORIAS
SELECT produto, valor_produto, cliente_nome, tb_categoria.categoria
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

-- FILTRANDO COM WHERE DAS CONSULTAS TIPO JOIN
SELECT produto, valor_produto, cliente_nome, tb_categoria.categoria
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = "Medicamentos c/ prescrição médica";
