-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Abr-2019 às 20:19
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `livraria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `autores`
--

CREATE TABLE `autores` (
  `autor_id` int(10) UNSIGNED NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `dt_nasc` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `autores`
--

INSERT INTO `autores` (`autor_id`, `nome`, `email`, `dt_nasc`) VALUES
(1, 'Edson Gonçalves', 'edson@integrator.com.br', '1979-04-11'),
(17, 'André Gonçalves 2', 'andre@integrator.com.br', '1983-11-11'),
(40, 'Edna Gonçalves', 'edna@integrator.com.br', '1980-03-30'),
(41, 'Mark W. Baker', 'makbak@makbak.com', '1965-01-01'),
(42, 'Laurie Beth Jones', 'lauriebj@lauriebj.com', '1952-03-30'),
(44, 'Zig Ziglar', 'zigziglar@zigziglar.com', '1960-04-11'),
(45, 'Jonas Jacobi', 'jonasj@jonasj.com', '1977-01-01'),
(46, 'John R. Fallows', 'john@jrfallows.com', '1976-01-01'),
(53, 'tiago teste 1804 1646', 'tiago@gmail.com', '2018-04-18'),
(54, 'tiago', 'tiago@gmail', '2018-04-18'),
(55, 'tiago 2504', 'tiago@gmail', '1970-01-01'),
(56, 'tiago', 'tiago', '1995-07-14');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `cpf` varchar(12) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `logradouro` varchar(100) NOT NULL,
  `cidade` varchar(30) NOT NULL,
  `estado` varchar(2) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `data_nascimento` date NOT NULL,
  `email` varchar(20) NOT NULL,
  `senha` varchar(12) NOT NULL,
  `rg` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `editora`
--

CREATE TABLE `editora` (
  `editora_id` int(10) UNSIGNED NOT NULL,
  `editora_nome` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `editora`
--

INSERT INTO `editora` (`editora_id`, `editora_nome`) VALUES
(1, 'Bookman'),
(2, 'Ciencia Moderna'),
(3, 'Campus'),
(4, 'Cultura');

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros`
--

