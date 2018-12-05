
-- ---------------------------- TF1 aval --------------------------- --
--                                                                  --
--                  SCRIPT DE CONSULTAS (DDL)                     --
--                                                                  --
-- Data Criacao ..........: 29/11/2018                              --
-- Autor(es) .............: Lucas Machado de Moura e Silva          --
--                          Ícaro Oliveira                          --
-- Banco de Dados ........: MySQL                                   --
-- Base de Dados(nome) ...: homecare                                --
--                                                                  --
-- Data Ultima Alteracao ..: 04/12/2018                                       --
--                                                                  --
-- PROJETO => 1  Base de Dados                                      --
--      => 23 Tabelas     
-- CONSULTAS => 3 consultas                                      --
--                                                                  --
-- ----------------------------------------------------------------- --
use homecare; 

-- Consulta todaos os registros de patologias do paciente, 
-- trazendo seu Nome, idade, data de nascimento, 
-- peso, altura, tipo sanguineo, diagnostico e patologias cadastradas
-- consulta pode ser refinada com um WHERE idPessoa = ? ao fim da consulta
SELECT pes.nome, 
		TIMESTAMPDIFF(YEAR, pes.dataNascimento, CURDATE()) AS idade, 
		pacpat.cid, 
		pat.nome as patologia,
		pes.dataNascimento, 
		pa.peso,
		pa.altura, 
		pa.tipoSanguineo, 
		pa.diagnostico
FROM PACIENTE pa
INNER JOIN PACIENTE_PATOLOGIA pacpat
ON pa.idPaciente = pacpat.idPaciente
INNER JOIN PATOLOGIA pat
ON pacpat.cid = pat.cid
INNER JOIN PESSOA pes
ON pa.idPaciente = pes.idPessoa
WHERE pa.idPaciente = 15;

-- Consulta Historico do Paciente 
-- trazendo seu nome, idade, data e hora dos registros, observaçoes das evolucoes, registro pelo id
-- de em qual visita aconteceu e qual o tipo da visita aconteceu a observaçao 
SELECT pes.nome, pes.dataNascimento, p.altura, p.peso, 
	    e.dataHoraRegistro, e.observacao, e.idVisita, tpv.nome, 
	    v.registroProfissional, v.idCategoriaProfissional
FROM EVOLUCAO e 
INNER JOIN VISITA v 
ON v.idVisita = e.idVisita 
INNER JOIN PACIENTE p 
ON p.idPaciente = v.idPaciente 
AND p.idPaciente = 15 -- mudar id do Paciente para outros pacientes
INNER JOIN PESSOA pes
ON p.idPaciente = pes.idPessoa
INNER JOIN TIPOVISITA tpv
ON tpv.idTipoVisita = v.idTipoVisita
ORDER BY e.dataHoraRegistro ASC;

-- Consulta tecnicos fora de plantao entre um horario e fim especifico
-- Ao criar uma nova visita para um profissional que se encaixe no intervalo 
-- de 24h a partir do horário da consulta, é possível verificar todos os tecnicos livres o horário de fim do seu ultimo plantão
-- Por exemplo, ao inserir um registro na tabela VISITA descrita a seguir as 00:16 do dia 05/12/2018, a tecnica de id DF/179653 nao irá aparecer na consulta,
-- o que indica que ela está livre
-- -- 
CREATE VIEW TECNICO_LIVRE_DIA AS
SELECT p.nome, tel.telefone, pro.registroProfissional, v.dataHoraFim as dataUltimoPlantao 
FROM PROFISSIONAL pro 
INNER JOIN PESSOA p
ON pro.idPessoa = p.idPessoa
INNER JOIN VISITA v
ON pro.registroProfissional = v.registroProfissional
INNER JOIN  TELEFONEPESSOA tel
ON p.idPessoa = tel.idPessoa
WHERE pro.registroProfissional NOT IN 
	(
	SELECT pro.registroProfissional
	FROM PROFISSIONAL pro
	INNER JOIN VISITA v 
	ON pro.registroProfissional = v.registroProfissional
	WHERE v.dataHoraInicio BETWEEN NOW() AND NOW() + INTERVAL 1 DAY
	AND pro.idCargo = 5
	)
AND idCargo = 5
AND v.dataHoraFim = (select max(v2.dataHoraFim) from VISITA v2 where v2.registroProfissional = v.registroProfissional);
