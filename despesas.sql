--
-- Arquivo gerado com SQLiteStudio v3.4.4 em qui nov 16 10:18:15 2023
--
-- Codificação de texto usada: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: despesa
CREATE TABLE IF NOT EXISTS despesa (id_despesa INTEGER PRIMARY KEY, nomed TEXT);
INSERT INTO despesa (id_despesa, nomed) VALUES (1, 'outubro');
INSERT INTO despesa (id_despesa, nomed) VALUES (2, 'novembro');
INSERT INTO despesa (id_despesa, nomed) VALUES (3, 'dezembro');

-- Tabela: gasto
CREATE TABLE IF NOT EXISTS gasto (id_gasto INTEGER PRIMARY KEY, nomeg TEXT NOT NULL, valorg NUMERIC NOT NULL, id_despesa INTEGER REFERENCES despesa (id_despesa), datag INTEGER);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (1, 'compras', 132.98, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (2, 'compras', 52.34, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (3, 'compras', 243.55, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (4, 'compras', 49.05, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (5, 'compras', 97.1, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (6, 'PS5', 3599.99, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (7, 'bichos', 146, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (8, 'petiscos p/ bichos', 12.3, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (9, 'petiscos p/ bichos', 23, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (10, 'petiscos p/ bichos', 35.7, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (11, 'petiscos p/ bichos', 10.3, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (12, 'petiscos p/ bichos', 50, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (13, 'lanche', 3.5, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (14, 'lanche', 25, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (15, 'lanche', 1.5, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (16, 'lanche', 5.1, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (17, 'lanche', 21.35, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (18, 'lanche', 1, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (19, 'lanche', 5, 3, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (20, 'corte de cabelo', 30, 2, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (21, 'dívida com João', 100, 1, NULL);
INSERT INTO gasto (id_gasto, nomeg, valorg, id_despesa, datag) VALUES (22, 'Dívida com João', 20, 2, NULL);

-- Tabela: GastoFixo
CREATE TABLE IF NOT EXISTS GastoFixo (id_gastofixo INTEGER PRIMARY KEY UNIQUE NOT NULL, nomegf TEXT NOT NULL, valorgf REAL NOT NULL, datagf INTEGER);
INSERT INTO GastoFixo (id_gastofixo, nomegf, valorgf, datagf) VALUES (1, 'internet', 89.99, NULL);
INSERT INTO GastoFixo (id_gastofixo, nomegf, valorgf, datagf) VALUES (2, 'condomínio', 200.0, NULL);
INSERT INTO GastoFixo (id_gastofixo, nomegf, valorgf, datagf) VALUES (3, 'netflix', 19.99, NULL);

-- Tabela: tem
CREATE TABLE IF NOT EXISTS tem (id_despesa INTEGER REFERENCES despesa (id_despesa), id_gastofixo INTEGER REFERENCES GastoFixo (id_gastofixo), PRIMARY KEY (id_despesa, id_gastofixo)) WITHOUT ROWID;
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (1, 1);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (1, 2);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (2, 1);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (2, 2);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (2, 3);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (3, 1);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (3, 2);
INSERT INTO tem (id_despesa, id_gastofixo) VALUES (3, 3);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
