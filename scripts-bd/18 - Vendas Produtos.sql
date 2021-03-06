CREATE TABLE ivy.vendas_produtos (

	cod_venda_produto INT auto_increment NOT NULL,
	cod_venda INT NOT NULL,
	cod_produto INT NOT NULL,

	quantidade INT NOT NULL,
	valor_unitario DOUBLE NOT NULL,
	valor_desconto DOUBLE DEFAULT 0 NOT NULL,

	CONSTRAINT vendas_produtos_PK PRIMARY KEY (cod_venda_produto),
	CONSTRAINT vendas_produtos_UN UNIQUE KEY (cod_venda,cod_produto),
	CONSTRAINT vendas_produtos_FK FOREIGN KEY (cod_venda) REFERENCES ivy.vendas(cod_venda),
	CONSTRAINT vendas_produtos_FK_1 FOREIGN KEY (cod_produto) REFERENCES ivy.produtos(cod_produto)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
