-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           10.4.22-MariaDB - mariadb.org binary distribution
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Copiando estrutura do banco de dados para aol_5
CREATE DATABASE IF NOT EXISTS `aol_5` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `aol_5`;

-- Copiando estrutura para tabela aol_5.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `id_cliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(110) NOT NULL,
  `contato_cliente` varchar(20) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.clientes: ~12 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`id_cliente`, `nome_cliente`, `contato_cliente`) VALUES
	(1, 'Zé Maria Lopusol', '21 9 2121 2121'),
	(2, 'Maria zé Lopes', '21 9 2121 2121'),
	(3, 'Lopes Maria Zé', '21 9 2121 2121'),
	(4, 'Algusto Camila Zé', '21 9 2121 2121'),
	(5, 'Lucas Andre ', '21 9 2121 2121'),
	(6, 'zé do feijão', '21 9 212 12121'),
	(7, 'João do pé de feijão', '21 9 2121 2121'),
	(8, 'misifi', '21 9 2121 2121'),
	(9, 'misififi', '21 9 2121 2121'),
	(10, 'mira', '21 9 2121 2121'),
	(11, 'joãozim', '21 9 2121 2121'),
	(12, 'joãozinho', '21 9 2121 2121'),
	(13, 'AOL', '21 9 2121 2121');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.funcionarios
CREATE TABLE IF NOT EXISTS `funcionarios` (
  `id_funcionario` int(10) NOT NULL AUTO_INCREMENT,
  `matricula_funcionario` int(10) NOT NULL,
  `nome_funcionario` varchar(110) NOT NULL,
  `cpf_funcionario` varchar(255) NOT NULL,
  `contato_funcionario` varchar(110) NOT NULL,
  `endereco_funcionario` varchar(110) DEFAULT NULL,
  `cargo_funcionario` int(5) NOT NULL,
  PRIMARY KEY (`id_funcionario`),
  UNIQUE KEY `cpf_funcionario` (`cpf_funcionario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.funcionarios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` (`id_funcionario`, `matricula_funcionario`, `nome_funcionario`, `cpf_funcionario`, `contato_funcionario`, `endereco_funcionario`, `cargo_funcionario`) VALUES
	(1, 1, 'John Richard Lopes', '888.787.887-51', '83 9 98959874', 'Rua teste um dois tres', 1),
	(2, 2, 'Yann Brenno', '888.787.887-50', '83 9 98959874', 'Rua Teste do um dois tres', 2),
	(3, 3, 'Brenno Yann', '888.787.887-52', '83 9 98959874', 'Rua Teste do um dois tres', 3),
	(4, 4, 'Lopes Branno', '888.787.887-53', '83 9 98959874', 'Rua Teste do um dois tres', 4),
	(5, 5, 'Calisto Lopes', '888.787.887-54', '83 9 98959874', 'Rua Teste do um dois tres', 5);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.funcionarios_cargo
CREATE TABLE IF NOT EXISTS `funcionarios_cargo` (
  `id_cargo` int(5) NOT NULL AUTO_INCREMENT,
  `nome_cargo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_cargo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.funcionarios_cargo: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `funcionarios_cargo` DISABLE KEYS */;
INSERT INTO `funcionarios_cargo` (`id_cargo`, `nome_cargo`) VALUES
	(1, 'atendente'),
	(2, 'mecanico'),
	(3, 'gerente'),
	(4, 'faxineiro'),
	(5, 'supervisor');
/*!40000 ALTER TABLE `funcionarios_cargo` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.movimento
CREATE TABLE IF NOT EXISTS `movimento` (
  `id_movimento` int(10) NOT NULL AUTO_INCREMENT,
  `id_tipo_movimento` int(10) NOT NULL,
  `id_funcionario` int(10) NOT NULL,
  `id_cliente` int(10) NOT NULL,
  `id_veiculo` int(5) NOT NULL,
  PRIMARY KEY (`id_movimento`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.movimento: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `movimento` DISABLE KEYS */;
INSERT INTO `movimento` (`id_movimento`, `id_tipo_movimento`, `id_funcionario`, `id_cliente`, `id_veiculo`) VALUES
	(1, 1, 1, 1, 1),
	(2, 2, 1, 2, 2),
	(3, 2, 1, 3, 3),
	(4, 3, 1, 4, 4),
	(5, 3, 1, 5, 5);
/*!40000 ALTER TABLE `movimento` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.movimento_tipo
CREATE TABLE IF NOT EXISTS `movimento_tipo` (
  `id_movimento_tipo` int(5) NOT NULL AUTO_INCREMENT,
  `nome_movimento_tipo` varchar(100) NOT NULL,
  PRIMARY KEY (`id_movimento_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.movimento_tipo: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `movimento_tipo` DISABLE KEYS */;
