-- Consulta
SELECT p.idPaciente, FROM EVOLUCAO e INNER JOIN VISITA v ON v.idVisita = e.idVisita INNER JOIN PACIENTE p ON p.idPaciente = v.idPaciente AND p.idPaciente = 15;
