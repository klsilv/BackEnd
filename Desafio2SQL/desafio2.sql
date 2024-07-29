USE aluguecarros;

CREATE TABLE carros_aluguel (
    idCarro INT AUTO_INCREMENT PRIMARY KEY,  
    nomeCarro VARCHAR(50) NOT NULL,          
    marca VARCHAR(30) NOT NULL,               
    ano INT NOT NULL,                         
    cor VARCHAR(20) NOT NULL,                 
    precoDiario DECIMAL(10, 2) NOT NULL,      
    statusAluguel BOOLEAN NOT NULL DEFAULT FALSE  

    USE aluguecarros;

INSERT INTO carros_aluguel (nomeCarro, marca, ano, cor, precoDiario, statusAluguel)
VALUES
('Ferrari 488 GTB', 'Ferrari', 2024, 'vermelho', 1500.00, FALSE),
('Ford Mustang GT', 'Ford', 2024, 'preto', 800.00, TRUE),
('Audi R8 V10', 'Audi', 2024, 'prata', 1200.00, FALSE),
('Lamborghini Huracán EVO', 'Lamborghini', 2024, 'verde', 2500.00, FALSE),
('Porsche 911 Carrera', 'Porsche', 2024, 'azul', 1800.00, TRUE),
('Chevrolet Camaro SS', 'Chevrolet', 2024, 'amarelo', 950.00, FALSE),
('BMW M4 Competition', 'BMW', 2024, 'branco', 1300.00, TRUE),
('Aston Martin Vantage', 'Aston Martin', 2024, 'cinza', 2200.00, FALSE),
('Nissan GT-R', 'Nissan', 2024, 'cinza', 1400.00, TRUE),
('Jaguar F-Type R', 'Jaguar', 2024, 'laranja', 1600.00, FALSE);


CREATE TABLE clientes (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,    
    nome VARCHAR(100) NOT NULL,                 
    email VARCHAR(100) NOT NULL UNIQUE,         
    telefone VARCHAR(20),                        
    endereco VARCHAR(255),                       
    dataCadastro DATE NOT NULL                   


    USE aluguecarros;

INSERT INTO clientes (nome, email, telefone, endereco, dataCadastro)
VALUES
('João da Silva', 'joao.silva@email.com', '+55 11 98765-4321', 'Rua das Flores, 123, São Paulo, SP', '2024-07-29'),
('Maria Oliveira', 'maria.oliveira@email.com', '+55 21 91234-5678', 'Avenida Brasil, 456, Rio de Janeiro, RJ', '2024-07-29'),
('Carlos Santos', 'carlos.santos@email.com', '+55 31 99876-5432', 'Praça da Liberdade, 789, Belo Horizonte, MG', '2024-07-29'),
('Ana Costa', 'ana.costa@email.com', '+55 61 98765-4321', 'Quadra 12, Bloco C, Brasília, DF', '2024-07-29'),
('Pedro Almeida', 'pedro.almeida@email.com', '+55 41 91234-5678', 'Rua XV de Novembro, 1010, Curitiba, PR', '2024-07-29');


USE aluguecarros; 

CREATE TABLE alugueis_carros (
    idAluguel INT AUTO_INCREMENT PRIMARY KEY,       
    idCarro INT NOT NULL,                          
    idCliente INT NOT NULL,                        
    dataInicio DATE NOT NULL,                      
    dataFim DATE NOT NULL,                         
    valorTotal DECIMAL(10, 2) NOT NULL,           
    FOREIGN KEY (idCarro) REFERENCES carros_aluguel(idCarro), 
    FOREIGN KEY (idCliente) REFERENCES clientes(idCliente),   
    CHECK (dataFim >= dataInicio)                 
);

USE aluguecarros; 

INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 1, '2024-07-30', '2024-08-05', 9000.00),   
(2, 2, '2024-07-29', '2024-07-31', 2400.00),   
(3, 3, '2024-07-31', '2024-08-07', 8400.00),   
(4, 4, '2024-08-01', '2024-08-10', 25000.00),  
(5, 5, '2024-08-02', '2024-08-08', 10800.00);  



USE aluguecarros;

INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 1, '2024-07-01', '2024-07-03', 4500.00), 
(2, 1, '2024-07-05', '2024-07-08', 2400.00), 
(3, 1, '2024-07-10', '2024-07-15', 8400.00), 
(4, 1, '2024-07-18', '2024-07-20', 5000.00), 
(5, 1, '2024-07-22', '2024-07-27', 10800.00), 
(6, 1, '2024-07-30', '2024-08-05', 9000.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(6, 2, '2024-07-01', '2024-07-03', 1600.00),  
(7, 2, '2024-07-05', '2024-07-10', 4800.00),  
(8, 2, '2024-07-12', '2024-07-16', 22000.00), 
(1, 2, '2024-07-18', '2024-07-20', 4500.00),  
(2, 2, '2024-07-22', '2024-07-27', 2400.00),  
(3, 2, '2024-07-30', '2024-08-05', 8400.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(4, 3, '2024-07-01', '2024-07-05', 5000.00),  
(5, 3, '2024-07-08', '2024-07-15', 10800.00), 
(6, 3, '2024-07-18', '2024-07-22', 1600.00), 
(7, 3, '2024-07-25', '2024-07-30', 4800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 4, '2024-07-02', '2024-07-05', 4500.00),  
(2, 4, '2024-07-07', '2024-07-10', 2400.00),  
(3, 4, '2024-07-12', '2024-07-17', 8400.00),  
(4, 4, '2024-07-20', '2024-07-25', 5000.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(5, 5, '2024-07-01', '2024-07-05', 10800.00), 
(6, 5, '2024-07-08', '2024-07-12', 1600.00),  
(7, 5, '2024-07-15', '2024-07-20', 4800.00),  
(8, 5, '2024-07-22', '2024-07-30', 22000.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 2, '2024-07-02', '2024-07-04', 4500.00), 
(2, 2, '2024-07-06', '2024-07-10', 2400.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(3, 4, '2024-07-01', '2024-07-05', 8400.00), 
(4, 4, '2024-07-08', '2024-07-12', 5000.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(5, 5, '2024-07-02', '2024-07-07', 10800.00),
(6, 5, '2024-07-09', '2024-07-15', 1600.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(7, 3, '2024-07-01', '2024-07-05', 4800.00),  
(8, 3, '2024-07-08', '2024-07-12', 22000.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 1, '2024-07-03', '2024-07-06', 4500.00),  
(2, 1, '2024-07-08', '2024-07-12', 2400.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(3, 4, '2024-07-05', '2024-07-10', 8400.00),  
(4, 4, '2024-07-12', '2024-07-16', 5000.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(5, 5, '2024-07-02', '2024-07-07', 10800.00), 
(6, 5, '2024-07-09', '2024-07-15', 1600.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(7, 3, '2024-07-01', '2024-07-05', 4800.00), 
(8, 3, '2024-07-07', '2024-07-12', 22000.00);

USE aluguecarros;


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 5, '2024-07-01', '2024-07-05', 4500.00),  
(2, 5, '2024-07-07', '2024-07-12', 2400.00),  
(3, 5, '2024-07-14', '2024-07-20', 8400.00),  
(4, 5, '2024-07-22', '2024-07-27', 5000.00),  
(5, 5, '2024-07-29', '2024-08-03', 10800.00), 
(6, 5, '2024-08-05', '2024-08-10', 9000.00); 

INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(6, 1, '2024-07-01', '2024-07-03', 1600.00),  
(7, 1, '2024-07-05', '2024-07-10', 4800.00),  
(8, 1, '2024-07-12', '2024-07-17', 22000.00),
(2, 1, '2024-07-27', '2024-08-01', 2400.00),  
(1, 1, '2024-07-20', '2024-07-25', 4500.00),  
(3, 1, '2024-08-03', '2024-08-10', 8400.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(4, 3, '2024-07-01', '2024-07-05', 5000.00), 
(5, 3, '2024-07-07', '2024-07-12', 10800.00),
(6, 3, '2024-07-14', '2024-07-20', 1600.00),  
(7, 3, '2024-07-22', '2024-07-30', 4800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(8, 4, '2024-07-01', '2024-07-05', 22000.00),
(1, 4, '2024-07-07', '2024-07-12', 4500.00), 
(2, 4, '2024-07-14', '2024-07-18', 2400.00), 
(3, 4, '2024-07-20', '2024-07-25', 8400.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(4, 5, '2024-07-01', '2024-07-05', 5000.00), 
(5, 5, '2024-07-07', '2024-07-12', 10800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(6, 2, '2024-07-02', '2024-07-05', 1600.00), 
(7, 2, '2024-07-07', '2024-07-12', 4800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(8, 1, '2024-07-01', '2024-07-05', 22000.00), 
(1, 1, '2024-07-07', '2024-07-10', 4500.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(2, 2, '2024-07-01', '2024-07-04', 2400.00),  
(3, 2, '2024-07-06', '2024-07-10', 8400.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(4, 3, '2024-07-01', '2024-07-05', 5000.00),  
(5, 3, '2024-07-06', '2024-07-12', 10800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(6, 4, '2024-07-01', '2024-07-03', 1600.00),  
(7, 4, '2024-07-05', '2024-07-10', 4800.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(8, 5, '2024-07-01', '2024-07-07', 22000.00),
(1, 5, '2024-07-08', '2024-07-15', 4500.00);  


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(2, 2, '2024-07-01', '2024-07-05', 2400.00),  
(3, 2, '2024-07-07', '2024-07-12', 8400.00); 

 
INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(4, 2, '2024-07-02', '2024-07-06', 5000.00),  
(5, 2, '2024-07-08', '2024-07-13', 10800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(6, 5, '2024-07-01', '2024-07-04', 1600.00), 
(7, 5, '2024-07-05', '2024-07-11', 4800.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(8, 3, '2024-07-02', '2024-07-08', 22000.00); 


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(1, 3, '2024-07-01', '2024-07-05', 4500.00);


INSERT INTO alugueis_carros (idCarro, idCliente, dataInicio, dataFim, valorTotal)
VALUES
(2, 1, '2024-07-01', '2024-07-06', 2400.00);  



USE aluguecarros;

SELECT 
    c.idCliente AS ClienteID,
    c.nome AS NomeCliente,
    SUM(a.valorTotal) AS TotalGasto
FROM 
    clientes c
JOIN 
    alugueis_carros a ON c.idCliente = a.idCliente
GROUP BY 
    c.idCliente, c.nome
ORDER BY 
    TotalGasto DESC;


USE aluguecarros;

SELECT 
    c.idCarro AS CarroID,
    c.nomeCarro AS NomeCarro,
    COUNT(a.idCarro) AS TotalAlugueis
FROM 
    carros_aluguel c
LEFT JOIN 
    alugueis_carros a ON c.idCarro = a.idCarro
GROUP BY 
    c.idCarro, c.nomeCarro
ORDER BY 
    TotalAlugueis DESC;



 
