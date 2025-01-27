-- Criando o banco de dados
CREATE DATABASE ecommerce;
USE ecommerce;

-- Criando a tabela "Produto"
CREATE TABLE Produto (
    IDProduto INT PRIMARY KEY,
    Nome VARCHAR(45) NOT NULL,
    Categoria VARCHAR(45) NOT NULL,
    Descricao VARCHAR(45) NOT NULL,
    Peso FLOAT NOT NULL,
    Dimensoes VARCHAR(45) NOT NULL
);

-- Criando a tabela "Fornecedor"
CREATE TABLE Fornecedor (
    idFornecedor INT PRIMARY KEY,
    RazaoSocial VARCHAR(45) NOT NULL,
    NomeFantasia VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45) NOT NULL,
    Responsavel VARCHAR(45) NOT NULL,
    Contato VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Telefone VARCHAR(45) NOT NULL
);

-- Criando a tabela "Cliente"
CREATE TABLE Cliente (
    idCliente INT PRIMARY KEY,
    DataCriacaoDaConta DATE NOT NULL,
    Nome VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    DataDeNascimentoOuFundacao DATE NOT NULL,
    Endereco VARCHAR(45) NOT NULL,
    Telefone VARCHAR(45) NOT NULL,
    CPF_CNPJ VARCHAR(45) NOT NULL
);

-- Criando a tabela "Transportadora"
CREATE TABLE Transportadora (
    IDTransportadora INT PRIMARY KEY,
    RazaoSocial VARCHAR(45) NOT NULL,
    NomeFantasia VARCHAR(45) NOT NULL,
    CNPJ VARCHAR(45) NOT NULL,
    Responsavel VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Telefone VARCHAR(45) NOT NULL
);

-- Criando a tabela "CartoesCadastrados"
CREATE TABLE CartoesCadastrados (
    IDCadastro INT PRIMARY KEY,
    Cliente_idCliente INT NOT NULL,
    CPFTitular VARCHAR(45) NOT NULL,
    NumeroDoCartao VARCHAR(45) NOT NULL,
    Bandeira VARCHAR(45) NOT NULL,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Criando a tabela "Estoque"
CREATE TABLE Estoque (
    IDEstoque INT PRIMARY KEY,
    Localizacao VARCHAR(45) NOT NULL,
    Responsavel VARCHAR(45) NOT NULL,
    Email VARCHAR(45) NOT NULL,
    Telefone VARCHAR(45) NOT NULL,
    Quantidade INT NOT NULL,
    ValorUnitario FLOAT NOT NULL,
    Produto_IDProduto INT NOT NULL,
    Fornecedor_idFornecedor INT NOT NULL,
    FOREIGN KEY (Produto_IDProduto) REFERENCES Produto(IDProduto),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor)
);

-- Criando a tabela "Pedido"
CREATE TABLE Pedido (
    IDPedido INT PRIMARY KEY,
    StatusDoPedido VARCHAR(45) NOT NULL,
    Descricao VARCHAR(45) NOT NULL,
    DataDoPedido DATE NOT NULL,
    ValorTotalDoPedido FLOAT NOT NULL,
    DataEntregaPrevista DATE NOT NULL,
    Cliente_idCliente INT NOT NULL,
    FormaDePagamento VARCHAR(45) NOT NULL,
    FOREIGN KEY (Cliente_idCliente) REFERENCES Cliente(idCliente)
);

-- Criando a tabela "Solicitacao"
CREATE TABLE Solicitacao (
    IDSolicitacao INT PRIMARY KEY,
    Pedido_IDPedido INT NOT NULL,
    Fornecedor_idFornecedor INT NOT NULL,
    Produto_IDProduto INT NOT NULL,
    Quantidade INT NOT NULL,
    ValorUnitario FLOAT NOT NULL,
    Estoque_IDEstoque INT NOT NULL,
    Transportadora_IDTransportadora INT NOT NULL,
    ValorFrete FLOAT NOT NULL,
    CodigoDeRastreio VARCHAR(45) NOT NULL,
    StatusDaEntrega VARCHAR(45) NOT NULL,
    PrazoDeEntregaDias INT NOT NULL,
    Garantia VARCHAR(45) NOT NULL,
    ValorFinal FLOAT NOT NULL,
    FOREIGN KEY (Pedido_IDPedido) REFERENCES Pedido(IDPedido),
    FOREIGN KEY (Fornecedor_idFornecedor) REFERENCES Fornecedor(idFornecedor),
    FOREIGN KEY (Produto_IDProduto) REFERENCES Produto(IDProduto),
    FOREIGN KEY (Estoque_IDEstoque) REFERENCES Estoque(IDEstoque),
    FOREIGN KEY (Transportadora_IDTransportadora) REFERENCES Transportadora(IDTransportadora)
);
