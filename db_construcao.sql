CREATE DATABASE db_construindo_vidas;
USE db_construindo_vidas;

CREATE TABLE tb_categorias(
	id INT AUTO_INCREMENT,
	departamento VARCHAR(50) NOT NULL,
	descricao VARCHAR(255) NOT NULL,
	PRIMARY KEY (id) 
);

CREATE TABLE tb_produtos (
	id INT AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
    quantidade INT,
    preco DECIMAL(10,2) NOT NULL,
    departamento_id INT,
    PRIMARY KEY (id),
    CONSTRAINT fk_produtos_categorias FOREIGN KEY (departamento_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material de Construção','Aço, Madeira, Argamassa, Blocos e Telhas');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Pisos e Revestimentos','Cerâmico, Porcenalato, Vinílico e Madeira');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material Hidráulico','Tubos e Conexões Hidráulicas');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Material Elétrico','Tubos, Eletrodutos e Fios/Cabos');
INSERT INTO tb_categorias(departamento, descricao)
VALUES ('Esquadrias','Portas, Janelas e Portões');

INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Bloco cerâmico 9x19x19cm', 10000, 2.10, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Telha Ondulada em Fibrocimento 5mm 2,44x1,10m', 5000, 79.99, 1);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Porcelanato Acetinado Retificado 82x82cm', 1200, 129.99, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Revestimento de Parede Brilhante 45x90cm', 500, 99.99, 2);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Tubo PVC Soldável Marrom 25mm 3/4" 3m', 200, 27.99, 3);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Cabo Flexível Antichama 10mm 450/750v 15m', 85, 89.99, 4);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Janela de Correr Alumínio 1,00x2,00m', 50, 699.90, 5);
INSERT INTO tb_produtos(nome, quantidade, preco, departamento_id)
VALUES ('Porta com Batente Pivotante Madeira Maciça 2,10x1,00m', 15, 3500.30, 5);

SELECT * FROM tb_produtos WHERE preco > 100;

SELECT * FROM tb_produtos WHERE preco BETWEEN 70 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%ca%'; 

SELECT * FROM tb_produtos
INNER JOIN tb_categorias ON tb_categorias.id = tb_produtos.departamento_id;

SELECT 
	p.id,
    p.nome,
    p.quantidade,
    p.preco,
    c.id AS departamento_id
FROM 
	tb_produtos p
INNER JOIN 
	tb_categorias c ON c.id = p.departamento_id
WHERE 
	c.departamento = 'Esquadrias';