-- 	Criar banco de dados
CREATE DATABASE db_e_commerce;

-- Comando que seleciona o banco de dados
USE db_e_commerce;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
setor varchar(255) NOT NULL,
funcao varchar(255) NOT NULL,
preco decimal (8,2) NOT NULL,
descricao varchar(255) NOT NULL,
cor varchar(255) NOT NULL,
quantidade int,
data_ultima_compra date,
PRIMARY KEY (id)
);

		/* PREENCHIMENTO DA TABELA */
INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Lapis", "papelaria", "escrever", 1.00, "Lápis preto ponta 0.5", "preto", 150, "2022-03-17");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Caneta", "papelaria", "escrever", 9.00, "Caneta Pilot ponta 2.0", "Azul", 100, "2022-01-25");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Caderno", "papelaria", "escrever", 35.00, "Caderno 10 matérias Capricho", "Violeta", 25, "2022-03-17");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Resma Sulfite", "papelaria", "escrever", 25.00, "Resma de sulfite, 500 folhas", "branca", 259, "2022-01-25");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Lapiseira", "papelaria", "escrever", 8.00, "Lápiseira Azul ponta 0.5", "Azul", 20, "2022-03-17");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Lapiseira", "papelaria", "escrever", 8.00, "Lápiseira preta ponta 0.5", "preta", 29, "2022-03-17");
 
 INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Caixa de lápis de cor", "papelaria", "desenhar", 29.00, "Caixa de lápis de cor 12 cores Faber Castell", "12 cores", 35, "2022-01-25");
 
  INSERT INTO tb_produtos (produto, setor, funcao, preco, descricao, cor, quantidade, data_ultima_compra)
 VALUES ("Caixa de lápis de cor", "papelaria", "desenhar", 39.00, "Caixa de lápis de cor 24 cores Faber Castell", "24 cores", 42, "2022-01-25");


		/* SESSÃO SELECT */
 -- MOSTRAR TODOS OS PRODUTOS DA LISTA
 SELECT * FROM tb_produtos; 
 
 -- RETORNAR PRODUTOS COM VALOR MAIOR QUE 500.00
 SELECT * FROM tb_produtos WHERE preco > 500.00; 
 
 -- RETORNAR PRODUTOS COM VALOR MENOR QUE 500.00
 SELECT * FROM tb_produtos WHERE preco < 500.00; 
 
 
 /* SESSÃO UPDATE */
 -- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 2.80 WHERE id = 1;
 
 