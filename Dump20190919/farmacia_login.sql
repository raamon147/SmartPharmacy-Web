CREATE TABLE `login` (
  `usuario` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `codigo` int(11) NOT NULL,
  PRIMARY KEY (`usuario`,`cpf`,`email`),
  UNIQUE KEY `usuario_UNIQUE` (`usuario`),
  UNIQUE KEY `cpf_UNIQUE` (`cpf`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;