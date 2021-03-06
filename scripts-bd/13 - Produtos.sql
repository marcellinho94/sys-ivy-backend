USE ivy;

CREATE TABLE ivy.produtos (

	cod_produto INT auto_increment NOT NULL,
	cod_categoria INT NOT NULL,
	nome varchar(100) NOT NULL,
	descricao TEXT NULL,

	operador_inclusao INT NOT NULL,
	data_inclusao DATETIME DEFAULT NOW() NOT NULL,
	operador_exclusao INT NULL,
	data_exclusao DATETIME NULL,

	CONSTRAINT produtos_PK PRIMARY KEY (cod_produto),
	CONSTRAINT produtos_UN UNIQUE KEY (nome),
	CONSTRAINT produtos_FK FOREIGN KEY (cod_categoria) REFERENCES ivy.categorias(cod_categoria),
	CONSTRAINT produtos_FK_1 FOREIGN KEY (operador_inclusao) REFERENCES ivy.seg_operadores(cod_operador),
	CONSTRAINT produtos_FK_2 FOREIGN KEY (operador_exclusao) REFERENCES ivy.seg_operadores(cod_operador)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
