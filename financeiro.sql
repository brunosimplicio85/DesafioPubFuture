-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Jan-2022 às 22:23
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `financeiro`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alugueis`
--

CREATE TABLE `alugueis` (
  `id` int(11) NOT NULL,
  `imovel` int(11) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ativo` varchar(5) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `alugueis`
--

INSERT INTO `alugueis` (`id`, `imovel`, `corretor`, `valor`, `ativo`, `data`) VALUES
(1, 137, '555.555.555-66', '750.00', 'Sim', '2020-07-09');

-- --------------------------------------------------------

--
-- Estrutura da tabela `bairros`
--

CREATE TABLE `bairros` (
  `id` int(11) NOT NULL,
  `nome` varchar(60) NOT NULL,
  `cidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `bairros`
--

INSERT INTO `bairros` (`id`, `nome`, `cidade`) VALUES
(1, 'Cabana 3', 1),
(2, 'Vila Oeste', 1),
(3, 'Piratininga', 1),
(4, 'Serra Verde', 1),
(5, 'Ipiranga', 1),
(6, 'Jabotica', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cidades`
--

CREATE TABLE `cidades` (
  `id` int(11) NOT NULL,
  `nome` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cidades`
--

INSERT INTO `cidades` (`id`, `nome`) VALUES
(1, 'Belo Horizonte'),
(2, 'Contagem'),
(3, 'Jaboticatubas'),
(4, 'Santa Luzia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compradores`
--

CREATE TABLE `compradores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(20) NOT NULL,
  `doc` varchar(25) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `corretor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compradores`
--

INSERT INTO `compradores` (`id`, `nome`, `tipo_pessoa`, `doc`, `telefone`, `endereco`, `corretor`) VALUES
(1, 'Marcos Campos', 'Fisica', '111.111.111-11', '(11) 11111-111', 'Rua CC', '555.555.555-66'),
(2, 'Matheus Silva', 'Fisica', '111.111.111-20', '(11) 11111-111', 'Rua C', '555.555.555-66'),
(3, 'Carla Silva', 'Fisica', '111.111.111-19', '(11) 11111-111', 'Rua X', '555.555.555-66'),
(8, 'Empresa X', 'Juridica', '58.588.888/8888-88', '(88) 88888-8888', 'Rua 5', '555.555.555-66');

-- --------------------------------------------------------

--
-- Estrutura da tabela `corretores`
--

CREATE TABLE `corretores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `descricao` varchar(90) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `corretores`
--

INSERT INTO `corretores` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`, `descricao`, `twitter`, `facebook`) VALUES
(1, 'Marcelo Silva', '555.555.555-55', '(22) 22222-2222', 'marcelo@hotmail.com', 'Rua A', '1593540722860agent-1.jpg', NULL, NULL, NULL),
(2, 'Paloma Campos', '555.555.555-15', '(22) 22222-2233', 'paloma@hotmail.com', 'Rua Almeida Campos 150', '1593540760968agent-5.jpg', NULL, NULL, NULL),
(5, 'Marta SIlva', '645.555.555-55', '(99) 88888-8855', 'marta@hotmail.com', 'Rua XX', '1593544631752profile-agent.jpg', NULL, NULL, NULL),
(6, 'Pedro Freitas', '594.555.454-54', '(65) 55555-5555', 'pedro@hotmail.com', 'Rua A', '1593544655113agent-4.jpg', 'Enquanto não encontrar sua casa dos sonhos eu não irei desistir!!', NULL, NULL),
(13, 'Corretor Teste', '555.555.555-66', '(31) 97527-5084', 'corretor@hotmail.com', 'Rua Almeida Campos 150', '1593546386210agent-2.jpg', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'https://www.facebook.com/hugovasconcelosfreitas/', 'https://www.facebook.com/hugovasconcelosfreitas/');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagens`
--

CREATE TABLE `imagens` (
  `id` int(11) NOT NULL,
  `id_imovel` int(11) NOT NULL,
  `imagem` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imagens`
--

INSERT INTO `imagens` (`id`, `id_imovel`, `imagem`) VALUES
(1, 135, '1594072227006property-1.jpg'),
(2, 135, '1594072410040property-9.jpg'),
(3, 135, '1594072440218property-6.jpg'),
(4, 135, '1594072572906property-6.jpg'),
(8, 135, '1594076237145property-2.jpg'),
(10, 138, '1594076269890property-1.jpg'),
(11, 138, '1594076273235property-2.jpg'),
(12, 138, '1594076276652property-3.jpg'),
(13, 138, '1594076279844property-7.jpg'),
(14, 138, '1594076284582property-9.jpg'),
(15, 135, '1594166732975hero-3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `id` int(11) NOT NULL,
  `vendedor` varchar(25) NOT NULL,
  `corretor` varchar(25) NOT NULL,
  `titulo` varchar(60) NOT NULL,
  `descricao` varchar(1000) NOT NULL,
  `tipo` int(11) NOT NULL,
  `cidade` int(11) NOT NULL,
  `bairro` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `ano` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `quartos` int(11) NOT NULL,
  `banheiros` int(11) NOT NULL,
  `suites` int(11) NOT NULL,
  `garagens` int(11) NOT NULL,
  `piscinas` int(11) NOT NULL,
  `img_principal` varchar(100) NOT NULL,
  `img_planta` varchar(100) NOT NULL,
  `img_banner` varchar(100) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `status` varchar(25) NOT NULL,
  `condicao` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `imoveis`
--

INSERT INTO `imoveis` (`id`, `vendedor`, `corretor`, `titulo`, `descricao`, `tipo`, `cidade`, `bairro`, `valor`, `ano`, `visitas`, `area`, `quartos`, `banheiros`, `suites`, `garagens`, `piscinas`, `img_principal`, `img_planta`, `img_banner`, `endereco`, `status`, `condicao`) VALUES
(135, '99.999.999/9999-99', '555.555.555-66', 'Apartamento 3 Quartos', 'Apartamento com ....', 4, 1, 3, '180000.00', 1990, 0, 75, 3, 2, 1, 6, 0, '1594060832860property-8.jpg', '1594061927286property-8.jpg', '1594151051512hero-1.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Usado'),
(136, '111.111.111-11', '555.555.555-66', 'Casa Grande', '', 3, 3, 6, '680000.00', 2010, 0, 850, 4, 4, 2, 6, 1, '1594076465157property-6.jpg', 'sem-img.jpg', '1594151110324hero-2.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Usado'),
(137, '111.111.111-11', '555.555.555-66', 'Apartamento Barato', '', 4, 1, 1, '750.00', 2015, 0, 65, 2, 1, 0, 1, 0, '1594060539311property-3.jpg', 'sem-img.jpg', 'sem-img.jpg', '', 'Para Aluguel', 'Novo'),
(138, '99.999.999/9999-99', '555.555.555-66', 'Casa Germinada', '', 6, 1, 4, '550.00', 1990, 0, 69, 3, 1, 1, 1, 1, '1594076263710property-6.jpg', '1594135607520comparison-1.jpg', '1594157599603hero-2.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Planta'),
(169, '99.999.999/9999-99', '555.555.555-66', 'Cobertura Luxuosa', 'fasfdasf', 4, 1, 1, '500000.00', 0, 0, 0, 7, 0, 0, 3, 0, '1594076507519property-9.jpg', 'null', '1594151067333hero-3.jpg', 'fdsfsaf', 'Para Venda', 'Usado'),
(170, '99.999.999/9999-99', '555.555.555-66', 'Apartamento 2 Quartos', '', 4, 1, 1, '600000.00', 0, 0, 250, 8, 0, 0, 7, 0, '1594321775530property-5.jpg', 'sem-img.jpg', '1594151082107hero-2.jpg', '', 'Para Venda', 'Usado'),
(171, '99.999.999/9999-99', '555.555.555-66', 'Casarão 5 Quartos', 'Casa com ....', 4, 1, 1, '980000.00', 2017, 3, 1400, 5, 4, 2, 4, 1, '1594321911680comparison-1.jpg', 'sem-img.jpg', '1594151094510hero-1.jpg', 'Rua Almeida Campos 150', 'Para Venda', 'Usado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tarefas`
--

CREATE TABLE `tarefas` (
  `id` int(11) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `data` date NOT NULL,
  `hora` time NOT NULL,
  `id_imovel` varchar(10) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tesoureiros`
--

CREATE TABLE `tesoureiros` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `descricao` varchar(90) DEFAULT NULL,
  `twitter` varchar(150) DEFAULT NULL,
  `facebook` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tesoureiros`
--

INSERT INTO `tesoureiros` (`id`, `nome`, `cpf`, `telefone`, `email`, `endereco`, `foto`, `descricao`, `twitter`, `facebook`) VALUES
(19, 'Tesoureiro Teste', '777.777.777-77', '(33) 33333-3333', 'tesoureiro@hotmail.com', 'Rua A', '1594322561490agent-3.jpg', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipos`
--

CREATE TABLE `tipos` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `imagem` varchar(100) NOT NULL,
  `imoveis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tipos`
--

INSERT INTO `tipos` (`id`, `nome`, `imagem`, `imoveis`) VALUES
(1, 'Chacara', '1594139914170property-9.jpg', 0),
(2, 'Sitios', '', 0),
(3, 'Casa', '1594139895966comparison-2.jpg', 1),
(4, 'Apartamento', '1594139880345comparison-1.jpg', 5),
(5, 'Cobertura', '', 0),
(6, 'Casa Germinada', '1594139905351property-2.jpg', 1),
(7, 'Lotes', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(35) NOT NULL,
  `nivel` varchar(35) NOT NULL,
  `foto` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `foto`) VALUES
(1, 'Administrador', '111.111.111.-11', 'admin@hotmail.com', '', 'admin', '1593531424280hugo-profile.jpeg'),
(3, 'Corretor Teste', '555.555.555-66', 'corretor@hotmail.com', '123', 'corretor', '1593546386210agent-2.jpg'),
(9, 'Tesoureiro Teste', '777.777.777-77', 'tesoureiro@hotmail.com', '123', 'tesoureiro', '1594322561490agent-3.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `imovel` int(11) NOT NULL,
  `corretor` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `pago` varchar(5) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `imovel`, `corretor`, `valor`, `pago`, `data`) VALUES
(2, 135, '555.555.555-66', '185000.00', 'Não', '2020-07-09'),
(3, 138, '555.555.555-66', '550.00', 'Não', '2020-07-09'),
(4, 136, '555.555.555-66', '680000.00', 'Não', '2020-07-09'),
(5, 171, '555.555.555-66', '980000.00', 'Não', '2020-07-01');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedores`
--

CREATE TABLE `vendedores` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `tipo_pessoa` varchar(20) NOT NULL,
  `doc` varchar(25) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(100) NOT NULL,
  `corretor` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendedores`
--

INSERT INTO `vendedores` (`id`, `nome`, `tipo_pessoa`, `doc`, `telefone`, `endereco`, `corretor`) VALUES
(9, 'Paula Campos', 'Fisica', '111.111.111-11', '(55) 55555-5555', 'Rua C', '555.555.555-66'),
(10, 'Empreza Zx', 'Juridica', '99.999.999/9999-99', '(99) 99999-9999', 'Rua Almeida Campos 150', '555.555.555-66');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alugueis`
--
ALTER TABLE `alugueis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `bairros`
--
ALTER TABLE `bairros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `cidades`
--
ALTER TABLE `cidades`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `compradores`
--
ALTER TABLE `compradores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `corretores`
--
ALTER TABLE `corretores`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imagens`
--
ALTER TABLE `imagens`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tarefas`
--
ALTER TABLE `tarefas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tesoureiros`
--
ALTER TABLE `tesoureiros`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tipos`
--
ALTER TABLE `tipos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `vendedores`
--
ALTER TABLE `vendedores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alugueis`
--
ALTER TABLE `alugueis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `bairros`
--
ALTER TABLE `bairros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `cidades`
--
ALTER TABLE `cidades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `compradores`
--
ALTER TABLE `compradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `corretores`
--
ALTER TABLE `corretores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `imagens`
--
ALTER TABLE `imagens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT de tabela `tarefas`
--
ALTER TABLE `tarefas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tesoureiros`
--
ALTER TABLE `tesoureiros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `tipos`
--
ALTER TABLE `tipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de tabela `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `vendedores`
--
ALTER TABLE `vendedores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
