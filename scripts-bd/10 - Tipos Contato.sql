USE ivy;

CREATE TABLE ivy.tipos_contato (

	cod_tipo_contato INT auto_increment NOT NULL,
	descricao varchar(30) NOT NULL,

	CONSTRAINT tipos_contato_PK PRIMARY KEY (cod_tipo_contato),
	CONSTRAINT tipos_contato_UN UNIQUE KEY (descricao)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO
	tipos_contato 
VALUES
	(1, 'Telefone'),
	(2, 'E-mail'),
	(3, 'WhatsApp');