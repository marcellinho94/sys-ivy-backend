USE ivy;

CREATE TABLE ivy.formas_pagto (

	cod_forma_pagto INT auto_increment NOT NULL,
	descricao varchar(50) NOT NULL,

	CONSTRAINT formas_pagto_PK PRIMARY KEY (cod_forma_pagto),
	CONSTRAINT formas_pagto_UN UNIQUE KEY (descricao)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8
COLLATE=utf8_general_ci;

INSERT INTO
	formas_pagto
VALUES
	(1, 'Dinheiro'),
	(2, 'PIX'),
	(3, 'Cartão de Crédito'),
	(4, 'Cartão de Débito'),
	(5, 'Boleto');