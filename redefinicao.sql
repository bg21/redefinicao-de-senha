-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Abr-2020 às 20:35
-- Versão do servidor: 10.4.6-MariaDB
-- versão do PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `redefinicao`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site_alunos`
--

CREATE TABLE `tb_site_alunos` (
  `id` int(11) NOT NULL,
  `nome_aluno` varchar(255) NOT NULL,
  `email_aluno` varchar(255) NOT NULL,
  `senha_aluno` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site_alunos`
--

INSERT INTO `tb_site_alunos` (`id`, `nome_aluno`, `email_aluno`, `senha_aluno`) VALUES
(1, 'Juliana', 'seuemail@gmail.com', '$2y$10$1HqKnUbCfOfpnkg9Ovi17.DHlyZTleVnbIetA0xVUEAljAKpJMemK'),
(2, 'adfasdfas', 'seuemail@gmail.com', '$2y$10$R37rrDUlJ8et0zEYPSOweuqYP6lEw16M4VAZ2VDzGbEpfcvbuz3d.');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_site_alunos`
--
ALTER TABLE `tb_site_alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_site_alunos`
--
ALTER TABLE `tb_site_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
