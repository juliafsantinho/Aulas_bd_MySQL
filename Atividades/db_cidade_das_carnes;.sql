-- 	Criar banco de dados
CREATE DATABASE db_cidade_das_carnes;

-- Comando que seleciona o banco de dados
USE db_cidade_das_carnes;

-- Criar a tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categoria
INSERT INTO tb_categoria (categoria)
VALUES ("Bovino");

INSERT INTO tb_categoria (categoria)
VALUES ("Suino");

INSERT INTO tb_categoria (categoria)
VALUES ("Aves");

INSERT INTO tb_categoria (categoria)
VALUES ("Frutos do Mar");

INSERT INTO tb_categoria (categoria)
VALUES ("Peixes");

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
VALUES ("Pernil", 35.00, "Carlos Alberto Silva", "11 98569-9856", "RETIRADA", 2);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Panceta", 29.90, "Clara Silva", "11 98896-6985", "RETIRADA", 2);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Acém Moido", 36.00, "Beatriz Vargas", "11 98745-9652", "ENTREGA", 1);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Pacu", 19.00, "Suzana Teixeira", "11 98747-4426", "RETIRADA", 5);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Filé de Frango Temperado", 25.00, "Maria Cecíclia Gomes", "11 98896-5236", "ENTREGA", 3);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Lula", 45.00, "Anderson Menezes", "11 98963-4865", "RETIRADA",4);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Contra filé", 45.00, "Maria Aparecida Marinheiro", "11 98785-5624", "ENTREGA", 1);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Coração de Frango", 29.00, "Isabella Sampaio", "11 98785-7412", "RETIRADA", 3);

/* SESSÃO SELECT */
-- Lista todos os dados da tabela tb_produto
SELECT * FROM tb_produto;

-- Produtos com o valor maior que 50.00
SELECT * FROM tb_produto WHERE valor_produto > 50.00;

-- Produtos com valor entre 3.00 e 60.00
SELECT * FROM tb_produto WHERE valor_produto BETWEEN 3.00 AND 60.00;

-- Pesquisa os produtos com a letra "C" no nome.
SELECT * FROM tb_produto WHERE produto LIKE "%c%";

/* CONSULTAS DO TIPO JOIN -> JUNTAR DUAS TABELAS*/
-- INNER JOIN -> INTERSECÇÃO, SÓ O MEIO ENTRE AS TABELAS PRODUTOS E CATEGORIAS
SELECT produto, valor_produto, cliente_nome, tb_categoria.categoria
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

-- FILTRANDO COM WHERE DAS CONSULTAS TIPO JOIN
SELECT produto, valor_produto, cliente_nome, tb_categoria.categoria
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = "Bovino";