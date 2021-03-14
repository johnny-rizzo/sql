create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
nome varchar (255) unique,
descricao varchar (255),
ativa boolean not null,
primary key (id)
);

INSERT INTO tb_categoria (nome, descricao, ativa) VALUES ("Pisos", "pisos para o chão", true);
INSERT INTO tb_categoria (nome, descricao, ativa) VALUES ("portas", "portas de todos os tamanhos", true);
INSERT INTO tb_categoria (nome, descricao, ativa) VALUES ("janelas", "janelas de todos os modelos", true);
INSERT INTO tb_categoria (nome, descricao, ativa) VALUES ("ferramentas", "todo tipo de ferramenta de construção", true);
INSERT INTO tb_categoria (nome, descricao, ativa) VALUES ("tintas", "todas as cores de tinta", true);

CREATE TABLE tb_produto(
 id bigint auto_increment,
 nome varchar(100),
 descricao varchar(200),
 quantidade int,
 preco decimal,
 categoria_id bigint,
 primary key (id),
 foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("Piso de Porcelanato", "cobertura fosca e mais áspera", 1000, 48, 1);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("porta de madeira", "boa qualidade", 300, 32, 400);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("janela de madeira", "janela elegante", 300, 250, 3);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("martelo", "cabo emborrachado", 300, 17, 4);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("tinta azul", "sem brilho", 300, 42, 5);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("tinta preta", "opaca", 300, 40, 5);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("pregos", "resistentes", 300, 10, 4);
INSERT INTO tb_produto (nome, descricao, quantidade, preco, categoria_id) VALUES ("janela dupla", "janela grande", 300, 200, 3);

SELECT * FROM tb_produto WHERE preco > 50;
SELECT * FROM tb_produto WHERE preco BETWEEN 3 AND 60;
SELECT * FROM tb_produto WHERE nome LIKE "%t%";
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id;
SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.categoria_id WHERE tb_categoria.id = 5;

