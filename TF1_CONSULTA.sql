
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
--      => 26 Tabelas     
-- CONSULTAS => 6 consultas                                      --
--                                                                  --
-- ----------------------------------------------------------------- --

use homecare; 

-- Consulta Histórico do Paciente
SELECT pes.nome, pes.dataNascimento, p.altura, p.diagnostico, p.peso, 
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

-- Consulta prescriçoes, com o nome do paciente, medico e medicamentos
SELECT pes.nome as nomePaciente, pes.dataNascimento as dataNascimentoPaciente, 
	   pre.idPrescricao, pre.periodoDeUso, pre.posologia, pre.observacao, pre.idVisita, 
	   m.nome AS nomeMedicamento, 
	   pro.registroProfissional, cat.nome AS nomeCategoriaProfissional,
	   pes2.nome AS nomeMedico
	   FROM PRESCRICAO pre 
INNER JOIN VISITA v 
	ON pre.idVisita = v.idVisita 
INNER JOIN PACIENTE pac 
	ON v.idPaciente = pac.idPaciente 
	AND pac.idPaciente = 15 
INNER JOIN PESSOA pes
	ON pes.idPessoa = pac.idPaciente
INNER JOIN TIPOVISITA tpv
	ON v.idTipoVisita = tpv.idTipoVisita
INNER JOIN MEDICAMENTO m
	ON pre.idMedicamento = m.idMedicamento
INNER JOIN PROFISSIONAL pro
	ON v.idCategoriaProfissional = pro.idCategoriaProfissional
INNER JOIN CATEGORIAPROFISSIONAL cat
	ON pro.idCategoriaProfissional = cat.idCategoriaProfissional
INNER JOIN PESSOA pes2 
	ON pro.idPessoa = pes2.idPessoa;

-- Consulta corpo clínico do hospital
SELECT p.registroProfissional, pes.nome, cat.nome as nomeCategoria, car.nome as nomeCargo FROM PROFISSIONAL p
INNER JOIN PESSOA pes 
ON p.idPessoa = pes.idPessoa
INNER JOIN CATEGORIAPROFISSIONAL cat
ON p.idCategoriaProfissional = cat.idCategoriaProfissional
INNER JOIN CARGO car
ON p.idCargo = car.idCargo;

-- Consulta todos os tecnicos cadastrados
SELECT pes.nome, tec.registroProfissional, tel.telefone, pes.rg, pes.cidade, pes.rua, pes.bairro, pes.sexo, tec.nadaConsta, tec.cnh from TECNICO tec
INNER JOIN PROFISSIONAL pro
ON tec.registroProfissional = pro.registroProfissional
INNER JOIN PESSOA pes
ON pro.idPessoa = pes.idPessoa
INNER JOIN ESTADOCIVIL ec
ON pes.idEstadoCivil = ec.idEstadoCivil
INNER JOIN TELEFONEPESSOA tel
ON pes.idPessoa = tel.idPessoa;	

-- Consulta tecnicos fora de plantao entre um horario e fim especifico
SELECT p.nome, tel.telefone, pro.registroProfissional, pro.idCargo 
FROM PROFISSIONAL pro 
INNER JOIN PESSOA p
ON pro.idPessoa = p.idPessoa
INNER JOIN  TELEFONEPESSOA tel
ON p.idPessoa = tel.idPessoa
WHERE pro.registroProfissional NOT IN 
	(
	SELECT pro.registroProfissional
	FROM PROFISSIONAL pro
	INNER JOIN VISITA v 
	ON pro.registroProfissional = v.registroProfissional
	WHERE v.dataHoraInicio BETWEEN '2018-03-8 7:00:00' AND '2018-03-9 6:59:59' 
	AND pro.idCargo = 5
	)
AND idCargo = 5;

-- Consulta de Agenda de visitas do tecnico
SELECT * FROM VISITA v
WHERE v.registroProfissional = 'DF/9431';

