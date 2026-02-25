CREATE DATABASE ecommerce_eletronicos;

-- 1.

CREATE TABLE categorias {
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
	nome_categoria VARCHAR(50) NOT NULL
);

-- 2. 

CREATE TABLE produtos {
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
	nome_produto VARCHAR(100) NOT NULL,
	preco DECIMAL(10,2) NOT NULL,
	estoque INT NOT NULL,
	id_categoria INT,
	FOREIGN KEY (id_categoria) REFERENCES categorias(id_categoria)
);

-- 3.

CREATE TABLE clientes {
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
	nome_cliente VARCHAR(100) NOT NULL,
	email VARCHAR(100) UNIQUE NOT NULL,
	cpf CHAR(11) UNIQUE NOT NULL
);

-- 4. tabela de pedidos


