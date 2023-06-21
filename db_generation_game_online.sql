CREATE DATABASE db_game_online;
USE db_game_online;

CREATE TABLE tb_classes(
	id INT AUTO_INCREMENT NOT NULL,
	classe VARCHAR(50) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id) 
);

CREATE TABLE tb_personagens(
	id INT AUTO_INCREMENT NOT NULL,
	nome VARCHAR(255) NOT NULL,
	exp INT NOT NULL,
	poder_de_fogo INT NOT NULL,
	armadura INT NOT NULL,
    classes_id INT,
	PRIMARY KEY (id),
	CONSTRAINT fk_personagens_classes FOREIGN KEY (classes_id) REFERENCES tb_classes (id)
);

INSERT INTO tb_classes(classe, descricao)
VALUES ('Arqueiro','Bom em combates à longa distância');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Guerreiro','Bom em combates à curta distância');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Mago','Dono da magia e manipulação de elementos');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Paladino','Chefe de defesa da honra e da justiça');
INSERT INTO tb_classes(classe, descricao)
VALUES ('Clérigo','Operante em cura e proteção');

INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Marocos', 12, 6000, 3000, 1);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Grécia', 10, 4500, 5000, 1);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Utalicos', 6, 2000, 1999, 2);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Armagem', 6, 3990, 3880, 2);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Contentação', 2, 1500, 500, 3);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Rideachos', 4, 1800, 400, 3);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Voltriz', 11, 3200, 4200, 4);
INSERT INTO tb_personagens(nome, exp, poder_de_fogo, armadura, classes_id)
VALUES ('Pasadine', 2, 500, 1300, 5);

SELECT * FROM tb_personagens WHERE poder_de_fogo > 2000;

SELECT * FROM tb_personagens WHERE armadura BETWEEN 500 AND 1000;

SELECT * FROM tb_personagens WHERE nome LIKE '%m%'; 

SELECT * FROM tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT
	p.id,
    p.nome,
    p.exp,
    p.poder_de_fogo,
    p.armadura,
    c.id AS classes_id
FROM 
	tb_personagens p
INNER JOIN 
	tb_classes c ON c.id = p.classes_id
WHERE 
	c.classe = 'Arqueiro';