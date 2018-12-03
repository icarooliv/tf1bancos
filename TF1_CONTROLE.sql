-- ---------------------------- TF1 aval -------------------------- --
--                                                                  --
--                   SCRIPT DE CONTROLE (DDL)                       --
--                                                                  --
-- Data Criacao ..........: 03/11/2018                              --
-- Autor(es) .............: Lucas Machado de Moura e Silva          --
--                          Ícaro Oliveira                          --
-- Banco de Dados ........: MySQL                                   --
-- Base de Dados(nome) ...: homecare                                --
--                                                                  --
-- Data Ultima Alteracao ..:                                        --
--                                                                  --
-- PROJETO => 1  Base de Dados                                      --
--         => 22 Tabelas                                            --
--                                                                  --
-- ---------------------------------------------------------------- --

USE homecare;

CREATE USER admin1@localhost IDENTIFIED BY 'admin123';

GRANT ALL PRIVILEGES ON
	homecare.* 
TO 'admin1'@'localhost';

FLUSH PRIVILEGES;