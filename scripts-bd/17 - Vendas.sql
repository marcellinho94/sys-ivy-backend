USE ivy;

CREATE TABLE `vendas` (
  `cod_venda` int NOT NULL AUTO_INCREMENT,
  `cod_pessoa_cliente` int NOT NULL,

  `data_venda` date NOT NULL,
  `data_previsao_entrega` date DEFAULT NULL,
  `data_entrega` date DEFAULT NULL,
  `codigo_rastreio` varchar(20) DEFAULT NULL,
  `cod_tipo_entrega` int NOT NULL,

  `dias_garantia` tinyint DEFAULT NULL,
  `valor_produtos` double NOT NULL,
  `valor_total` double NOT NULL,
  `valor_frete` double DEFAULT NULL,
  `valor_desconto` double DEFAULT NULL,

  `observacao` text NULL,

  `operador_inclusao` int NOT NULL,
  `data_inclusao` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `operador_exclusao` int DEFAULT NULL,
  `data_exclusao` datetime DEFAULT NULL,


  CONSTRAINT `vendas_PK` PRIMARY KEY (`cod_venda`),
  CONSTRAINT `vendas_FK` FOREIGN KEY (`cod_pessoa_cliente`) REFERENCES `pessoas` (`cod_pessoa`),
  CONSTRAINT `vendas_FK_1` FOREIGN KEY (`operador_inclusao`) REFERENCES `seg_operadores` (`cod_operador`),
  CONSTRAINT `vendas_FK_2` FOREIGN KEY (`operador_exclusao`) REFERENCES `seg_operadores` (`cod_operador`),
  CONSTRAINT `vendas_FK_3` FOREIGN KEY (`cod_tipo_entrega`) REFERENCES `tipos_entrega` (`cod_tipo_entrega`)
) 
ENGINE=InnoDB 
DEFAULT CHARSET=utf8mb3;