-- phpMyAdmin SQL Dump
-- version 4.7.5
-- https://www.phpmyadmin.net/
--
-- Host: db
-- Tempo de geração: 13/11/2017 às 21:43
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
/*!40101 SET NAMES latin1 */;

--
-- Banco de dados: `ictafast`
--
CREATE DATABASE IF NOT EXISTS `ictafast` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `ictafast`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `administrador`
--

CREATE TABLE IF NOT EXISTS `administrador` (
  `id_administrador` int(11) NOT NULL AUTO_INCREMENT,
  `login_administrador` varchar(20) NOT NULL,
  `senha_administrador` varchar(40) NOT NULL,
  `nome_administrador` varchar(200) NOT NULL,
  PRIMARY KEY (`id_administrador`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `login_administrador`, `senha_administrador`, `nome_administrador`) VALUES
(3, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Crypto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `afastamento`
--

CREATE TABLE IF NOT EXISTS `afastamento` (
  `id_afastamento` int(11) NOT NULL AUTO_INCREMENT,
  `dt_inicio_afastamento` date NOT NULL,
  `dt_fim_afastamento` date NOT NULL,
  `observ_afastamento` varchar(200) DEFAULT NULL,
  `id_ocorrencia` int(11) NOT NULL,
  `id_docente` int(11) NOT NULL,
  PRIMARY KEY (`id_afastamento`),
  KEY `FK_afastamento_docente` (`id_docente`),
  KEY `FK_afastamento_ocorrencia` (`id_ocorrencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;


-- ----------------------------
-- Fazendo dump de dados para tabela afastamento
-- ----------------------------

INSERT INTO `afastamento` VALUES ('1', '2016-07-01', '2016-07-13', 'Obs', '4', '14');
INSERT INTO `afastamento` VALUES ('3', '2016-01-08', '2016-01-25', 'Obs', '32', '15');
INSERT INTO `afastamento` VALUES ('4', '2016-05-02', '2016-06-03', 'Férias', '24', '20');
INSERT INTO `afastamento` VALUES ('5', '2016-05-22', '2016-06-01', 'Obs', '20', '36');
INSERT INTO `afastamento` VALUES ('8', '0000-00-00', '0000-00-00', 'Opcional', '77', '76');
INSERT INTO `afastamento` VALUES ('9', '0000-00-00', '0000-00-00', 'Opcional', '78', '80');
INSERT INTO `afastamento` VALUES ('10', '0000-00-00', '0000-00-00', 'Opcional', '75', '76');
INSERT INTO `afastamento` VALUES ('11', '0000-00-00', '0000-00-00', 'Opcional', '76', '78');
INSERT INTO `afastamento` VALUES ('12', '0000-00-00', '0000-00-00', 'Opcional', '77', '76');
INSERT INTO `afastamento` VALUES ('13', '0000-00-00', '0000-00-00', 'Opcional', '77', '77');
INSERT INTO `afastamento` VALUES ('14', '2016-06-21', '2016-07-19', 'Opcional', '78', '77');
INSERT INTO `afastamento` VALUES ('15', '2016-06-15', '2016-07-11', 'Teste de adição', '80', '76');
INSERT INTO `afastamento` VALUES ('16', '2016-07-14', '2016-08-23', 'pp', '3', '7');
INSERT INTO `afastamento` VALUES ('17', '2016-08-14', '2016-08-18', 'd', '3', '2');
INSERT INTO `afastamento` VALUES ('18', '2016-08-13', '2016-09-05', 'd', '4', '4');
INSERT INTO `afastamento` VALUES ('19', '2016-08-01', '2016-08-10', '', '5', '4');
INSERT INTO `afastamento` VALUES ('20', '2016-08-01', '2016-08-01', '', '5', '3');
INSERT INTO `afastamento` VALUES ('21', '2016-08-04', '2016-08-04', '', '5', '5');
INSERT INTO `afastamento` VALUES ('22', '2016-08-12', '2016-08-14', '', '5', '5');
INSERT INTO `afastamento` VALUES ('23', '2016-08-04', '2016-09-10', '', '4', '6');
INSERT INTO `afastamento` VALUES ('24', '2016-08-04', '2016-08-20', '', '31', '27');
INSERT INTO `afastamento` VALUES ('25', '2016-08-01', '2016-08-03', 'Inserindo comentário', '8', '2');
INSERT INTO `afastamento` VALUES ('28', '2016-08-04', '2016-08-07', 'Obs', '18', '65');
INSERT INTO `afastamento` VALUES ('29', '2016-06-09', '2016-06-16', '', '54', '53');
INSERT INTO `afastamento` VALUES ('30', '2016-08-03', '2016-08-04', '', '4', '65');
INSERT INTO `afastamento` VALUES ('31', '2016-08-05', '2016-08-07', '', '3', '46');
INSERT INTO `afastamento` VALUES ('32', '2016-08-04', '2016-08-05', '', '2', '79');
INSERT INTO `afastamento` VALUES ('33', '2016-08-02', '2016-08-04', '', '5', '3');
INSERT INTO `afastamento` VALUES ('35', '2016-09-15', '2016-12-08', 'Afastamento', '10', '38');
INSERT INTO `afastamento` VALUES ('36', '2016-09-02', '2016-09-03', '', '4', '74');
INSERT INTO `afastamento` VALUES ('38', '2016-08-02', '2016-08-04', '', '47', '7');
INSERT INTO `afastamento` VALUES ('39', '2016-08-11', '2016-08-11', '', '4', '58');
INSERT INTO `afastamento` VALUES ('40', '2016-08-03', '2016-08-05', '', '2', '55');
INSERT INTO `afastamento` VALUES ('41', '2016-08-04', '2016-08-13', 'Obasd', '2', '44');
INSERT INTO `afastamento` VALUES ('42', '2016-08-14', '2016-09-14', '', '1', '48');
INSERT INTO `afastamento` VALUES ('43', '2016-08-14', '2016-09-14', '', '1', '48');
INSERT INTO `afastamento` VALUES ('44', '2016-09-12', '2016-09-15', '', '3', '57');
INSERT INTO `afastamento` VALUES ('45', '2016-08-13', '2016-08-14', '', '4', '56');
INSERT INTO `afastamento` VALUES ('47', '2016-08-12', '2016-08-14', '', '6', '1');
INSERT INTO `afastamento` VALUES ('48', '2016-08-06', '2016-08-07', '', '3', '1');
INSERT INTO `afastamento` VALUES ('49', '2016-08-05', '2016-08-06', '', '3', '39');
INSERT INTO `afastamento` VALUES ('51', '2016-07-13', '2016-07-15', '', '26', '1');
INSERT INTO `afastamento` VALUES ('55', '2016-08-13', '2016-08-14', 'tre', '5', '38');
INSERT INTO `afastamento` VALUES ('56', '2016-06-28', '2016-09-10', 'Teste de inserção de dados', '41', '7');
INSERT INTO `afastamento` VALUES ('58', '0000-00-00', '0000-00-00', 'Conj', '2', '52');
INSERT INTO `afastamento` VALUES ('59', '2016-08-08', '2016-08-09', '', '2', '70');
INSERT INTO `afastamento` VALUES ('60', '2016-08-13', '2016-08-20', '', '2', '1');
INSERT INTO `afastamento` VALUES ('61', '2016-08-06', '2016-08-07', '', '2', '1');
INSERT INTO `afastamento` VALUES ('62', '2016-08-11', '2016-08-12', '', '2', '1');
INSERT INTO `afastamento` VALUES ('63', '2016-08-06', '2016-08-13', 'Afastamento por perído indeterminado, conforme ofício encaminhado em anexo no dia 23/04/2016 para a diretoria executiva e esse texto tem que ficar meio grande pra eu poder testar o tamanho do campo ob', '3', '1');
INSERT INTO `afastamento` VALUES ('64', '2016-08-12', '2016-11-08', 'ago-nov', '1', '1');


-- --------------------------------------------------------

--
-- Estrutura para tabela `curso`
--

CREATE TABLE IF NOT EXISTS `curso` (
  `id_curso` int(11) NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `curso`
--

INSERT INTO `curso` VALUES ('0', 'Bacharelado em Ciência e Tecnologia');
INSERT INTO `curso` VALUES ('1', 'Engenharia de Alimentos');
INSERT INTO `curso` VALUES ('2', 'Engenharia Geológica');
INSERT INTO `curso` VALUES ('3', 'Engenharia Mecânica');
INSERT INTO `curso` VALUES ('4', 'Engenharia Química');
INSERT INTO `curso` VALUES ('5', 'Nenhum Curso');

-- --------------------------------------------------------

--
-- Estrutura para tabela `docente`
--

CREATE TABLE IF NOT EXISTS `docente` (
  `id_docente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_docente` varchar(200) NOT NULL,
  `siape_docente` varchar(200) NOT NULL,
  `email_docente` varchar(200) DEFAULT NULL,
  `efetivo_docente` int(1) NOT NULL,
  PRIMARY KEY (`id_docente`),
  UNIQUE KEY `siape_docente_unique` (`siape_docente`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `docente`
--

INSERT INTO `docente` (`id_docente`, `nome_docente`, `siape_docente`, `email_docente`, `efetivo_docente`) VALUES
(0, 'ALESSANDRO CALDEIRA ALVES', '9949999', '...@ict.ufvjm.edu.br', 1),
(1, 'ALEXANDRE GUTENBERG DA COSTA MOURA', '7499599', '...@ict.ufvjm.edu.br', 1),
(2, 'ALEXANDRE RAMOS FONSECA', '9999990', '...@ict.ufvjm.edu.br', 1),
(3, 'AMANDA ROCHA CHAVES', '9999991', '...@ict.ufvjm.edu.br', 1),
(4, 'ANDERSON LUIZ PEDROSA PORTO', '9999992', '...@ict.ufvjm.edu.br', 1),
(5, 'ANTONIO GENILTON SANT\'ANNA', '9999993', '...@ict.ufvjm.edu.br', 1),
(6, 'ARLINDO FOLLADOR NETO', '1234567', '...@ict.ufvjm.edu.br', 1),
(7, 'BETHANIA ALVES DE AVELAR FREITAS', '9999994', '...@ict.ufvjm.edu.br', 1),
(8, 'CAIO OLINDO DE MIRANDA S. JUNIOR', '9999995', '...@ict.ufvjm.edu.br', 1),
(9, 'CARLOS IGNÁCIO', '9999996', '...@ict.ufvjm.edu.br', 1),
(10, 'CAROLINA CRUZ MENDES BUOSI', '9999997', '...@ict.ufvjm.edu.br', 1),
(11, 'DOUGLAS FREDERICO GUIMARAES SANTIAGO', '9999998', '...@ict.ufvjm.edu.br', 1),
(12, 'EDIVALDO DOS SANTOS FILHO', '9993890', '...@ict.ufvjm.edu.br', 1),
(13, 'EMILIANA MARA LOPES SIMÕES', '9999919', '...@ict.ufvjm.edu.br', 1),
(14, 'FILADELFO CARDOSO SANTOS', '2356894', '...@ict.ufvjm.edu.br', 1),
(15, 'HENRIQUE APARECIDO DE JESUS LOURES MOURÃO', '9999929', '...@ict.ufvjm.edu.br', 1),
(16, 'JUAN PEDRO BRETAS ROA', '9999939', '...@ict.ufvjm.edu.br', 1),
(17, 'LEONARDO GOMES', '9999949', '...@ict.ufvjm.edu.br', 1),
(18, 'LÍLIAN ARAÚJO PANTOJA', '9999959', '...@ict.ufvjm.edu.br', 1),
(19, 'MANOEL JOSÉ MENDES', '9999969', '...@ict.ufvjm.edu.br', 1),
(20, 'MARCELO MOREIRA BRITTO', '9999979', '...@ict.ufvjm.edu.br', 1),
(21, 'MARCOS ANTÔNIO RODRIGUES DOS SANTOS', '9999989', '...@ict.ufvjm.edu.br', 1),
(22, 'MICHELY SANTOS OLIVEIRA', '0918999', '...@ict.ufvjm.edu.br', 1),
(23, 'MÔNICA APARECIDA CRUVINEL VALADÃO', '9999909', '...@ict.ufvjm.edu.br', 1),
(24, 'MÔNICA MARTINS ANDRADE TOLENTINO', '9999199', '...@ict.ufvjm.edu.br', 1),
(25, 'OLAVO COSME DA SILVA', '9999299', '...@ict.ufvjm.edu.br', 1),
(26, 'PAULO CÉSAR DE RESENDE ANDRADE', '9999399', '...@ict.ufvjm.edu.br', 1),
(27, 'RAQUEL ANNA SAPUNARU', '9999499', '...@ict.ufvjm.edu.br', 1),
(28, 'RICARDO LUIS DOS REIS', '9999599', '...@ict.ufvjm.edu.br', 1),
(29, 'ROBERTA MARIA FERREIRA ALVES', '9999699', '...@ict.ufvjm.edu.br', 1),
(30, 'RONALDO LUIS THOMASINI', '9999799', '...@ict.ufvjm.edu.br', 1),
(31, 'VICTOR HUGO DE OLIVEIRA MUNHOZ', '9999899', '...@ict.ufvjm.edu.br', 1),
(32, 'JANAÍNA MATOSO SANTOS', '9999099', '', 0),
(33, 'CARLOS ALBERTO GOIS SUZART', '9991999', '...@ict.ufvjm.edu.br', 1),
(34, 'FRANCIELE MARIA PELISSARI MOLINA', '9992999', '...@ict.ufvjm.edu.br', 1),
(35, 'GISELLE PEREIRA CARDOSO', '9993999', '...@ict.ufvjm.edu.br', 1),
(36, 'GUSTAVO MOLINA', '9994999', '...@ict.ufvjm.edu.br', 1),
(37, 'JOYCE MARIA GOMES DA COSTA', '9995999', '...@ict.ufvjm.edu.br', 1),
(38, 'LARISSA DE OLIVEIRA FERREIRA ROCHA', '9996999', '...@ict.ufvjm.edu.br', 1),
(39, 'MARCELINO SERRETTI LEONEL', '9997999', '...@ict.ufvjm.edu.br', 1),
(40, 'MONALISA PEREIRA DUTRA ANDRADE', '9998999', '...@ict.ufvjm.edu.br', 1),
(41, 'POLIANA MENDES DE SOUZA', '9990999', '...@ict.ufvjm.edu.br', 1),
(42, 'ULISSES BARROS DE ABREU MAIA', '9919999', '...@ict.ufvjm.edu.br', 1),
(43, 'TATIANA NUNES AMARAL', '9929999', '...@ict.ufvjm.edu.br', 1),
(44, 'ALESSANDRA MENDES CARVALHO VASCONCELOS', '9939999', '...@ict.ufvjm.edu.br', 1),
(45, 'GISLAINE AMOR', '9946299', '...@hotmail.com', 1),
(47, 'JOSÉ MARIA LEAL', '9959999', '...@ict.ufvjm.edu.br', 1),
(48, 'JULIANO ALVES SENNA', '9969999', '...@ict.ufvjm.edu.br', 1),
(49, 'MATHEUS HENRIQUE KUCHENBECKER DO AMARAL', '9979999', '...@ict.ufvjm.edu.br', 1),
(50, 'RUBIA RIBEIRO VIANA', '9989999', '...@gmail.com', 1),
(51, 'SORAYA DE CARVALHO NEVES', '9917099', '...@yahoo.com.br', 1),
(52, 'PEDRO ÂNGELO DE ALMEIDA ABREU ', '9909999', '...@ufvjm.edu.br', 1),
(53, 'HUMBERTO LUIS SIQUEIRA REIS', '9199999', '...@ict.ufvjm.edu.br', 1),
(54, 'EVELYN APARECIDA MECENERO SANCHEZ BIZAN', '9299999', '...@ict.ufvjm.edu.br', 1),
(55, 'CARLOS ALEXANDRE OLIVEIRA DE SOUZA', '9399999', '...@ict.ufvjm.edu.br', 1),
(56, 'DANILO OLZON DIONYSIO DE SOUZA', '9499999', '...@ict.ufvjm.edu.br', 1),
(57, 'ELTON DIÊGO BONIFÁCIO', '9599999', '...@ict.ufvjm.edu.br', 1),
(58, 'EULER GUIMARÃES HORTA', '9699999', '...@ict.ufvjm.edu.br', 1),
(59, 'LIBARDO ANDRÉS GONZÁLES', '9799999', '...@ict.ufvjm.edu.br', 1),
(60, 'MATHEUS DOS SANTOS GUZELLA', '9899999', '...@ict.ufvjm.edu.br', 1),
(61, 'MOISÉS DE MATOS TORRES', '9099999', '...@ict.ufvjm.edu.br', 1),
(62, 'RICARDO AUGUSTO GONÇALVES', '1999999', '...@ict.ufvjm.edu.br', 1),
(63, 'SOLANGE DE SOUZA', '2999999', '...@ict.uvjm.edu.br', 1),
(64, 'THIAGO HENRIQUE LARA PINTO', '3999999', '...@ict.ufvjm.edu.br', 1),
(65, 'THIAGO PARENTE LIMA', '4999999', '...@ict.ufvjm.edu.br', 1),
(66, 'THONSON FERREIRA COSTA', '5999999', '...@ict.ufvjm.edu.br', 1),
(67, 'TIAGO MENDES', '6999999', '...@ict.ufvjm.edu.br', 1),
(68, 'VICTOR AUGUSTO NASCIMENTO MAGALHÃES', '9994689', '...@ict.ufvjm.edu.br', 1),
(69, 'ANAMARIA DE OLIVEIRA CARDOSO', '7999999', '...@ict.ufvjm.edu.br', 1),
(70, 'ARLETE BARBOSA DOS REIS', '8999999', '...@ict.ufvjm.edu.br', 1),
(71, 'DÉBORA VILELA FRANCO', '0999999', '...@ict.ufvjm.edu.br', 1),
(72, 'FLAVIANA TAVARES VIEIRA TEIXEIRA', '9993499', '...@ict.ufvjm.edu.br', 1),
(73, 'JOÃO VINÍCIOS WIRBITZKI DA SILVEIRA', '9944999', '...@ict.ufvjm.edu.br', 1),
(74, 'JOSÉ ALBERTO DE SOUSA', '9995699', '...@ict.ufvjm.edu.br', 1),
(75, 'JOSÉ IZAQUIEL SANTOS DA SILVA', '9998099', '...@ict.ufvjm.edu.br', 1),
(76, 'LUCAS FRANCO FERREIRA', '9923299', '...@ict.ufvjm.edu.br', 1),
(77, 'MATHEUS HENRIQUE GRANZOTTO', '9956699', '...@ict.ufvjm.edu.br', 1),
(78, 'ROGÉRIO ALEXANDRE ALVES DE MELO', '9954999', '...@ict.ufvjm.edu.br', 1),
(79, 'SANDRA MATIAS DAMASCENO', '9999009', '...@ict.ufvjm.edu.br', 1),
(80, 'TARCILA MANTOVAN ATOLINI', '9456999', '...@ict.ufvjm.edu.br', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `exercicio`
--

CREATE TABLE IF NOT EXISTS `exercicio` (
  `id_exercicio` int(11) NOT NULL AUTO_INCREMENT,
  `id_docente` int(11) DEFAULT NULL,
  `id_curso` int(11) DEFAULT NULL,
  `dt_inicio_exercicio` date DEFAULT NULL,
  `dt_fim_exercicio` date DEFAULT NULL,
  PRIMARY KEY (`id_exercicio`),
  KEY `FK_exercicio_docente` (`id_docente`),
  KEY `FK_exercicio_curso` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `exercicio`
--

INSERT INTO `exercicio` (`id_exercicio`, `id_docente`, `id_curso`, `dt_inicio_exercicio`, `dt_fim_exercicio`) VALUES
(1, 1, 0, '2016-07-01', NULL),
(2, 2, 0, '2016-07-01', NULL),
(3, 3, 0, '2016-07-01', NULL),
(4, 4, 0, '2016-07-01', NULL),
(5, 5, 0, '2016-07-01', NULL),
(6, 6, 0, '2016-07-01', NULL),
(7, 7, 0, '2016-07-01', NULL),
(8, 8, 0, '2016-07-01', NULL),
(9, 9, 0, '2016-07-01', NULL),
(10, 10, 0, '2016-07-01', NULL),
(11, 11, 0, '2016-07-01', NULL),
(12, 12, 0, '2016-07-01', NULL),
(13, 13, 0, '2016-07-01', NULL),
(14, 14, 0, '2016-07-01', NULL),
(15, 15, 0, '2016-07-01', NULL),
(16, 16, 0, '2016-07-01', NULL),
(17, 17, 0, '2016-07-01', NULL),
(18, 18, 0, '2016-07-01', NULL),
(19, 19, 0, '2016-07-01', NULL),
(20, 20, 0, '2016-07-01', NULL),
(21, 21, 0, '2016-07-01', NULL),
(22, 22, 0, '2016-07-01', NULL),
(23, 23, 0, '2016-07-01', NULL),
(24, 24, 0, '2016-07-01', NULL),
(25, 25, 0, '2016-07-01', NULL),
(26, 26, 0, '2016-07-01', NULL),
(27, 27, 0, '2016-07-01', NULL),
(28, 28, 0, '2016-07-01', NULL),
(29, 29, 0, '2016-07-01', NULL),
(30, 30, 0, '2016-07-01', NULL),
(31, 31, 0, '2016-07-01', NULL),
(32, 32, 0, '2016-07-01', NULL),
(33, 33, 1, '2016-07-01', NULL),
(34, 34, 1, '2016-07-01', NULL),
(35, 35, 1, '2016-07-01', NULL),
(36, 36, 1, '2016-07-01', NULL),
(37, 37, 1, '2016-07-01', NULL),
(38, 38, 1, '2016-07-01', NULL),
(39, 39, 1, '2016-07-01', NULL),
(40, 40, 1, '2016-07-01', NULL),
(41, 41, 1, '2016-07-01', NULL),
(42, 42, 1, '2016-07-01', NULL),
(43, 43, 1, '2016-07-01', NULL),
(44, 44, 2, '2016-07-01', NULL),
(45, 45, 2, '2016-07-01', NULL),
(47, 47, 2, '2016-07-01', NULL),
(48, 48, 2, '2016-07-01', NULL),
(49, 49, 2, '2016-07-01', NULL),
(50, 50, 2, '2016-07-01', NULL),
(51, 51, 2, '2016-07-01', NULL),
(52, 52, 2, '2016-07-01', NULL),
(53, 53, 2, '2016-07-01', NULL),
(54, 54, 2, '2016-07-01', NULL),
(55, 55, 3, '2016-07-01', NULL),
(56, 56, 3, '2016-07-01', NULL),
(57, 57, 3, '2016-07-01', NULL),
(58, 58, 3, '2016-07-01', NULL),
(59, 59, 3, '2016-07-01', NULL),
(60, 60, 3, '2016-07-01', NULL),
(61, 61, 3, '2016-07-01', NULL),
(62, 62, 3, '2016-07-01', NULL),
(63, 63, 3, '2016-07-01', NULL),
(64, 64, 3, '2016-07-01', NULL),
(65, 65, 3, '2016-07-01', NULL),
(66, 66, 3, '2016-07-01', NULL),
(67, 67, 3, '2016-07-01', NULL),
(68, 68, 3, '2016-07-01', NULL),
(69, 69, 4, '2016-07-01', NULL),
(70, 70, 4, '2016-07-01', NULL),
(71, 71, 4, '2016-07-01', NULL),
(72, 72, 4, '2016-07-01', NULL),
(73, 73, 4, '2016-07-01', NULL),
(74, 74, 4, '2016-07-01', NULL),
(75, 75, 4, '2016-07-01', NULL),
(76, 76, 4, '2016-07-01', NULL),
(77, 77, 4, '2016-07-01', NULL),
(78, 78, 4, '2016-07-01', NULL),
(79, 79, 4, '2016-07-01', NULL),
(80, 80, 4, '2016-07-01', NULL),
(89, 0, 0, '2016-07-01', NULL);

-- --------------------------------------------------------

--
-- Estrutura para tabela `ocorrencia`
--

CREATE TABLE IF NOT EXISTS `ocorrencia` (
  `id_ocorrencia` int(11) NOT NULL AUTO_INCREMENT,
  `tipo_ocorrencia` varchar(200) NOT NULL,
  `codigo_ocorrencia` varchar(200) NOT NULL,
  PRIMARY KEY (`id_ocorrencia`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Fazendo dump de dados para tabela `ocorrencia`
--

INSERT INTO `ocorrencia` VALUES ('1', 'À Disposição da Justiça Eleitoral', '03-148');
INSERT INTO `ocorrencia` VALUES ('2', 'Afastamento para Acompanhar Cônjuge ou Companheiro', '03-101');
INSERT INTO `ocorrencia` VALUES ('3', 'Afastamento para Estudos ou Missão no Exterior', '03-111');
INSERT INTO `ocorrencia` VALUES ('4', 'Afastamento para exercício Mandato Eletivo para Prefeito', '03-108');
INSERT INTO `ocorrencia` VALUES ('5', 'Afastamento para exercício Mandato Eletivo para Prefeito', '03-107');
INSERT INTO `ocorrencia` VALUES ('6', 'Afastamento para exercício Mandato Eletivo para Vereador', '03-110');
INSERT INTO `ocorrencia` VALUES ('7', 'Afastamento para exercício Mandato Eletivo para Vereador', '03-109');
INSERT INTO `ocorrencia` VALUES ('8', 'Afastamento para Mandato Federal, Estadual ou Distrital', '03-106');
INSERT INTO `ocorrencia` VALUES ('9', 'Afastamento para Servir a outro Órgão ou Entidade', '03-152');
INSERT INTO `ocorrencia` VALUES ('10', 'Afastamento para Servir em Organismo Internacional', '03-112');
INSERT INTO `ocorrencia` VALUES ('11', 'Afastamento por Inquerito Administrativo', '03-120');
INSERT INTO `ocorrencia` VALUES ('12', 'Afastamento Preventivo', '03-122');
INSERT INTO `ocorrencia` VALUES ('13', 'Afastamento Sindicância', '03-121');
INSERT INTO `ocorrencia` VALUES ('14', 'Alistar como Eleitor', '03-125');
INSERT INTO `ocorrencia` VALUES ('15', 'Aposentadoria', '05-000');
INSERT INTO `ocorrencia` VALUES ('16', 'Atraso ou Saída Antecipada', '03-141');
INSERT INTO `ocorrencia` VALUES ('17', 'Ausência Prevista', '03-050');
INSERT INTO `ocorrencia` VALUES ('18', 'Casamento', '03-126');
INSERT INTO `ocorrencia` VALUES ('19', 'Comparecimento a Congresso, Conferência ou Similares', '03-145');
INSERT INTO `ocorrencia` VALUES ('20', 'Compensação', '00-001');
INSERT INTO `ocorrencia` VALUES ('21', 'Condenação a Pena Privativa de Liberdade', '03-128');
INSERT INTO `ocorrencia` VALUES ('22', 'Curso - ESG', '03-139');
INSERT INTO `ocorrencia` VALUES ('23', 'Demissão', '02-114');
INSERT INTO `ocorrencia` VALUES ('24', 'Deslocamento para Nova Sede', '03-151');
INSERT INTO `ocorrencia` VALUES ('25', 'Doação Voluntária de Sangue', '03-124');
INSERT INTO `ocorrencia` VALUES ('26', 'Exclusão por Decisão Judicial', '02-110');
INSERT INTO `ocorrencia` VALUES ('27', 'Exoneração Cargo Comissionado', '02-108');
INSERT INTO `ocorrencia` VALUES ('28', 'Exoneração Cargo Comissionado', '02-109');
INSERT INTO `ocorrencia` VALUES ('29', 'Exoneração Cargo Efetivo, à pedido', '02-105');
INSERT INTO `ocorrencia` VALUES ('30', 'Exoneração Cargo Efetivo', '02-106');
INSERT INTO `ocorrencia` VALUES ('31', 'Exoneração Cargo Efetivo', '02-107');
INSERT INTO `ocorrencia` VALUES ('32', 'Falecimento do Servidor', '02-101');
INSERT INTO `ocorrencia` VALUES ('33', 'Falecimento', '03-127');
INSERT INTO `ocorrencia` VALUES ('34', 'Falta Justificada', '03-143');
INSERT INTO `ocorrencia` VALUES ('35', 'Falta não Justificada', '03-142');
INSERT INTO `ocorrencia` VALUES ('36', 'Falta por Greve', '03-146');
INSERT INTO `ocorrencia` VALUES ('37', 'Férias', '03-144');
INSERT INTO `ocorrencia` VALUES ('38', 'Hora-Extra', '00-002');
INSERT INTO `ocorrencia` VALUES ('39', 'Inquérito Policial', '03-008');
INSERT INTO `ocorrencia` VALUES ('40', 'Júri', '03-147');
INSERT INTO `ocorrencia` VALUES ('41', 'Licença Adoção ou Guarda Judicial', '03-115');
INSERT INTO `ocorrencia` VALUES ('42', 'Licença Adoção ou Guarda Judicial', '03-149');
INSERT INTO `ocorrencia` VALUES ('43', 'Licença Gestante', '03-114');
INSERT INTO `ocorrencia` VALUES ('44', 'Licença para Atividade Política', '03-137');
INSERT INTO `ocorrencia` VALUES ('45', 'Licença para Atividade Política', '03-136');
INSERT INTO `ocorrencia` VALUES ('46', 'Licença para o Desempenho de Mandato Classista', '03-105');
INSERT INTO `ocorrencia` VALUES ('47', 'Licença para Tratamento da Própria Saúde', '03-113');
INSERT INTO `ocorrencia` VALUES ('48', 'Licença para Trato de Enteresse Particular', '03-104');
INSERT INTO `ocorrencia` VALUES ('49', 'Licença Paternidade', '03-123');
INSERT INTO `ocorrencia` VALUES ('50', 'Licença por Convocação Militar', '03-102');
INSERT INTO `ocorrencia` VALUES ('51', 'Licença por Doença em Pessoa da Família', '03-100');
INSERT INTO `ocorrencia` VALUES ('52', 'Licença por Doença em Pessoa da Família', '03-133');
INSERT INTO `ocorrencia` VALUES ('53', 'Licença por Doença Especificada em Lei', '03-117');
INSERT INTO `ocorrencia` VALUES ('54', 'Licença por Motivo de Acidente em Serviço ou Doença Profissional', '03-116');
INSERT INTO `ocorrencia` VALUES ('55', 'Licença Prêmio por Assiduidade', '03-103');
INSERT INTO `ocorrencia` VALUES ('56', 'Lotação Provisória - Afastamento para Acompanhar Cônjuge ou Companheiro', '03-135');
INSERT INTO `ocorrencia` VALUES ('57', 'Participação em Competição Desportiva Nacional ou Exterior', '03-129');
INSERT INTO `ocorrencia` VALUES ('58', 'Participação em Processo de Liquidação em Outro Órgão', '03-138');
INSERT INTO `ocorrencia` VALUES ('59', 'Participação em Programa de Treinamento', '03-130');
INSERT INTO `ocorrencia` VALUES ('60', 'Penalidade Disciplinar', '03-119');
INSERT INTO `ocorrencia` VALUES ('61', 'Posse em outro Cargo Inacumulável', '02-122');
INSERT INTO `ocorrencia` VALUES ('62', 'Redistribuição', '02-100');
INSERT INTO `ocorrencia` VALUES ('63', 'Remoção à Pedido', '02-103');
INSERT INTO `ocorrencia` VALUES ('64', 'Remoção de Ofício', '02-104');
INSERT INTO `ocorrencia` VALUES ('65', 'Retorno ao Órgão de Origem', '02-102');
INSERT INTO `ocorrencia` VALUES ('66', 'Suspensão Disciplinar', '03-118');
INSERT INTO `ocorrencia` VALUES ('67', 'Transferência à Pedido', '02-111');
INSERT INTO `ocorrencia` VALUES ('68', 'Transferência de Ofício', '02-112');
INSERT INTO `ocorrencia` VALUES ('69', 'Viagem à Serviço', '03-150');
INSERT INTO `ocorrencia` VALUES ('70', 'Acidente de Trabalho - CLT', '03-030');
INSERT INTO `ocorrencia` VALUES ('71', 'Aposentadoria Pelo INSS - CLT', '02-031');
INSERT INTO `ocorrencia` VALUES ('72', 'Auxílio Doença - CLT', '03-029');
INSERT INTO `ocorrencia` VALUES ('73', 'Casamento - CLT', '03-037');
INSERT INTO `ocorrencia` VALUES ('74', 'Demissão - CLT', '02-011');
INSERT INTO `ocorrencia` VALUES ('75', 'Dispensa de Emprego por Justa causa - CLT', '02-010');
INSERT INTO `ocorrencia` VALUES ('76', 'Dispensa de Emprego a Pedido - CLT', '02-017');
INSERT INTO `ocorrencia` VALUES ('77', 'Dispensa de Emprego sem Justa Causa - CLT', '02-009');
INSERT INTO `ocorrencia` VALUES ('78', 'Falecimento Pessoa da Família - CLT', '03-040');
INSERT INTO `ocorrencia` VALUES ('79', 'Licença Gestante - CLT', '03-014');
INSERT INTO `ocorrencia` VALUES ('80', 'Licença Para Tratamento de Saúde - CLT', '03-018');
INSERT INTO `ocorrencia` VALUES ('81', 'Suspensão Contrato de Trabalho - CLT', '03-041');
INSERT INTO `ocorrencia` VALUES ('82', 'Término de contrato - CLT', '02-030');

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `afastamento`
--
ALTER TABLE `afastamento`
  ADD CONSTRAINT `FK_afastamento_docente` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_afastamento_ocorrencia` FOREIGN KEY (`id_ocorrencia`) REFERENCES `ocorrencia` (`id_ocorrencia`) ON UPDATE CASCADE;

--
-- Restrições para tabelas `exercicio`
--
ALTER TABLE `exercicio`
  ADD CONSTRAINT `FK_exercicio_curso` FOREIGN KEY (`id_curso`) REFERENCES `curso` (`id_curso`) ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_exercicio_docente` FOREIGN KEY (`id_docente`) REFERENCES `docente` (`id_docente`) ON UPDATE CASCADE;
SET FOREIGN_KEY_CHECKS=1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
