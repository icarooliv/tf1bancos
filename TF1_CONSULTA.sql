-- ---------------------------- TF1 aval -------------------------- --
--                                                                  --
--                    SCRIPT DE CONSULTA (DML)                      --
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

-- Consulta tecnicos de saude que não estão em consulta por data
SELECT pro.registroProfissional, pes.nome 
FROM VISITA v, PROFISSIONAL pro
INNER JOIN TECNICO tec
	ON pro.registroProfissional = tec.registroProfissional
INNER JOIN PESSOA pes 
	ON pro.idPessoa = pes.idPessoa
WHERE v.dataHoraInicio BETWEEN CURDATE() AND  CURDATE()+1;
AND pro.idCargo = 5;	

-- Consulta tecnicos fora de plantao
SELECT p.nome FROM PROFISSIONAL pr 
INNER JOIN PESSOA p
ON pr.idPessoa = p.idPessoa
WHERE pr.registroProfissional NOT IN 
	(
	SELECT pro.registroProfissional
	FROM PROFISSIONAL pro
	INNER JOIN VISITA v 
	ON pro.registroProfissional = v.registroProfissional
	WHERE v.dataHoraInicio = '2018-03-8 7:00:00' 
	AND pro.idCargo = 5
	) 
AND idCargo = 5;
