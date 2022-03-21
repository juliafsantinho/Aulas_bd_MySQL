-- 	Criar banco de dados
CREATE DATABASE db_construindo_a_nossa_vida;

-- Comando que seleciona o banco de dados
USE db_construindo_a_nossa_vida;

-- Criar a tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categoria
INSERT INTO tb_categoria (categoria)
VALUES ("Naturais");

INSERT INTO tb_categoria (categoria)
VALUES ("Artificiais");

INSERT INTO tb_categoria (categoria)
VALUES ("Combinados");

INSERT INTO tb_categoria (categoria)
VALUES ("De vedação");

INSERT INTO tb_categoria (categoria)
VALUES ("Proteção");

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
VALUES ("Tinta Coral Cor 0069 900ml", 35.00, "Carlos Alberto Silva", "11 98569-9856", "RETIRADA", 5);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Tijolo de vedação", 150.00, "Clara Silva", "11 98896-6985", "ENTREGA", 4);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Vidro", 90.00, "Beatriz Vargas", "11 98745-9652", "ENTREGA", 4);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Concreto", 289.00, "Suzana Teixeira", "11 98747-4426", "ENTREGA", 3);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Telha", 55.00, "Maria Cecíclia Gomes", "11 98896-5236", "ENTREGA", 2);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Argamassa", 45.00, "Anderson Menezes", "11 98963-4865", "RETIRADA", 3);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Areia", 100.00, "Maria Aparecida Marinheiro", "11 98785-5624", "ENTREGA", 1);

INSERT INTO tb_produto (produto, valor_produto, cliente_nome, cliente_telefone, retirada_entrega, categoria_id)
VALUES ("Madeira", 29.00, "Isabella Sampaio", "11 98785-7412", "RETIRADA", 1);

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
WHERE tb_categoria.categoria = "Naturais";

