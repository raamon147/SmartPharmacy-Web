CREATE DATABASE `farmacia` /*!40100 DEFAULT CHARACTER SET latin1 */ /*!80016 DEFAULT ENCRYPTION='N' */;
use farmacia;
CREATE TABLE `aplicacao` (
  `cpf` varchar(20) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `nascimento` varchar(12) DEFAULT NULL,
  `endereco` varchar(45) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL,
  `medicamento` varchar(45) DEFAULT NULL,
  `data` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `cliente` (
  `cpf` varchar(16) NOT NULL,
  `c_nome` varchar(45) NOT NULL,
  `c_end` varchar(45) DEFAULT NULL,
  `c_tel` varchar(45) DEFAULT NULL,
  `c_dtnasc` varchar(45) NOT NULL,
  `c_qtdpontos` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpf`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `convenio` (
  `idconvenio` int(30) NOT NULL,
  `nome_conv` varchar(45) NOT NULL,
  `cod_conv` varchar(45) NOT NULL,
  `desc_med` float NOT NULL,
  `desc_perf` float NOT NULL,
  PRIMARY KEY (`idconvenio`),
  UNIQUE KEY `nome_conv_UNIQUE` (`nome_conv`),
  UNIQUE KEY `cod_conv_UNIQUE` (`cod_conv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `login` (
  `idusuario` int(11) NOT NULL,
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `codigo` int(11) DEFAULT NULL,
  PRIMARY KEY (`idusuario`,`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `cod_prod` varchar(45) NOT NULL,
  `nome_prod` varchar(45) NOT NULL,
  `qtd_prod` int(11) NOT NULL,
  `preco_prod` float NOT NULL,
  `fabr_prod` varchar(45) NOT NULL,
  `pr_ativo` varchar(45) NOT NULL,
  `dos_prod` varchar(45) NOT NULL,
  `status_prod` varchar(45) NOT NULL,
  PRIMARY KEY (`idproduto`),
  UNIQUE KEY `cod_prod_UNIQUE` (`cod_prod`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
