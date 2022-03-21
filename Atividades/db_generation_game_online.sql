-- 	Criar banco de dados
CREATE DATABASE db_generation_game_online;

-- Comando que seleciona o banco de dados
USE db_generation_game_online;

-- Criar a tabela tb_classe
CREATE TABLE tb_classes(
id bigint AUTO_INCREMENT,
categoria varchar(255) NOT NULL,
dano varchar(255) NOT NULL,
resistência varchar(255) NOT NULL,
PRIMARY KEY (id)
);

-- Insere dados na tabela tb_classes
INSERT INTO tb_classes (categoria, dano, resistência)
VALUES ("Arqueiro", "Alto Dano", "Baixa Resistência");

INSERT INTO tb_classes (categoria, dano, resistência)
VALUES ("Mago", "Altíssimo Dano", "Baixa Resistência");

INSERT INTO tb_classes (categoria, dano, resistência)
VALUES ("Curandeiro", "Baixo Dano", "Alta Resistência");

INSERT INTO tb_classes (categoria, dano, resistência)
VALUES ("Paladino", "Médio Dano", "Alta Resistência");

INSERT INTO tb_classes (categoria, dano, resistência)
VALUES ("Bárbaro", "Alto Dano", "Média Resistência");

-- Lista todos os dados da tabela tb_classes
SELECT * FROM tb_classes;

-- Criar a tabela tb_personagens
CREATE TABLE tb_personagens(
id BIGINT AUTO_INCREMENT,
personagem varchar(255) NOT NULL,
poder_ataque int, 
caracteristica varchar(255) NOT NULL,
vestimenta varchar(255) NOT NULL,
armamento varchar(255) NOT NULL,
classes_id BIGINT,
PRIMARY KEY (id),
FOREIGN KEY (classes_id) REFERENCES tb_classes(id)
);

-- Insere dados na tabela tb_personagens
INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Ranger", 1000, "Longo Alcance", "Armaduras Médias", "Arco e Flecha", 1);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Swits", 2500, "Longo Alcance", "Armaduras Leves", "Magia e Elementos", 2);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Sharman", 1800, "Curto Alcance", "Armaduras Leves", "Magia de Luz", 3);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Max", 2200, "Curto Alcance", "Armaduras Pesadas", "Espadas e Machados", 4);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Clark", 2850, "Curto Alcance", "Armaduras Pesadas", "Espadas e Machados", 5);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Sam", 1900, "Curto Alcance", "Armaduras Leves", "Magia de Luz", 3);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Silver", 3000, "Longo Alcance", "Armaduras Médias", "Arco e Flecha", 1);

INSERT INTO tb_personagens (personagem, poder_ataque, caracteristica, vestimenta, armamento, classes_id)
VALUES ("Suzano", 2850, "Curto Alcance", "Armaduras Pesadas", "Espadas e Machados", 5);

 /* SESSÃO SELECT */
-- VISUALIZA TODOS OS DADOS 
SELECT * FROM tb_personagens;

-- PERSONAGENS COM PODER DE ATAQUE MAIOR QUE 2000
SELECT * FROM tb_personagens WHERE poder_ataque > 2000; 

-- PERSONAGENS COM PODER DE DEFESA ENTRE 1000 E 2000
SELECT * FROM tb_personagens WHERE poder_defesa BETWEEN 1000 AND 2000;

-- TRAZ OS PERSONAGENS ONDE APARECE "C" NO NOME
SELECT * FROM tb_personagens WHERE personagem LIKE "%c%";

/* CONSULTAS DO TIPO JOIN -> JUNTAR DUAS TABELAS*/
-- INNER JOIN -> INTERSECÇÃO, SÓ O MEIO ENTRE AS TABELAS PERSONAGENS E CLASSES
SELECT personagem, poder_ataque, poder_defesa, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id;

-- FILTRANDO COM WHERE DAS CONSULTAS TIPO JOIN
SELECT personagem, poder_ataque, poder_defesa, tb_classes.categoria
FROM tb_personagens INNER JOIN tb_classes
ON tb_personagens.classes_id = tb_classes.id
WHERE tb_classes.categoria = "Arqueiro";


/* ALTERAÇÃO NA ESTRUTURA DA TABELA */
 -- Adicionando a coluna poder_defesa.
 ALTER TABLE tb_personagens ADD poder_defesa int NOT NULL;
 
 
 /* SESSÃO UPDATE */
 -- Atualizar os dados da tabela
UPDATE tb_personagens SET poder_defesa = 2000 WHERE id = 1;
UPDATE tb_personagens SET poder_defesa = 1200 WHERE id = 2;
UPDATE tb_personagens SET poder_defesa = 1000 WHERE id = 3;
UPDATE tb_personagens SET poder_defesa = 1500 WHERE id = 4;
UPDATE tb_personagens SET poder_defesa = 2000 WHERE id = 5;
UPDATE tb_personagens SET poder_defesa = 2800 WHERE id = 6;
UPDATE tb_personagens SET poder_defesa = 1200 WHERE id = 7;
UPDATE tb_personagens SET poder_defesa = 2000 WHERE id = 8;




