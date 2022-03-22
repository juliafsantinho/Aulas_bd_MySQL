-- 	Criar banco de dados
CREATE DATABASE db_cursoDaMinhaVida;

-- Comando que seleciona o banco de dados
USE db_cursoDaMinhaVida;

-- Criar a tabela tb_categoria
CREATE TABLE tb_categoria(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_categoria
INSERT INTO tb_categoria (categoria)
VALUES ("Tecnologia");

INSERT INTO tb_categoria (categoria)
VALUES ("Saúde e Bem Estar");

INSERT INTO tb_categoria (categoria)
VALUES ("Administração");

INSERT INTO tb_categoria (categoria)
VALUES ("Negócios");

INSERT INTO tb_categoria (categoria)
VALUES ("Finanças");

-- Listar todos os dados da tabela tb_categoria
SELECT * FROM tb_categoria;

-- Criar a tabela tb_produto
CREATE TABLE tb_produto(
id BIGINT AUTO_INCREMENT,
curso varchar(255) NOT NULL,
valor_curso decimal (8,2) NOT NULL, 
cliente_nome varchar(255) NOT NULL,
cliente_telefone varchar(255) NOT NULL,
data_compra date,
categoria_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria(id)
);

-- Insere dados na tabela tb_produto
INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Fundamento dos negócios", 65.00, "Carlos Alberto Silva", "11 98569-9856", "2022/05/20", 4);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Contabilidade", 150.00, "Clara Silva", "11 98896-6985", "2021/09/05", 5);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Segurança em Cibernética", 89.00, "Beatriz Vargas", "11 98745-9652", "2022/03/02", 1);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Nutrição", 139.00, "Suzana Teixeira", "11 98747-4426", "2021/05/20", 2);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Liderança", 69.90, "Anderson Menezes", "11 98963-4865", "2021/11/06", 3);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Fundamentos do Desenvolvimento de Games", 190.00, "Maria Cecíclia Gomes", "11 98896-5236", "2021/11/26", 1);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Gestão de Projetos", 100.00, "Maria Aparecida Marinheiro", "11 98785-5624", "2022/01/20", 3);

INSERT INTO tb_produto (curso, valor_curso, cliente_nome, cliente_telefone, data_compra, categoria_id)
VALUES ("Herbalismo", 29.00, "Isabella Sampaio", "11 98785-7412", "2022/01/14", 2);

/* SESSÃO SELECT */
-- Lista todos os dados da tabela tb_produto
SELECT * FROM tb_produto;

-- Produtos com o valor maior que 50.00
SELECT * FROM tb_produto WHERE valor_curso > 50.00;

-- Produtos com valor entre 3.00 e 60.00
SELECT * FROM tb_produto WHERE valor_curso BETWEEN 3.00 AND 60.00;

-- Pesquisa os cursos com a letra "C" no nome.
SELECT * FROM tb_produto WHERE curso LIKE "%c%";

/* CONSULTAS DO TIPO JOIN -> JUNTAR DUAS TABELAS*/
-- INNER JOIN -> INTERSECÇÃO, SÓ O MEIO ENTRE AS TABELAS PRODUTOS E CATEGORIAS
SELECT *
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id;

-- FILTRANDO COM WHERE DAS CONSULTAS TIPO JOIN
SELECT *
FROM tb_produto INNER JOIN tb_categoria
ON tb_produto.categoria_id = tb_categoria.id
WHERE tb_categoria.categoria = "Administração";