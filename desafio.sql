CREATE TABLE carrovenda (
idProduto INT PRIMARY KEY,
nome VARCHAR(100),
cor VARCHAR (100),
categoria VARCHAR (100),
nacionalidade VARCHAR (100),
preco VARCHAR (25),
peso VARCHAR (25),
ano VARCHAR (25)
);

ALTER TABLE carrovenda
MODIFY idProduto INT AUTO_INCREMENT;

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (1, 'Porsche 911 Turbo S', 2023, 'Esportivo de Luxo', 'branco', 'Alemanha',  1600.00,1200000.00);

USE desafiokaua;

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (2, 'Camaro SS', 2024, 'Esportivo', 'amarelo', 'America',  1700.00,350000.00);

USE desafiokaua;

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (3, 'Ferrari 488 GTB', 2024, 'Esportivo', 'vermelho', 'italia',  1470.00,2000000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (4, 'Ferrari 488 GTB', 2024, 'Esportivo', 'vermelho', 'Itália', 1470.00, 2000000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (5, 'Lamborghini Huracán EVO', 2024, 'Esportivo', 'verde', 'Itália', 1422.00, 2500000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (6, 'Audi R8 V10 Performance', 2024, 'Esportivo', 'prata', 'Alemanha', 1680.00, 1200000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (7, 'BMW M4 Competition', 2024, 'Esportivo', 'branco', 'Alemanha', 1800.00, 750000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (8, 'Aston Martin Vantage', 2024, 'Esportivo', 'azul', 'Reino Unido', 1530.00, 1800000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (9, 'Nissan GT-R', 2024, 'Esportivo', 'cinza', 'Japão', 1740.00, 900000.00);

INSERT INTO carrovenda (idProduto, nomeCarro, ano, categoria, cor, nacionalidade, peso, preco)
VALUES (10, 'Jaguar F-Type R', 2024, 'Esportivo', 'amarelo', 'Reino Unido', 1740.00, 1200000.00);


-- Excluir o 4º registro
DELETE FROM carrovenda
WHERE idProduto = 4;

-- Excluir o 7º registro
DELETE FROM carrovenda
WHERE idProduto = 7;


ALTER TABLE carrovenda
ADD COLUMN SemEstoque BOOLEAN;

UPDATE carrovenda
SET SemEstoque = FALSE;


UPDATE carrovenda
SET SemEstoque = TRUE
WHERE idProduto <> 2;


SELECT *
FROM carrovenda
WHERE SemEstoque = TRUE
ORDER BY idProduto ASC
LIMIT 5;

