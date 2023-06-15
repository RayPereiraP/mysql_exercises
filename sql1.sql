CREATE database db_colaboradores;

USE db_colaboradores;

CREATE table tb_informacoes (
	id bigint auto_increment, 
		nome varchar(500) not null,
        idade int not null,
        email varchar(100) not null,
        atuacao varchar(100) not null, 
        anos int not null, 
        salario decimal(6,2) not null,
	PRIMARY KEY(id)
);

INSERT INTO tb_informacoes(nome, idade, email, atuacao, anos, salario) values ("João", 22, "joaoprat@email.com", "roteirista", 2, 2589.99); 
INSERT INTO tb_informacoes(nome, idade, email, atuacao, anos, salario) values ("Ane", 21, "aneane@email.com", "desenvolvedora full stack", 5, 6589.80);
INSERT INTO tb_informacoes(nome, idade, email, atuacao, anos, salario) values ("Isaque", 25, "isaq@email.com", "engenheiro da nasa pleno", 6, 8800.90), ("Aurora", 20, "rora@email.com", "artista", 3, 3600.99), ("Ofélia", 28, "lia@email.com", "astronauta", 8, 9678.88);

SELECT * FROM tb_informacoes;

SELECT * FROM tb_informacoes Where salario < 5000;

SELECT * FROM tb_informacoes Where salario > 5000;

UPDATE tb_informacoes SET salario = 5785.75 WHERE id = 5;