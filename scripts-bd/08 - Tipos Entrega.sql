USE ivy;

CREATE TABLE ivy.tipos_entrega (

	cod_tipo_entrega INT auto_increment NOT NULL,
	descricao varchar(30) NOT NULL,

	CONSTRAINT tipos_entrega_PK PRIMARY KEY (cod_tipo_entrega),
	CONSTRAINT tipos_entrega_UN UNIQUE KEY (descricao)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO
	tipos_entrega 
VALUES 
	(1, 'Retirada'),
	(2, 'Sedex'),
	(3, 'PAC'),
	(4, 'PAC Mini');