-- 	Criar banco de dados
CREATE DATABASE db_recursoshumanos;

-- Comando que seleciona o banco de dados
USE db_recursoshumanos;

-- Criar Tabela tb_produtos
CREATE TABLE tb_funcionarios(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
data_nascimento date,
setor varchar(255) NOT NULL,
funcao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

		/* PREENCHIMENTO DA TABELA */
INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Rosangela Souza", "1975-04-29", "Financeiro", "Contas a pagar");

INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Evaldo Rocha", "1965-08-02", "Jurídico", "Assistente Jurídico");
 
 INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Angela da Silva Santos", "1982-06-18", "Engenharia", "Engenheira Cívil");
 
 INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Maicon Oliveira", "1990-09-15", "Marketing", "Design Gráfico");
 
  INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Maria Clara Batista Ruiz", "1989-02-18", "Financeiro", "Contas a Receber");
 
  INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Marcia Honm", "1969-05-04", "SAC", "Auxíliar de Serviço e Atendimento ao Cliente");
 
  INSERT INTO tb_funcionarios (nome, data_nascimento, setor, funcao)
 VALUES ("Kleber Galucio ", "1980-11-10", "Compras", "Assistente de Compras");
 
 
		/* SESSÃO SELECT */
 -- MOSTRAR TODOS OS PRODUTOS DA LISTA
 SELECT * FROM tb_funcionarios; 
 
 -- RETORNAR FUNCIONARIOS COM SALARIO MAIOR QUE 2000.00
 SELECT * FROM tb_funcionarios WHERE salario > 2000.00; 
 
 -- RETORNAR FUNCIONARIOS COM SALARIO MAIOR QUE 2000.00
 SELECT * FROM tb_funcionarios WHERE salario < 2000.00; 
 
 
		/* SESSÃO UPDATE */
 -- Atualizar os dados da tabela
UPDATE tb_funcionarios SET salario = 1985.00 WHERE id = 1;
UPDATE tb_funcionarios SET salario = 2200.00 WHERE id = 2;
UPDATE tb_funcionarios SET salario = 4200.00 WHERE id = 3;
UPDATE tb_funcionarios SET salario = 1920.00 WHERE id = 4;
UPDATE tb_funcionarios SET salario = 1985.00 WHERE id = 5;
UPDATE tb_funcionarios SET salario = 1860.00 WHERE id = 6;
UPDATE tb_funcionarios SET salario = 2800.00 WHERE id = 7;
 
 
		/* ALTERAÇÃO NA ESTRUTURA DA TABELA */
 -- Adicionando a coluna Salario e ajuste de casas decimais.
 ALTER TABLE tb_funcionarios ADD salario decimal NOT NULL;
 ALTER TABLE tb_funcionarios MODIFY salario decimal (8,2);
 