-- 	Criar banco de dados
CREATE DATABASE db_escola;

-- Comando que seleciona o banco de dados
USE db_escola;

-- Criar Tabela tb_produtos
CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date,
período varchar(255) NOT NULL,
curso varchar(255) NOT NULL,
ano int,
PRIMARY KEY (id)
);

/* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Ana Cecília Lopes", "2010-05-25", "tarde", "Ensino fundamental II", 6);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Carlos Garcia", "2010-06-09", "tarde", "Ensino fundamental II", 6);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Enzo Oliveira", "2011-01-20", "tarde", "Ensino fundamental II", 7);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Luisa Menezes", "2010-05-05", "tarde", "Ensino fundamental II", 6);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Clara Bento", "2011-03-22", "tarde", "Ensino fundamental II", 7);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Lucas Estevan Gomes", "2011-06-25", "tarde", "Ensino fundamental II", 7);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Giovanna Mendonça", "2011-01-28", "tarde", "Ensino fundamental II", 7);
 
 /* PREENCHIMENTO DA TABELA */
INSERT INTO tb_alunos (nome, data_nascimento, período, curso, ano)
 VALUES ("Eloa Lot", "2010-11-08", "tarde", "Ensino fundamental II", 6);
 
 
		/* SESSÃO SELECT */
 -- MOSTRAR TODOS OS PRODUTOS DA LISTA
 SELECT * FROM tb_alunos; 
 
 -- RETORNAR PRODUTOS COM NOTA MAIOR QUE 7
 SELECT * FROM tb_alunos WHERE nota_final > 7; 
 
 -- RETORNAR PRODUTOS COM NOTA MENOR QUE 7
 SELECT * FROM tb_alunos WHERE nota_final < 7; 
 
 
 /* ALTERAÇÃO NA ESTRUTURA DA TABELA */
 -- Adicionando a coluna NOTA FINAL.
 ALTER TABLE tb_alunos ADD nota_final int NOT NULL;
 
 /* SESSÃO UPDATE */
 -- Atualizar os dados da tabela
UPDATE tb_alunos SET nota_final = 10 WHERE id = 1;
UPDATE tb_alunos SET nota_final = 8 WHERE id = 2;
UPDATE tb_alunos SET nota_final = 7 WHERE id = 3;
UPDATE tb_alunos SET nota_final = 5 WHERE id = 4;
UPDATE tb_alunos SET nota_final = 10 WHERE id = 5;
UPDATE tb_alunos SET nota_final = 9 WHERE id = 6;
UPDATE tb_alunos SET nota_final = 10 WHERE id = 7;
UPDATE tb_alunos SET nota_final = 3 WHERE id = 8;