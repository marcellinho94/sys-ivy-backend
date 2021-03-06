CREATE TABLE ivy.seg_operadores (

	cod_operador INT auto_increment NOT NULL,

	login VARCHAR(32) NOT NULL,
	senha varchar(128) NOT NULL,
	is_admin BOOL DEFAULT FALSE NOT NULL,

	operador_inclusao INT NOT NULL,
	data_inclusao DATETIME DEFAULT NOW() NOT NULL,
	operador_exclusao INT NULL,
	data_exclusao DATETIME NULL,


	CONSTRAINT seg_operadores_PK PRIMARY KEY (cod_operador),
	CONSTRAINT seg_operadores_UN UNIQUE KEY (login),
	CONSTRAINT seg_operadores_FK FOREIGN KEY (operador_inclusao) REFERENCES ivy.seg_operadores(cod_operador),
	CONSTRAINT seg_operadores_FK_1 FOREIGN KEY (operador_exclusao) REFERENCES ivy.seg_operadores(cod_operador)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
