--
-- Arquivo gerado com SQLiteStudio v3.4.4 em qui nov 16 10:19:44 2023
--
-- Codificação de texto usada: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: cargo
CREATE TABLE IF NOT EXISTS cargo (id_cargo INTEGER PRIMARY KEY, descricao TEXT, salario REAL NOT NULL);
INSERT INTO cargo (id_cargo, descricao, salario) VALUES (1, 'Auxiliar de Atendente', 1100.0);
INSERT INTO cargo (id_cargo, descricao, salario) VALUES (2, 'Atendente', 2310.3);
INSERT INTO cargo (id_cargo, descricao, salario) VALUES (3, 'Gerente', 12314.5);

-- Tabela: cliente
CREATE TABLE IF NOT EXISTS cliente (id_cliente INTEGER PRIMARY KEY, nomec TEXT NOT NULL, id_funcionario INTEGER REFERENCES funcionario (id_funcionario));
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (1, 'Beatriz', 7);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (2, 'José', 1);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (3, 'Beto', 1);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (4, 'Dolores', 2);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (5, 'Ana', 1);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (6, 'Maria', 2);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (7, 'Karol', 3);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (8, 'Orisvaldo', 6);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (9, 'Beth', 5);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (10, 'Mateus', 4);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (11, 'João', 4);
INSERT INTO cliente (id_cliente, nomec, id_funcionario) VALUES (12, 'Adalberto', 5);

-- Tabela: funcionario
CREATE TABLE IF NOT EXISTS funcionario (id_funcionario INTEGER PRIMARY KEY, nomef TEXT NOT NULL, id_cargo INTEGER REFERENCES cargo (id_cargo));
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (1, 'Ednéia', 3);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (2, 'Marlene', 3);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (3, 'Kelly', 3);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (4, 'Patrícia', 2);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (5, 'Valéria', 2);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (6, 'Adilson', 2);
INSERT INTO funcionario (id_funcionario, nomef, id_cargo) VALUES (7, 'Dante', 1);

-- Tabela: roupa
CREATE TABLE IF NOT EXISTS roupa (id_roupa INTEGER PRIMARY KEY, tipo TEXT, valor REAL NOT NULL, id_funcionario INTEGER REFERENCES funcionario (id_funcionario));
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (1, 'bermuda', 49.99, 1);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (2, 'camisa', 79.9, 1);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (3, 'blusa', 99.9, 1);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (4, 'bermuda', 29.99, 2);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (5, 'casaco', 119.9, 2);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (6, 'vestido', 249.99, 3);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (7, 'calça', 49.99, 4);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (8, 'bermuda', 19.99, 4);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (9, 'calça', 69.99, 5);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (10, 'blusa', 35.5, 6);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (11, 'blusa', 999.99, 7);
INSERT INTO roupa (id_roupa, tipo, valor, id_funcionario) VALUES (12, 'vestido', 139.9, 5);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
