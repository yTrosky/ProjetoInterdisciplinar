-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Nov-2022 às 07:32
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `id_cadastro` int(20) NOT NULL,
  `nome_cliente` varchar(160) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`id_cadastro`, `nome_cliente`, `cpf`, `usuario`, `email`, `senha`) VALUES
(18, 'Thainá Ferreira da Silva', '0987678987', 'thainaferreira', 'thaina.ferreira026@gmail.com', 'thaina12345');

-- --------------------------------------------------------

--
-- Estrutura da tabela `desenvolvedores`
--

CREATE TABLE `desenvolvedores` (
  `id_adm` int(20) NOT NULL,
  `nome_adm` varchar(100) NOT NULL,
  `sobrenome_adm` varchar(100) NOT NULL,
  `cpf_adm` varchar(14) NOT NULL,
  `data_nasc` varchar(10) NOT NULL,
  `cargo_adm` varchar(100) NOT NULL,
  `sexo_adm` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `desenvolvedores`
--

INSERT INTO `desenvolvedores` (`id_adm`, `nome_adm`, `sobrenome_adm`, `cpf_adm`, `data_nasc`, `cargo_adm`, `sexo_adm`) VALUES
(36, 'Thainá', 'Ferreira da Silva', '111.111.111-11', '26/04/2005', 'Programador', 'Feminino'),
(37, 'Thiago', 'Cruz Machado', '134.242.423-23', '23/52/3423', 'Programador', 'Masculino'),
(38, 'Renato', 'Moreira Botura da Costa', '193.923.824-29', '09/12/2004', 'Designer', 'Masculino');

-- --------------------------------------------------------

--
-- Estrutura da tabela `problema`
--

CREATE TABLE `problema` (
  `Id_cliente` int(20) NOT NULL COMMENT 'Número de identificação do cliente.',
  `email` varchar(100) NOT NULL,
  `desc_problema` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resolucao`
--

CREATE TABLE `resolucao` (
  `Id_resolução` int(20) DEFAULT NULL COMMENT 'Número de identificação resolução.',
  `Id_produto` int(20) DEFAULT NULL COMMENT 'Número de identificação do produto'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `resolucao_problemassolicit`
--

CREATE TABLE `resolucao_problemassolicit` (
  `Id_resolucao` int(20) DEFAULT NULL COMMENT 'Número de identificação da resolução.',
  `Id_resolucaos` int(20) DEFAULT NULL COMMENT 'Número de identificação da resolução solicitada.',
  `Data_resolucao` date NOT NULL COMMENT 'Data de resolução dos problemas solicitados',
  `Status_resolucao` text NOT NULL COMMENT 'Status da resolução solicitada.',
  `Tempo_solicitado` int(40) NOT NULL COMMENT 'Tempo solicitado para a solução de problemas.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`id_cadastro`);

--
-- Índices para tabela `desenvolvedores`
--
ALTER TABLE `desenvolvedores`
  ADD PRIMARY KEY (`id_adm`);

--
-- Índices para tabela `problema`
--
ALTER TABLE `problema`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `id_cadastro` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `desenvolvedores`
--
ALTER TABLE `desenvolvedores`
  MODIFY `id_adm` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de tabela `problema`
--
ALTER TABLE `problema`
  MODIFY `Id_cliente` int(20) NOT NULL AUTO_INCREMENT COMMENT 'Número de identificação do cliente.', AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
