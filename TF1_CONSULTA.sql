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
ON tpv.idTipoVisita = v.idTipoVisita;

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
	
	