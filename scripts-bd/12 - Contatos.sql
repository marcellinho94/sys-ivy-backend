USE ivy;

CREATE TABLE ivy.contatos (

	cod_contato INT auto_increment NOT NULL,
	cod_tipo_contato INT NOT NULL,
	valor varchar(100) NOT NULL,

	CONSTRAINT contatos_PK PRIMARY KEY (cod_contato),
	CONSTRAINT contatos_FK FOREIGN KEY (cod_tipo_contato) REFERENCES ivy.tipos_contato(cod_tipo_contato)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;