INSERT INTO `movimento_tipo` (`id_movimento_tipo`, `nome_movimento_tipo`) VALUES
	(1, 'Aluguel Veiculo'),
	(2, 'Retirada Veiculo'),
	(3, 'Devolução Veiculo');
/*!40000 ALTER TABLE `movimento_tipo` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.oficina
CREATE TABLE IF NOT EXISTS `oficina` (
  `id_oficina` int(10) NOT NULL AUTO_INCREMENT,
  `cliente_id` int(10) NOT NULL,
  `funcionario_id` int(10) NOT NULL,
  `servico_id` int(10) NOT NULL,
  `id_veiculo` int(10) NOT NULL,
  PRIMARY KEY (`id_oficina`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.oficina: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `oficina` DISABLE KEYS */;
INSERT INTO `oficina` (`id_oficina`, `cliente_id`, `funcionario_id`, `servico_id`, `id_veiculo`) VALUES
	(1, 1, 2, 2, 5),
	(2, 2, 2, 2, 4),
	(3, 3, 2, 3, 3),
	(4, 4, 2, 4, 2),
	(5, 5, 2, 5, 1);
/*!40000 ALTER TABLE `oficina` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.oficina_servico
CREATE TABLE IF NOT EXISTS `oficina_servico` (
  `id_oficina_servico` int(5) NOT NULL AUTO_INCREMENT,
  `nome_oficina_servico` varchar(100) NOT NULL,
  PRIMARY KEY (`id_oficina_servico`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.oficina_servico: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `oficina_servico` DISABLE KEYS */;
INSERT INTO `oficina_servico` (`id_oficina_servico`, `nome_oficina_servico`) VALUES
	(1, 'troca de pneu'),
	(2, 'troca de oleo'),
	(3, 'revisão geral'),
	(4, 'calibragem geral'),
	(5, 'checagem de fusivel');
/*!40000 ALTER TABLE `oficina_servico` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `login_usuario` varchar(100) NOT NULL,
  `senha_usuario` varchar(100) NOT NULL,
  `nivel_usuario` int(5) NOT NULL,
  `id_funcionario` int(5) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.usuarios: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` (`id_usuario`, `login_usuario`, `senha_usuario`, `nivel_usuario`, `id_funcionario`) VALUES
	(1, 'JohnRichard', '123', 2, 1),
	(2, 'YannBrenno', '123', 3, 2),
	(3, 'BrennoYann', '123', 4, 3),
	(4, 'LopesBranno', '123', 5, 4),
	(5, 'CalistoLopes', '123', 6, 5);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.usuarios_nivel
CREATE TABLE IF NOT EXISTS `usuarios_nivel` (
  `id_usuario_nivel` int(5) NOT NULL AUTO_INCREMENT,
  `nome_usuario_nivel` varchar(30) NOT NULL,
  PRIMARY KEY (`id_usuario_nivel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.usuarios_nivel: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `usuarios_nivel` DISABLE KEYS */;
INSERT INTO `usuarios_nivel` (`id_usuario_nivel`, `nome_usuario_nivel`) VALUES
	(2, 'atendente'),
	(3, 'mecanico'),
	(4, 'administrador'),
	(5, 'faxineiro'),
	(6, 'supervisor');
/*!40000 ALTER TABLE `usuarios_nivel` ENABLE KEYS */;

-- Copiando estrutura para tabela aol_5.veiculos
CREATE TABLE IF NOT EXISTS `veiculos` (
  `id_veiculo` int(100) NOT NULL AUTO_INCREMENT,
  `modelo_veiculo` varchar(100) NOT NULL,
  `ano_veiculo` int(5) NOT NULL,
  `valor_veiculo_locacao` varchar(15) NOT NULL,
  `placa_veiculo` varchar(110) NOT NULL,
  PRIMARY KEY (`id_veiculo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Copiando dados para a tabela aol_5.veiculos: ~5 rows (aproximadamente)
/*!40000 ALTER TABLE `veiculos` DISABLE KEYS */;
INSERT INTO `veiculos` (`id_veiculo`, `modelo_veiculo`, `ano_veiculo`, `valor_veiculo_locacao`, `placa_veiculo`) VALUES
	(1, 'ONIX', 2021, '500', 'ABC-001'),
	(2, 'JOY', 2021, '500', 'ABC-002'),
	(3, 'CRUZE', 2021, '900', 'ABC-003'),
	(4, 'SPIN', 2021, '300', 'ABC-004'),
	(5, 'CAMARO', 2021, '1200', 'ABC-005');
/*!40000 ALTER TABLE `veiculos` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