CREATE TABLE `livros` (
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `edicao_num` int(10) UNSIGNED DEFAULT NULL,
  `ano_publicacao` int(11) DEFAULT NULL,
  `descricao` text,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros`
--

INSERT INTO `livros` (`isbn`, `titulo`, `edicao_num`, `ano_publicacao`, `descricao`, `preco`) VALUES
('1-59059-580-7', 'Pro JSF and Ajax', 1, 0, '', 95),
('85-7393-436-0', 'Dominando o JBuilder X', 1, 0, '', 76),
('85-7393-486-7', 'Dominando Eclipse', 1, 0, 'Desenvolva Java usando a Plata', 54),
('85-7393-494-8', 'OpenOffice.org 2.0 Writer', 1, 0, 'OpenOffice.org 2.0 Writer - Co', 37),
('85-7393-504-9', 'OpenOffice.org 2.0 Calc', 1, 0, '', 37),
('85-7393-505-7', 'OpenOffice.org 2.0 Draw', 1, 0, '', 50),
('85-7393-519-7', 'Dominando NetBeans', 1, 0, 'Domine você também o NetBeans', 105),
('85-7393-531-6', 'CorelDRAW X3', 1, 0, '', 170),
('85-7393-536-7', 'Tomcat: Guia Rápido do Administrador', 1, 0, '', 30),
('85-7393-543-X', 'Dominando AJAX', 2, 0, 'Domine o desenvolvimento de Ja', 65);

-- --------------------------------------------------------

--
-- Estrutura da tabela `livros_backup`
--

CREATE TABLE `livros_backup` (
  `isbn` varchar(13) NOT NULL,
  `titulo` varchar(50) DEFAULT NULL,
  `edicao_num` tinyint(2) UNSIGNED DEFAULT NULL,
  `ano_publicacao` year(4) DEFAULT NULL,
  `descricao` text,
  `dt_exclusao` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `livros_backup`
--

INSERT INTO `livros_backup` (`isbn`, `titulo`, `edicao_num`, `ano_publicacao`, `descricao`, `dt_exclusao`) VALUES
('85-123-1231-1', 'teste 2', 2, 2006, '', '2006-12-03'),
('85-346-1211-1', 'teste', 1, 2006, '', '2006-12-03'),
('11-111-1111-1', 'teste', 1, 2006, '', '2006-12-03'),
('85-7702-041-X', 'Teste e', 1, 2005, '', '2006-12-05'),
('1-59059-580-7', 'Pro JSF and Ajax', 1, 2006, '', '2006-12-05'),
('85-346-1211-0', 'Configurando um Servidor Linux', 1, 2000, '', '2006-12-05'),
('85-7393-493-X', 'Dominando Firebird', 1, 2006, '', '2006-12-05'),
('85-7393-495-6', 'OpenOffice.org 2 Base', 1, 2006, 'Conhecendo a aplicando o banco de dados do OpenOffice.org', '2006-12-05'),
('85-7393-501-4', 'Spring em Ação', 1, 2006, '', '2006-12-05'),
('85-7393-506-5', 'OpenOffice.org 2.0 Impress', 1, 2006, '', '2006-12-05'),
('teste', 'teste de exclusão', 2, 2016, 'Registro para teste de exclusão', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `publicacao`
--

CREATE TABLE `publicacao` (
  `publicacao_id` int(11) NOT NULL,
  `isbn` char(13) DEFAULT NULL,
  `autor_id` int(10) UNSIGNED DEFAULT NULL,
  `editora_id` int(10) UNSIGNED DEFAULT NULL,
  `preco` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `publicacao`
--

INSERT INTO `publicacao` (`publicacao_id`, `isbn`, `autor_id`, `editora_id`, `preco`) VALUES
(1, '85-7393-486-7', 1, 2, 54),
(2, '85-7393-536-7', 41, 2, 170),
(3, '85-7393-519-7', 1, 1, 105),
(4, '85-7393-494-8', 44, 3, 37),
(5, '85-7393-543-X', 46, 1, 65),
(6, '85-7393-436-0', 40, 2, 76),
(7, '1-59059-580-7', 42, 1, 95),
(8, '85-7393-504-9', 44, 3, 50),
(9, '85-7393-505-7', 44, 3, 50),
(10, '85-7393-536-7', 45, 3, 30);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(7) DEFAULT NULL,
  `senha` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `user`, `senha`) VALUES
(1, 'admin', 'admin01'),
(2, 'cliente', 'cliente02');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_livros`
-- (See below for the actual view)
--
CREATE TABLE `vw_livros` (
`nome` varchar(100)
,`titulo` varchar(50)
,`ano_publicacao` int(11)
,`editora_nome` varchar(100)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_livros`
--
DROP TABLE IF EXISTS `vw_livros`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_livros`  AS  select `autores`.`nome` AS `nome`,`livros`.`titulo` AS `titulo`,`livros`.`ano_publicacao` AS `ano_publicacao`,`editora`.`editora_nome` AS `editora_nome` from (((`autores` join `publicacao` on((`autores`.`autor_id` = `publicacao`.`autor_id`))) join `livros` on((`publicacao`.`isbn` = `livros`.`isbn`))) join `editora` on((`publicacao`.`editora_id` = `editora`.`editora_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autores`
--
ALTER TABLE `autores`
  ADD PRIMARY KEY (`autor_id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`cpf`);

--
-- Indexes for table `editora`
--
ALTER TABLE `editora`
  ADD PRIMARY KEY (`editora_id`);

--
-- Indexes for table `livros`
--
ALTER TABLE `livros`
  ADD PRIMARY KEY (`isbn`);

--
-- Indexes for table `publicacao`
--
ALTER TABLE `publicacao`
  ADD PRIMARY KEY (`publicacao_id`),
  ADD KEY `fk_pub` (`isbn`),
  ADD KEY `fk_pub2` (`editora_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `autores`
--
ALTER TABLE `autores`
  MODIFY `autor_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `editora`
--
ALTER TABLE `editora`
  MODIFY `editora_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `publicacao`
--
ALTER TABLE `publicacao`
  MODIFY `publicacao_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `publicacao`
--
ALTER TABLE `publicacao`
  ADD CONSTRAINT `fk_pub` FOREIGN KEY (`isbn`) REFERENCES `livros` (`isbn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pub2` FOREIGN KEY (`editora_id`) REFERENCES `editora` (`editora_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
