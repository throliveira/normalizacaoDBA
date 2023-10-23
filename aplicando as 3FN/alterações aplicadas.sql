-- Remover a coluna NomeCliente da tabela Pedidos
ALTER TABLE Pedidos DROP COLUMN NomeCliente;

-- Criar uma nova tabela ClientesPedidos com PedidoID e ClienteID
CREATE TABLE ClientesPedidos (
    PedidoID INT,
    ClienteID INT,
    PRIMARY KEY (PedidoID, ClienteID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Remover a coluna LivroID da tabela Pedidos
ALTER TABLE Pedidos DROP COLUMN LivroID;

-- Criar uma nova tabela PedidosLivros com PedidoID e LivroID
CREATE TABLE PedidosLivros (
    PedidoID INT,
    LivroID INT,
    Quantidade INT,
    PRIMARY KEY (PedidoID, LivroID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID)
);
-- ou
-- Criar uma nova tabela ItensPedido
CREATE TABLE ItensPedido (
    PedidoID INT,
    LivroID INT,
    Quantidade INT,
    PRIMARY KEY (PedidoID, LivroID),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (LivroID) REFERENCES Livros(LivroID)
);

