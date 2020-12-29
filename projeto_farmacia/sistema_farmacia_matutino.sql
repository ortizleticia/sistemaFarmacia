-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 26-Nov-2020 às 15:40
-- Versão do servidor: 5.7.12
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_farmacia_matutino`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codcategoria` int(11) NOT NULL,
  `categoria` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codcategoria`, `categoria`) VALUES
(3, 'Teste1'),
(8, '8'),
(9, 'Teste2'),
(11, 'Testefinal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidade`
--

CREATE TABLE `cidade` (
  `codcidade` int(11) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cidade`
--

INSERT INTO `cidade` (`codcidade`, `cidade`, `uf`) VALUES
(1, 'SÃ£o Paulo', 'SP'),
(3, 'SÃ£o Bernardo do Campo', 'SP'),
(4, 'Rio Grande da Serra', 'SP'),
(8, '9', '9'),
(11, 'testefinal', 'tf');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entrada`
--

CREATE TABLE `entrada` (
  `codentrada` int(11) NOT NULL,
  `transportadora_codtransportadora` int(11) NOT NULL,
  `dataped` varchar(11) NOT NULL,
  `dataentr` varchar(11) NOT NULL,
  `total` varchar(45) NOT NULL,
  `frete` varchar(45) NOT NULL,
  `numnf` int(11) NOT NULL,
  `imposto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entrada`
--

INSERT INTO `entrada` (`codentrada`, `transportadora_codtransportadora`, `dataped`, `dataentr`, `total`, `frete`, `numnf`, `imposto`) VALUES
(0, 4, '0000-00-00', '0000-00-00', '0.00', '0.00', 0, '0.00'),
(11, 8, '2020-11-11', '2020-11-11', '12', '11', 11, '11'),
(42, 4, '2020-11-19', '2020-11-19', '10.00', '10.00', 10, '10.00'),
(45, 4, '2020-11-01', '2020-11-01', '10.00', '10.00', 10, '10.00'),
(48, 4, '2020-11-01', '2020-11-01', '10.00', '10.00', 10, '10.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `codfornecedor` int(11) NOT NULL,
  `cidade_codcidade` int(11) NOT NULL,
  `fornecedor` varchar(45) NOT NULL,
  `num` int(11) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `contato` varchar(45) NOT NULL,
  `cnpj` varchar(18) NOT NULL,
  `insc` varchar(45) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `endereco` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`codfornecedor`, `cidade_codcidade`, `fornecedor`, `num`, `bairro`, `cep`, `contato`, `cnpj`, `insc`, `tel`, `endereco`) VALUES
(7, 8, '8', 8, '8', '8', '8', '8', '8', '8', '8'),
(8, 8, '8', 8, '8', '8', '8', '8', '8', '8', '8'),
(11, 11, 'testefinal', 11, 'testefinal', '11', '11', '11', '11', '11', 'testefinal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itementrada`
--

CREATE TABLE `itementrada` (
  `coditementrada` int(11) NOT NULL,
  `produto_codproduto` int(11) NOT NULL,
  `entrada_codentrada` int(11) NOT NULL,
  `lote` varchar(45) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` double(4,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itementrada`
--

INSERT INTO `itementrada` (`coditementrada`, `produto_codproduto`, `entrada_codentrada`, `lote`, `qtde`, `valor`) VALUES
(11, 11, 11, '12', 12, 11.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemsaida`
--

CREATE TABLE `itemsaida` (
  `coditemsaida` int(11) NOT NULL,
  `saida_codsaida` int(11) NOT NULL,
  `produto_codproduto` int(11) NOT NULL,
  `lote` varchar(45) NOT NULL,
  `qtde` int(11) NOT NULL,
  `valor` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itemsaida`
--

INSERT INTO `itemsaida` (`coditemsaida`, `saida_codsaida`, `produto_codproduto`, `lote`, `qtde`, `valor`) VALUES
(11, 11, 11, '12', 12, '12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `codloja` int(11) NOT NULL,
  `cidade_codcidade` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `num` int(11) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `tel` varchar(14) NOT NULL,
  `insc` varchar(45) NOT NULL,
  `cnpj` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`codloja`, `cidade_codcidade`, `nome`, `endereco`, `num`, `bairro`, `tel`, `insc`, `cnpj`) VALUES
(1, 1, 'Teste3', 'Teste3', 2, 'Teste2', '02', '02', '02'),
(8, 8, '8', '8', 8, '8', '8', '8', '8'),
(11, 11, 'testefinal', 'testefinal', 11, 'testefinal', '11', '11', '11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `codproduto` int(11) NOT NULL,
  `categoria_codcategoria` int(11) NOT NULL,
  `fornecedor_codfornecedor` int(11) NOT NULL,
  `descricao` varchar(45) NOT NULL,
  `peso` varchar(8) NOT NULL,
  `controlado` varchar(45) NOT NULL,
  `qtdemin` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`codproduto`, `categoria_codcategoria`, `fornecedor_codfornecedor`, `descricao`, `peso`, `controlado`, `qtdemin`) VALUES
(8, 8, 8, '8', '8', 'null', 8),
(10, 8, 8, '8', '8', '8', 8),
(11, 11, 11, 'testefinal', '11', '1', 11);

-- --------------------------------------------------------

--
-- Estrutura da tabela `saida`
--

CREATE TABLE `saida` (
  `codsaida` int(11) NOT NULL,
  `loja_codloja` int(11) NOT NULL,
  `transportadora_codtransportadora` int(11) NOT NULL,
  `total` varchar(45) NOT NULL,
  `frete` varchar(45) NOT NULL,
  `imposto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `saida`
--

INSERT INTO `saida` (`codsaida`, `loja_codloja`, `transportadora_codtransportadora`, `total`, `frete`, `imposto`) VALUES
(8, 8, 8, '8', '8', '8'),
(9, 8, 8, '9', '9', '9'),
(11, 11, 11, '11', '11', '11'),
(12, 11, 11, '12', '14', '12');

-- --------------------------------------------------------

--
-- Estrutura da tabela `transportadora`
--

CREATE TABLE `transportadora` (
  `codtransportadora` int(11) NOT NULL,
  `cidade_codcidade` int(11) NOT NULL,
  `transportadora` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `num` int(11) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cep` char(9) NOT NULL,
  `cnpj` char(18) NOT NULL,
  `insc` varchar(45) NOT NULL,
  `contato` varchar(45) NOT NULL,
  `tel` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `transportadora`
--

INSERT INTO `transportadora` (`codtransportadora`, `cidade_codcidade`, `transportadora`, `endereco`, `num`, `bairro`, `cep`, `cnpj`, `insc`, `contato`, `tel`) VALUES
(4, 4, 'Teste2', 'Teste2', 2, 'Teste2', '02', '02', '02', '02', '02'),
(6, 4, 'Teste4', 'Teste4', 3, 'Teste3', '3', '3', '3', '3', '03'),
(8, 3, '8', '8', 8, '8', '8', '8', '8', '8', '8'),
(11, 11, 'testefinal', 'testefinal', 11, 'testefinal', '11', '11', '11', '11', '11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codcategoria`);

--
-- Indexes for table `cidade`
--
ALTER TABLE `cidade`
  ADD PRIMARY KEY (`codcidade`);

--
-- Indexes for table `entrada`
--
ALTER TABLE `entrada`
  ADD PRIMARY KEY (`codentrada`),
  ADD KEY `transportadora_codtransportadora` (`transportadora_codtransportadora`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`codfornecedor`),
  ADD KEY `cidade_codcidade` (`cidade_codcidade`);

--
-- Indexes for table `itementrada`
--
ALTER TABLE `itementrada`
  ADD PRIMARY KEY (`coditementrada`),
  ADD KEY `produto_codproduto` (`produto_codproduto`),
  ADD KEY `entrada_codentrada` (`entrada_codentrada`);

--
-- Indexes for table `itemsaida`
--
ALTER TABLE `itemsaida`
  ADD PRIMARY KEY (`coditemsaida`),
  ADD KEY `saida_codsaida` (`saida_codsaida`),
  ADD KEY `produto_codproduto` (`produto_codproduto`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`codloja`),
  ADD KEY `cidade_codcidade` (`cidade_codcidade`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`codproduto`),
  ADD KEY `categoria_codcategoria` (`categoria_codcategoria`),
  ADD KEY `fornecedor_codfornecedor` (`fornecedor_codfornecedor`);

--
-- Indexes for table `saida`
--
ALTER TABLE `saida`
  ADD PRIMARY KEY (`codsaida`),
  ADD KEY `loja_codloja` (`loja_codloja`),
  ADD KEY `transportadora_codtransportadora` (`transportadora_codtransportadora`);

--
-- Indexes for table `transportadora`
--
ALTER TABLE `transportadora`
  ADD PRIMARY KEY (`codtransportadora`),
  ADD KEY `cidade_codcidade` (`cidade_codcidade`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `entrada`
--
ALTER TABLE `entrada`
  ADD CONSTRAINT `entrada_ibfk_1` FOREIGN KEY (`transportadora_codtransportadora`) REFERENCES `transportadora` (`codtransportadora`);

--
-- Limitadores para a tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD CONSTRAINT `fornecedor_ibfk_1` FOREIGN KEY (`cidade_codcidade`) REFERENCES `cidade` (`codcidade`);

--
-- Limitadores para a tabela `itementrada`
--
ALTER TABLE `itementrada`
  ADD CONSTRAINT `itementrada_ibfk_1` FOREIGN KEY (`produto_codproduto`) REFERENCES `produto` (`codproduto`),
  ADD CONSTRAINT `itementrada_ibfk_2` FOREIGN KEY (`entrada_codentrada`) REFERENCES `entrada` (`codentrada`);

--
-- Limitadores para a tabela `itemsaida`
--
ALTER TABLE `itemsaida`
  ADD CONSTRAINT `itemsaida_ibfk_1` FOREIGN KEY (`saida_codsaida`) REFERENCES `saida` (`codsaida`),
  ADD CONSTRAINT `itemsaida_ibfk_2` FOREIGN KEY (`produto_codproduto`) REFERENCES `produto` (`codproduto`);

--
-- Limitadores para a tabela `loja`
--
ALTER TABLE `loja`
  ADD CONSTRAINT `loja_ibfk_1` FOREIGN KEY (`cidade_codcidade`) REFERENCES `cidade` (`codcidade`);

--
-- Limitadores para a tabela `produto`
--
ALTER TABLE `produto`
  ADD CONSTRAINT `produto_ibfk_1` FOREIGN KEY (`categoria_codcategoria`) REFERENCES `categoria` (`codcategoria`),
  ADD CONSTRAINT `produto_ibfk_2` FOREIGN KEY (`fornecedor_codfornecedor`) REFERENCES `fornecedor` (`codfornecedor`);

--
-- Limitadores para a tabela `saida`
--
ALTER TABLE `saida`
  ADD CONSTRAINT `saida_ibfk_1` FOREIGN KEY (`loja_codloja`) REFERENCES `loja` (`codloja`),
  ADD CONSTRAINT `saida_ibfk_2` FOREIGN KEY (`transportadora_codtransportadora`) REFERENCES `transportadora` (`codtransportadora`);

--
-- Limitadores para a tabela `transportadora`
--
ALTER TABLE `transportadora`
  ADD CONSTRAINT `transportadora_ibfk_1` FOREIGN KEY (`cidade_codcidade`) REFERENCES `cidade` (`codcidade`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
