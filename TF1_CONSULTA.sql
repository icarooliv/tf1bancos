-- consulta 

SELECT pes.nome, pes.dataNascimento, p.altura, p.diagnostico, p.peso, 
	    e.dataHoraRegistro, e.observacao, e.idVisita, tpv.nome, 
	    v.registroProfissional, v.idCategoriaProfissional
FROM EVOLUCAO e 
INNER JOIN VISITA v 
ON v.idVisita = e.idVisita 
INNER JOIN PACIENTE p 
ON p.idPaciente = v.idPaciente 
AND p.idPaciente = 15
INNER JOIN PESSOA pes
ON p.idPaciente = pes.idPessoa
INNER JOIN TIPOVISITA tpv
ON tpv.idTipoVisita = v.idTipoVisita;
