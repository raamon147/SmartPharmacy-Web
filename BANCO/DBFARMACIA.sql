CREATE DATABASE `farmacia` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
use farmacia;
CREATE TABLE `aplicacao` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nascimento` varchar(12) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `medicamento` varchar(45) DEFAULT NULL,
  `data` varchar(12) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(15) NOT NULL,
  `c_nome` varchar(50) NOT NULL,
  `c_end` varchar(100) NOT NULL,
  `c_tel` varchar(15) NOT NULL,
  `c_dtnasc` varchar(11) NOT NULL,
  `c_qtdpontos` int(11) DEFAULT (0),
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
CREATE TABLE `compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_carrinho` varchar(20) NOT NULL,
  `qtd_total_item` int(11) DEFAULT NULL,
  `total_compra` double NOT NULL,
  `cpf_comprador` varchar(15) DEFAULT NULL,
  `data_compra` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `convenio` (
  `idconvenio` int(11) NOT NULL AUTO_INCREMENT,
  `nome_conv` varchar(45) NOT NULL,
  `desc_conv` int(11) NOT NULL,
  PRIMARY KEY (`idconvenio`),
  UNIQUE KEY `nome_conv_UNIQUE` (`nome_conv`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) NOT NULL,
  `senha` varchar(15) NOT NULL,
  `cpf` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL,
  `codigo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO `farmacia`.`login` (`usuario`, `senha`, `cpf`, `email`, `codigo`) VALUES ('admin', 'admin', '', 'admin@admin.com', '1');

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `cod_prod` varchar(12) NOT NULL,
  `nome_prod` varchar(45) NOT NULL,
  `qtd_prod` int(11) NOT NULL,
  `preco_prod` double NOT NULL,
  `fabr_prod` varchar(45) NOT NULL,
  `pr_ativo` varchar(45) NOT NULL,
  `dos_prod` varchar(45) NOT NULL,
  `categoria` varchar(20) NOT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `cod_prod` (`cod_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `produtos_compra` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cod_prod` varchar(20) NOT NULL,
  `nome_produto` varchar(50) NOT NULL,
  `qtd_produto` int(11) NOT NULL,
  `total_produto` double NOT NULL,
  `data_compra` date NOT NULL,
  `codigo_carrinho` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=957378 DEFAULT CHARSET=latin1;