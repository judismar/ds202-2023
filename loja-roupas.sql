--
-- Arquivo gerado com SQLiteStudio v3.4.4 em seg nov 13 16:34:39 2023
--
-- Codificação de texto usada: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Tabela: cargo
CREATE TABLE IF NOT EXISTS cargo (id_cargo INTEGER PRIMARY KEY, descricao TEXT, salario REAL NOT NULL);

-- Tabela: cliente
CREATE TABLE IF NOT EXISTS cliente (id_cliente INTEGER PRIMARY KEY, nomec TEXT NOT NULL, id_funcionario INTEGER REFERENCES funcionario (id_funcionario));

-- Tabela: funcionario
CREATE TABLE IF NOT EXISTS funcionario (id_funcionario INTEGER PRIMARY KEY, nomef TEXT NOT NULL, id_cargo INTEGER REFERENCES cargo (id_cargo));

-- Tabela: roupa
CREATE TABLE IF NOT EXISTS roupa (id_roupa INTEGER PRIMARY KEY, tipo TEXT, valor REAL NOT NULL, id_funcionario INTEGER REFERENCES funcionario (id_funcionario));

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
