-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 05-Jun-2023 às 21:46
-- Versão do servidor: 10.1.29-MariaDB
-- PHP Version: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_escola`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `aluno`
--

CREATE TABLE `aluno` (
  `id_registro` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `dataNascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `aluno`
--

INSERT INTO `aluno` (`id_registro`, `nome`, `dataNascimento`) VALUES
(1, 'Gustavo', '2010-05-02'),
(2, 'Laura', '2009-05-02'),
(3, 'Claudio', '2000-03-19'),
(4, 'Bruno', '2010-02-14'),
(222, 'Luisinho', '2007-02-05');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplina`
--

CREATE TABLE `disciplina` (
  `id_disciplina` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cargaHoraria` int(4) DEFAULT NULL,
  `livro` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `disciplina`
--

INSERT INTO `disciplina` (`id_disciplina`, `nome`, `cargaHoraria`, `livro`) VALUES
(1, 'Invenpatolis', 80, 'Quadrinhos Disney');

-- --------------------------------------------------------

--
-- Estrutura da tabela `matricula`
--

CREATE TABLE `matricula` (
  `id_matricula` int(4) NOT NULL,
  `fk_codigo` int(4) DEFAULT NULL,
  `fk_idRegistro` int(4) DEFAULT NULL,
  `ano` varchar(4) DEFAULT NULL,
  `nota` float(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `matricula`
--

INSERT INTO `matricula` (`id_matricula`, `fk_codigo`, `fk_idRegistro`, `ano`, `nota`) VALUES
(1, NULL, NULL, '2010', 90.00),
(2, NULL, NULL, '2010', 80.00),
(3, NULL, NULL, '2009', 60.00),
(4, NULL, NULL, '2007', 20.00),
(5, NULL, NULL, '2000', 50.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professor`
--

CREATE TABLE `professor` (
  `codigo` int(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `titulacao` enum('grad','espec',' msc','dr') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `professor`
--

INSERT INTO `professor` (`codigo`, `nome`, `email`, `titulacao`) VALUES
(2, 'Arnold', 'arnold@gmail.com', NULL),
(5, 'Robson', 'robson@hotmail.com', 'espec'),
(6, 'Juliano', 'juliano@gmail.com', 'grad'),
(7, 'Gabriel', 'gabriel@yahoo.com', 'dr'),
(90, 'Professor Xavier', 'pardal@disney.com', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codigo` int(4) NOT NULL,
  `fk_idDisciplina` int(4) DEFAULT NULL,
  `sigla` varchar(20) DEFAULT 'CTDS2023-1',
  `nAlunos` int(50) DEFAULT NULL,
  `sala` int(4) DEFAULT NULL,
  `fk_codigo` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codigo`, `fk_idDisciplina`, `sigla`, `nAlunos`, `sala`, `fk_codigo`) VALUES
(0, NULL, 'CTDS2023-1', 30, 10, NULL),
(1, NULL, 'PTLD1950-1', 10, 0, NULL),
(3, NULL, 'CTDS2023-2', 40, 20, NULL),
(4, NULL, 'CTDS2023-3', 50, 5, NULL),
(5, NULL, 'CTDS2023-4', 35, 15, NULL),
(6, NULL, 'CTDS2023-5', 17, 19, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aluno`
--
ALTER TABLE `aluno`
  ADD PRIMARY KEY (`id_registro`);

--
-- Indexes for table `disciplina`
--
ALTER TABLE `disciplina`
  ADD PRIMARY KEY (`id_disciplina`);

--
-- Indexes for table `matricula`
--
ALTER TABLE `matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `fk_codigo` (`fk_codigo`),
  ADD KEY `fk_idRegistro` (`fk_idRegistro`);

--
-- Indexes for table `professor`
--
ALTER TABLE `professor`
  ADD PRIMARY KEY (`codigo`);

--
-- Indexes for table `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codigo`),
  ADD UNIQUE KEY `sigla` (`sigla`),
  ADD KEY `fk_codigo` (`fk_codigo`),
  ADD KEY `fk_idDisciplina` (`fk_idDisciplina`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `disciplina`
--
ALTER TABLE `disciplina`
  MODIFY `id_disciplina` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `matricula`
--
ALTER TABLE `matricula`
  MODIFY `id_matricula` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `matricula`
--
ALTER TABLE `matricula`
  ADD CONSTRAINT `matricula_ibfk_1` FOREIGN KEY (`fk_codigo`) REFERENCES `turma` (`codigo`),
  ADD CONSTRAINT `matricula_ibfk_2` FOREIGN KEY (`fk_idRegistro`) REFERENCES `aluno` (`id_registro`);

--
-- Limitadores para a tabela `turma`
--
ALTER TABLE `turma`
  ADD CONSTRAINT `turma_ibfk_1` FOREIGN KEY (`fk_codigo`) REFERENCES `professor` (`codigo`),
  ADD CONSTRAINT `turma_ibfk_2` FOREIGN KEY (`fk_idDisciplina`) REFERENCES `disciplina` (`id_disciplina`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
