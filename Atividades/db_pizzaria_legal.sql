-- 	Criar banco de dados
CREATE DATABASE db_pizzaria_legal;

-- Comando que seleciona o banco de dados
USE db_pizzaria_legal;

-- Criar a tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
entrega varchar(255) NOT NULL,
retirada varchar(255) NOT NULL,
taxa_entrega varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categoria
INSERT INTO tb_categoria (entrega, retirada, taxa_entrega)
VALUES ("Entrega, zona leste", "Não", "R$6,00");

INSERT INTO tb_categoria (entrega, retirada, taxa_entrega)
VALUES ("Não", "Retirada no local", "R$0,00");

INSERT INTO tb_categoria (entrega, retirada, taxa_entrega)
VALUES ("Entrega, zona oeste", "Não", "R$8,00");

INSERT INTO tb_categoria (entrega, retirada, taxa_entrega)
VALUES ("Entrega, zona sul", "Não", "R$8,00");

INSERT INTO tb_categoria (entrega, retirada, taxa_entrega)
VALUES ("Entrega, zona norte", "Não", "R$8,00");

-- Listar todos os dados da tabela tb_categoria
SELECT * FROM tb_categoria;

-- Criar a tabela tb_pizza
CREATE TABLE tb_pizza(
id BIGINT AUTO_INCREMENT,
sabor_pizza varchar(255) NOT NULL,
valor_pizza decimal (8,2) NOT NULL, 
cliente_nome varchar(255) NOT NULL,
cliente_telefone varchar(255) NOT NULL,
preferencias varchar(255) NOT NULL,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Insere dados na tabela tb_pizza
INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Napolitana", 30.00, "Carlos Alberto Silva", "11 98569-9856", "Sem cebola", 3);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Calabresa", 33.20, "Andrea Rosa", "11 98540-9953", "Sem preferencia", 2);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Mussarela", 30.00, "Lucas Sanches", "11 98635-4253", "Sem azeitona", 4);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Frango com Catupiry", 40.00, "Silvana Rocha", "11 98632-6586", "Sem preferencia", 1);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Chocolate", 41.20, "Clara Bertoco", "11 98563-5543", "Borda de Brigadeiro", 1);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Brocolis com Bacon", 45.00, "Anderson Brites", "11 98756-5262", "Sem preferencia", 5);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("Marguerita", 35.00, "Matheus Henrique", "11 98896-5624", "Sem preferencia", 2);

INSERT INTO tb_pizza (sabor_pizza, valor_pizza, cliente_nome, cliente_telefone, preferencias, categoria_id)
VALUES ("4 Queijos", 45.00, "Humberto Marques", "11 98859-9653", "Borda recheada de Catupiry", 4);


/* SESSÃO SELECT */
-- Lista todos os dados da tabela tb_pizza
SELECT * FROM tb_pizza;

-- Produtos com o valor maior ou igual do que 45.00
SELECT * FROM tb_pizza WHERE valor_pizza >= 45.00; 

-- Produtos com o valor entre 29 e 60 reais
SELECT * FROM tb_pizza WHERE valor_pizza BETWEEN 29.00 AND 60.00;

-- Pesquisa os produtos com a letra "C" no nome.
SELECT * FROM tb_pizza WHERE sabor_pizza LIKE "%c%";

/* CONSULTAS DO TIPO JOIN -> JUNTAR DUAS TABELAS*/
-- INNER JOIN -> INTERSECÇÃO, SÓ O MEIO ENTRE AS TABELAS PIZZA E CATEGORIAS
SELECT sabor_pizza, valor_pizza, cliente_nome, tb_categoria.entrega
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id;

-- FILTRANDO COM WHERE DAS CONSULTAS TIPO JOIN
SELECT sabor_pizza, valor_pizza, cliente_nome, tb_categoria.entrega
FROM tb_pizza INNER JOIN tb_categoria
ON tb_pizza.categoria_id = tb_categoria.id
WHERE tb_categoria.entrega = "Entrega, zona leste";

