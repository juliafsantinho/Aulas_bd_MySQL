-- 	Criar banco de dados
CREATE DATABASE db_quitanda;

-- Comando que seleciona o banco de dados
USE db_quitanda;

-- Criar Tabela tb_produtos
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT, -- auto_increment automatiza a numeração dos produtos
nome varchar(255) NOT NULL, -- tamanho padrão 255, not null define que o usuario tem que colocar um nome ao produto
quantidade int,
data_validade date,  -- data em formato americano aaaa/mm/dd
preco decimal NOT NULL,
PRIMARY KEY (id)
);

-- Inserir dados na tabela

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Arroz", 50, "2023-04-29", 20.00);

INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Chuchu", 20, "2022-04-18", 3.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Tomate", 80, "2022-04-19", 16.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Cenoura", 30, "2022-04-29", 13.00);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Morango", 1, "2022-04-20", 8.50);
 
 INSERT INTO tb_produtos (nome, quantidade, data_validade, preco)
 VALUES ("Banana", 1000, "2022-04-20", 10.50);
 
 -- MOSTRAR TODOS OS PRODUTOS DA LISTA
SELECT * FROM tb_produtos; 

-- MOSTRAR SOMENTE O NOME E O PREÇO DOS PRODUTOS
SELECT nome, preco FROM tb_produtos; 

-- MOSTRAR TODOS OS PRODUTOS QUE O PREÇO FOR MAIOR QUE 10.00
SELECT * FROM tb_produtos WHERE preco > 10.00; 

-- TRAGA TODOS OS PRODUTOS QUE O PREÇO SEJA MAIOR QUE 10.00 E A QUANTIDADE < 60
SELECT * FROM tb_produtos WHERE preco > 10.00 AND  quantidade < 60; 

-- TRANSFORMAR O PREÇO EM REAIS
SELECT nome, CONCAT('R$ ', FORMAT(preco, 2, 'pt_BR')) AS preço FROM tb_produtos;


/*SET SQL_SAFE_UPDATES = 0 DESTRAVA O UPDATE SEM WHARE -> famoso update sem where*/
-- Atualizar os dados da tabela
UPDATE tb_produtos SET preco = 8.50 WHERE id = 5;

-- Atualizar quantidade do produto
UPDATE tb_produtos SET quantidade = 90 WHERE id = 3;

UPDATE tb_produtos SET descricao = "Mercearia" WHERE id = 1;
UPDATE tb_produtos SET descricao = "Hortfruti" WHERE id = 2;
UPDATE tb_produtos SET descricao = "Hortfruti" WHERE id = 3;
UPDATE tb_produtos SET descricao = "Hortfruti" WHERE id = 4;
UPDATE tb_produtos SET descricao = "Hortfruti" WHERE id = 6;

-- Exclusão de um dado da tabela
DELETE FROM tb_produtos WHERE id = 5;
/* DELETE FROM tb_produtos WHERE id = 5 OR id = 4... para apagar mais de uma informação*/
/*DELETE FROM tb_produtos -> famoso delete sem where*/

/*Alterações na Estrutura da tabela*/
ALTER TABLE tb_produtos MODIFY preco decimal (8,2);

-- Adicionou a coluna descricao
ALTER TABLE tb_produtos ADD descricao varchar (255);

-- Excluir a coluna descricao
/*ALTER TABLE tb_produtos DROP descricao;*/

-- Corrige o nome do atributo
/*ALTER TABLE tb_produtos CHANGE descricao precov preco decimal (8,2);*/

/*Para matar o banco e gerar de novo DROP DATABASE db_quitanda;*/

