--
-- Arquivo gerado com SQLiteStudio v3.4.4 em qui set 28 09:05:40 2023
--
-- Codificação de texto usada: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: automovel
CREATE TABLE IF NOT EXISTS automovel (id INTEGER PRIMARY KEY, cnh INTEGER NOT NULL, tipo_automovel INTEGER NOT NULL, id_cliente INTEGER REFERENCES cliente (id));
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (1, 43211, 0, 3);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (2, 3553, 1, 10);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (3, 12345, 0, 1);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (4, 853939, 0, 3);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (5, 853939, 2, 3);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (6, 43421, 1, 3);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (7, 987654, 0, 2);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (8, 3783, 1, 6);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (9, 356733, 0, 5);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (10, 522352, 0, 4);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (11, 52352, 1, 7);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (12, 2478247, 2, 8);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (13, 3553, 0, 10);
INSERT INTO automovel (id, cnh, tipo_automovel, id_cliente) VALUES (14, 12345, 1, 1);

-- Tabela: cliente
CREATE TABLE IF NOT EXISTS cliente (id INTEGER PRIMARY KEY, cnh INTEGER NOT NULL, nao_pagou NUMERIC NOT NULL DEFAULT (0));
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (1, 12345, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (2, 987654, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (3, 853939, 1);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (4, 522352, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (5, 35532, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (6, 44335, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (7, 52352, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (8, 325354, 1);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (9, 55342, 0);
INSERT INTO cliente (id, cnh, nao_pagou) VALUES (10, 3553, 0);

-- Tabela: nomes_cliente
CREATE TABLE IF NOT EXISTS nomes_cliente (nome TEXT NOT NULL UNIQUE, id_cliente INTEGER REFERENCES cliente (id) NOT NULL);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Alberto', 3);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Ana', 2);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('José', 1);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('João', 5);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Carolina', 4);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Bebê dos Auto', 3);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Josefa da Night', 1);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Carlos', 6);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Juliana', 10);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Antônio', 9);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Miguel', 8);
INSERT INTO nomes_cliente (nome, id_cliente) VALUES ('Igor', 7);

-- Tabela: pagamento
CREATE TABLE IF NOT EXISTS pagamento (id INTEGER PRIMARY KEY, data TEXT NOT NULL, horario TEXT NOT NULL, valor REAL NOT NULL, id_automovel INTEGER REFERENCES automovel (id));
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (1, '03/12/2022', '18:30', 50.0, 14);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (2, '04/12/2022', '18:29', 50.0, 14);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (3, '05/12/2022', '18:37', 60.0, 14);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (4, '08/12/2022', '18:12', 50.0, 14);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (5, '11/05/2023', '14:03', 30.0, 1);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (6, '12/05/2023', '19:30', 60.0, 1);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (7, '11/05/2023', '18:30', 50.0, 1);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (8, '01/06/2023', '18:55', 60.0, 2);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (9, '01/06/2023', '18:55', 60.0, 2);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (10, '01/06/2023', '11:01', 30.0, 3);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (11, '21/07/2023', '15:01', 20.0, 4);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (12, '21/07/2023', '15:01', 20.0, 4);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (13, '22/07/2023', '15:05', 40.0, 5);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (14, '25/07/2023', '15:41', 1000.0, 6);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (15, '21/07/2023', '10:01', 10.0, 7);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (16, '21/07/2023', '11:34', 15.0, 8);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (17, '22/07/2023', '10:00', 10.0, 9);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (18, '01/08/2023', '14:00', 30.0, 10);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (19, '01/08/2023', '13:00', 20.0, 11);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (20, '02/08/2023', '14:00', 30.0, 12);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (21, '02/08/2023', '14:00', 35.0, 13);
INSERT INTO pagamento (id, data, horario, valor, id_automovel) VALUES (22, '01/08/2023', '16:10', 20.0, 14);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
