--
-- Arquivo gerado com SQLiteStudio v3.4.4 em seg nov 13 16:37:03 2023
--
-- Codificação de texto usada: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: despesa
CREATE TABLE IF NOT EXISTS despesa (id_despesa INTEGER PRIMARY KEY, nomed TEXT);

-- Tabela: gasto
CREATE TABLE IF NOT EXISTS gasto (id_gasto INTEGER PRIMARY KEY, nomeg TEXT NOT NULL, valorg NUMERIC NOT NULL, id_despesa INTEGER REFERENCES despesa (id_despesa), datag INTEGER);

-- Tabela: GastoFixo
CREATE TABLE IF NOT EXISTS GastoFixo (id_gasto_fixo INTEGER PRIMARY KEY UNIQUE NOT NULL, nomegf TEXT NOT NULL, valorgf REAL NOT NULL, datagf INTEGER);

-- Tabela: tem
CREATE TABLE IF NOT EXISTS tem (id_despesa INTEGER REFERENCES despesa (id_despesa), id_gasto_fixo INTEGER REFERENCES GastoFixo (id_gasto_fixo), PRIMARY KEY (id_despesa, id_gasto_fixo)) WITHOUT ROWID;

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
