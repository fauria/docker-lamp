-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 13/11/2017 às 21:24
-- Versão do servidor: 5.7.20
-- Versão do PHP: 7.1.9

SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `mural_nxstep`
--
CREATE DATABASE IF NOT EXISTS `mural_nxstep` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mural_nxstep`;

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `status` (IN `id` INT)  BEGIN
	DECLARE id_mens INT(11);
	SELECT DISTINCT MAX(id_mensagem) INTO id_mens FROM mensagem;

	INSERT INTO status (
			id_mensagem,
			id_usuario
		)
		VALUES (
			id_mens,
			id
		);


END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `mensagem`
--

CREATE TABLE IF NOT EXISTS `mensagem` (
  `id_mensagem` int(11) NOT NULL AUTO_INCREMENT,
  `id_usuario` int(11) NOT NULL,
  `destinatario_mensagem` int(11) NOT NULL,
  `assunto_mensagem` varchar(70) NOT NULL,
  `conteudo_mensagem` varchar(1024) NOT NULL,
  `hora_mensagem` time NOT NULL,
  `data_mensagem` date NOT NULL,
  PRIMARY KEY (`id_mensagem`),
  KEY `FK_usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `mensagem`
--

INSERT INTO `mensagem` (`id_mensagem`, `id_usuario`, `destinatario_mensagem`, `assunto_mensagem`, `conteudo_mensagem`, `hora_mensagem`, `data_mensagem`) VALUES
(1, 1, -1, 'Teste', 'teste', '00:04:47', '2016-07-21'),
(2, 5, -1, 'Teste', 'teste', '11:54:26', '2016-07-21'),
(3, 2, -1, 'Assunto da mensagem', 'jkhdkjahdkjashdkjahsdkjashdhsakjdhkajshdkahsdhjashdjhsakjdhakjsdjahskjsdkajhdkjahsdkjhaskdljhsalkdjhsalkdhaskljdhsakjhdakjshdhakjhdklajshdljsahdkjahsdlkjashd', '12:27:04', '2016-07-21'),
(4, 4, 1, 'Teste', 'Natan', '15:23:02', '2016-07-21'),
(5, 4, 4, 'Teste', 'Natan1', '15:41:39', '2016-07-21'),
(6, 4, 4, 'todos', 'todos', '15:42:19', '2016-07-21'),
(7, 4, 4, 'anyone', 'este2', '15:42:45', '2016-07-21'),
(8, 5, 4, 'Teste', 'c', '19:03:55', '2016-07-21'),
(9, 2, 4, 'Teste', 'Teste', '00:00:00', '2016-07-21'),
(10, 7, -1, 'Teste Status', 'Mussum Ipsum, cacilds vidis litro abertis. Ta deprimidis, eu conheÃƒÂ§o uma cachacis que pode alegrar sua vidis.Ã¢â‚¬Â Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Casamentiss faiz malandris se pirulitÃƒÂ¡. Per aumento de cachacis, eu reclamis.', '22:11:27', '2016-07-22'),
(11, 7, -1, 'Teste de Status', '2 Mussum Ipsum, cacilds vidis litro abertis. Ta deprimidis, eu conheÃƒÂ§o uma cachacis que pode alegrar sua vidis.Ã¢â‚¬Â Nec orci ornare consequat. Praesent lacinia ultrices consectetur. Sed non ipsum felis. Casamentiss faiz malandris se pirulitÃƒÂ¡. Per aumento de cachacis, eu reclamis.', '22:14:47', '2016-07-22'),
(42, 7, -1, 'Teste', 'tesuysgkjsdn', '23:10:55', '2016-07-22'),
(43, 7, -1, 'Teste', 'tesuysgkjsdn', '23:10:55', '2016-07-22'),
(44, 7, -1, 'Teste', 'tesuysgkjsdn', '23:10:55', '2016-07-22'),
(45, 7, -1, 'Teste', 'tesuysgkjsdn', '23:10:55', '2016-07-22'),
(46, 7, -1, 'Teste', 'tesuysgkjsdn', '23:10:55', '2016-07-22'),
(47, 7, -1, 'assunto', 'aiush', '23:34:02', '2016-07-22'),
(48, 7, -1, 'Teste de mensagem', 'teseidejk', '23:34:55', '2016-07-22'),
(49, 7, -1, 'Teste de mensagem', 'teseidejk', '23:34:55', '2016-07-22'),
(50, 7, -1, 'Teste de mensagem', 'teseidejk', '23:34:55', '2016-07-22'),
(51, 7, 7, 'teste ', 'teste', '23:39:30', '2016-07-22'),
(52, 8, 7, 'jose', 'teste', '23:41:43', '2016-07-22'),
(53, 7, -1, 'Status de teste', 'teste de status', '23:43:05', '2016-07-22'),
(54, 8, -1, 'teste2', 'teste4', '23:54:03', '2016-07-22');

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE IF NOT EXISTS `status` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `id_mensagem` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `status_mensagem` int(1) NOT NULL,
  PRIMARY KEY (`id_status`),
  KEY `FK_mensagem` (`id_mensagem`),
  KEY `FK_destinatario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=281 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `status`
--

INSERT INTO `status` (`id_status`, `id_mensagem`, `id_usuario`, `status_mensagem`) VALUES
(29, 6, 4, 0),
(30, 7, 4, 0),
(31, 8, 4, 0),
(32, 9, 4, 0),
(33, 9, 4, 0),
(34, 1, 4, 0),
(35, 2, 4, 0),
(36, 3, 4, 0),
(38, 3, 7, 1),
(39, 2, 7, 1),
(40, 1, 7, 1),
(41, 2, 7, 1),
(42, 1, 7, 0),
(79, 45, 7, 0),
(80, 46, 7, 0),
(81, 11, 7, 0),
(82, 10, 7, 0),
(83, 3, 7, 0),
(84, 2, 7, 0),
(85, 1, 7, 0),
(99, 48, 7, 3),
(100, 49, 7, 3),
(101, 48, 8, 1),
(102, 49, 8, 0),
(103, 50, 8, 0),
(104, 47, 8, 0),
(105, 42, 8, 0),
(106, 43, 8, 0),
(107, 44, 8, 0),
(108, 45, 8, 0),
(109, 46, 8, 0),
(110, 11, 8, 0),
(111, 10, 8, 0),
(112, 3, 8, 0),
(113, 2, 8, 0),
(114, 1, 8, 0),
(115, 52, 7, 0),
(116, 51, 7, 1),
(117, 53, 7, 3),
(118, 53, 8, 1),
(119, 54, 8, 3),
(120, 54, 7, 1),
(217, 54, 9, 0),
(218, 53, 9, 0),
(219, 48, 9, 0),
(220, 49, 9, 0),
(221, 50, 9, 0),
(222, 47, 9, 0),
(223, 42, 9, 0),
(224, 43, 9, 0),
(225, 44, 9, 0),
(226, 45, 9, 0),
(227, 46, 9, 0),
(228, 11, 9, 0),
(229, 10, 9, 0),
(230, 3, 9, 0),
(231, 2, 9, 0),
(232, 1, 9, 0),
(265, 54, 10, 0),
(266, 53, 10, 0),
(267, 48, 10, 0),
(268, 49, 10, 0),
(269, 50, 10, 0),
(270, 47, 10, 0),
(271, 42, 10, 0),
(272, 43, 10, 0),
(273, 44, 10, 0),
(274, 45, 10, 0),
(275, 46, 10, 0),
(276, 11, 10, 0),
(277, 10, 10, 0),
(278, 3, 10, 0),
(279, 2, 10, 0),
(280, 1, 10, 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE IF NOT EXISTS `usuario` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `nome_usuario` varchar(100) NOT NULL,
  `email_usuario` varchar(50) NOT NULL,
  `senha_usuario` varchar(40) NOT NULL,
  `matricula_usuario` varchar(11) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `nome_usuario`, `email_usuario`, `senha_usuario`, `matricula_usuario`) VALUES
(1, 'Natan1', 'natan@teste.com', '97fcc7c4f1df18696b23ef9a44efc36482e9e51a', '20142016002'),
(2, 'Natan Macedo', 'teste@teste.com', '97fcc7c4f1df18696b23ef9a44efc36482e9e51a', '201301203'),
(3, 'teste1', 'teste1@teste.com', '3957e302fd7d2a05ef69ba18b6d34ed4d1f4713e', '9081982'),
(4, 'Natan', 't@t.com', '2e6f9b0d5885b6010f9167787445617f553a735f', '1234'),
(5, 'Elias', 'elias@gmail.com', '2e6f9b0d5885b6010f9167787445617f553a735f', '201402130'),
(6, 'Natan123', 't@t.com', '2e6f9b0d5885b6010f9167787445617f553a735f', '1234'),
(7, 'Elias Alves', 'elias@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'elias'),
(8, 'JosÃƒÂ©', 'jose@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'admin'),
(9, 'JosuÃƒÂ©', 'josue@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'qqcoisa'),
(10, 'Cardoso', 'cardoso@mail.com', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'unixelias@g');

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `mensagem`
--
ALTER TABLE `mensagem`
  ADD CONSTRAINT `FK_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `FK_destinatario` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_mensagem` FOREIGN KEY (`id_mensagem`) REFERENCES `mensagem` (`id_mensagem`) ON DELETE CASCADE ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
