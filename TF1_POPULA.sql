-- popula

use homecare;

-- INSERÇÃO DE ESTADOS CIVIS --
INSERT INTO ESTADOCIVIL(nome) VALUES ('CASADO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('SOLTEIRO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('DIVORCIADO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('VIUVO');

-- INSERÇÃO DE CARGOS --
INSERT INTO CARGO(nome) VALUES ('CARDIOLOGISTA');
INSERT INTO CARGO(nome) VALUES ('FONOAUDIOLOGO');
INSERT INTO CARGO(nome) VALUES ('PSICOLOGO');
INSERT INTO CARGO(nome) VALUES ('ENFERMEIRO');
INSERT INTO CARGO(nome) VALUES ('TECNICO EM ENFERMAGEM');
INSERT INTO CARGO(nome) VALUES ('ONCOLOGISTA');
INSERT INTO CARGO(nome) VALUES ('PSIQUIATRA');
INSERT INTO CARGO(nome) VALUES ('NEUROLOGISTA');
INSERT INTO CARGO(nome) VALUES ('FISIOTERAPEUTA');

-- INSERÇÃO DE COMPLEXIDADES --
INSERT INTO COMPLEXIDADE(valorBase, nivel, descricao) VALUES (1000.0, 'B', 'Baixa Complexidade');
INSERT INTO COMPLEXIDADE(valorBase, nivel, descricao) VALUES (1500.0, 'M', 'Media Complexidade');
INSERT INTO COMPLEXIDADE(valorBase, nivel, descricao) VALUES (2000.0, 'A', 'Alta Complexidade');

-- INSERÇÃO DE CATEGORIAS PROFISSIONAIS --
INSERT INTO CATEGORIAPROFISSIONAL(nome) VALUES ('COFEN');
INSERT INTO CATEGORIAPROFISSIONAL(nome) VALUES ('CFM');
INSERT INTO CATEGORIAPROFISSIONAL(nome) VALUES ('CFP');
INSERT INTO CATEGORIAPROFISSIONAL(nome) VALUES ('CFFA');
INSERT INTO CATEGORIAPROFISSIONAL(nome) VALUES ('COFFITO');

-- INSERÇÃO DE COOPERATIVAS --
INSERT INTO COOPERATIVA(cnpj, rua, numero, cidade, bairro, cep, nome) 
VALUES ('67847872000160', 'Quadra QR 631 Conjunto 6', '929', 'Brasília', 'Samambaia Norte (Samambaia)', '72335108', 'COOPERATIVA DE TECNICAS DE ENFERMAGEM DE SAMAMBAIA');

INSERT INTO COOPERATIVA(cnpj, rua, numero, cidade, bairro, cep, nome) 
VALUES ('95133685000150', 'Quadra 16 Área Especial 04', '758', 'Brasília', 'Sobradinho', '73050154', 'COOPERATIVA DE TECNICAS DE ENFERMAGEM DE SOBRADINHO');

INSERT INTO COOPERATIVA(cnpj, rua, numero, cidade, bairro, cep, nome) 
VALUES ('60604513000133', 'Quadra QR 308 Conjunto H', '400', 'Brasília', 'Santa Maria', '72335108', 'COOPERATIVA DE TECNICAS DE ENFERMAGEM DE SANTA MARIA');

-- INSEÇAO DE TELEFONES DAS COOPERATIVAS --

INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6129939898', '67847872000160');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6135496613', '95133685000150');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6137525509', '60604513000133');

-- INSERÇÃO DE MEDICAMENTOS --
INSERT INTO MEDICAMENTO(nome) VALUES ('ACICLOVIR');
INSERT INTO MEDICAMENTO(nome) VALUES ('ÁCIDO ACETILSALICÍLICO');
INSERT INTO MEDICAMENTO(nome) VALUES ('SOLUÇÃO PARA DIÁLISE PERITONIAL');
INSERT INTO MEDICAMENTO(nome) VALUES ('TIMOLOL');
INSERT INTO MEDICAMENTO(nome) VALUES ('DIPIRONA SÓDICA');
INSERT INTO MEDICAMENTO(nome) VALUES ('LEXOTAN');
INSERT INTO MEDICAMENTO(nome) VALUES ('CITALAX');

-- INSERÇÃO DE PESSOAS --
INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('505477022054DF', '1986-10-30', '278251122', '38813276141', 'Sebastião Raul Iago da Conceição', '49070340', 'Brasília', 'Rua das Lages', '793', 'Engenho das Lages (Gama)', 'M', 1);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('534062032020DF', '1989-08-12', '424285836', '45972572176', 'Caio Felipe Geraldo Pereira', '71827770', 'Brasília', 'Chácara Chácara 42', '349', 'Riacho Fundo I', 'M', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('511867572038DF', '1978-07-10', '101585809', '38046417173', 'Antonella Bruna Gomes', '72650410', 'Brasília', 'Quadra Quadra 803 Conjunto 2', '334', 'Recanto das Emas', 'F', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('572658472089DF', '1978-06-09', '216770373', '13060216185', 'Andrea Mirella Rosa Araújo', '71996380', 'Brasília', 'Conjunto SHA Conjunto 6 Chácara 486', '876', 'Setor Habitacional Arniqueira (Águas Claras)', 'F', 3);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('305850002089DF', '1990-01-11', '503532459', '67230736145', 'Isabela Gabriela Bernardes', '71020224', 'Brasília', 'Quadra QI 5 Conjunto V', '236', 'Guará I', 'F', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('420536032054DF', '1963-03-03', '117445198', '48387826162', 'Eduarda Giovana Bernardes', '70394900', 'Brasília', 'SDS Bloco M', '855', 'Asa Sul', 'F', 1);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('366386002003DF', '1950-11-23', '272422162', '19193587147', 'Carlos Fernando Pedro da Paz', '72455480', 'Brasília', 'Quadra Quadra 48', '394', 'Setor Leste (Gama)', 'M', 4);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('880216652046DF', '1990-01-11', '216152707', '44768827144', 'Sophia Vera Lavínia da Luz', '71020224', 'Brasília', 'Quadra QI 5 Conjunto V', '236', 'Guará I', 'F', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('485118152070DF', '1963-03-03', '319889208', '56003816112', 'Priscila Emily Sandra Pires', '70394900', 'Brasília', 'SDS Bloco M', '855', 'Asa Sul', 'F', 1);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('184708382097DF', '1950-11-23', '269206206', '32900475120', 'José Isaac Pires', '72455480', 'Brasília', 'Quadra Quadra 48', '394', 'Setor Leste (Gama)', 'M', 4);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('534221252046DF', '1974-12-08', '459551097', '62676930150', 'Flávia Mariah Assunção', '72341303', 'Brasília', 'Quadra QR 207 Conjunto 3', '325', 'Samambaia Norte (Samambaia)', 'F', 3);  

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil)
VALUES ('771042772097DF', '1992-07-05', '268877233', '43033534180', 'Leandro Ricardo Calebe da Rocha', '72003760', 'Brasília', 'Rua Rua 8 Chácara 133', '248', 'Vila São José (Vicente Pires)', 'M', 1);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('214528232054DF', '1955-03-01', '290495842', '76667525128', 'Rosa Betina Natália Jesus', '71020019', 'Brasília', 'Quadra QE 9 Conjunto A', '762', 'Guará I', 'F', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES('436364032046DF', '1948-03-25', '417942138', '06958518101', 'Caleb Emanuel Souza', '71635080', 'Brasília', 'Quadra SHIS QI 13 Conjunto 8', '559', 'Setor de Habitações Individuais Sul', 'M', 2);

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('880451162054DF', '1996-03-10', '321706602', '81601705131', 'Luzia Aurora Castro', '72600120', 'Brasília', 'Quadra Quadra 101 Conjunto 16', '153', 'Recanto das Emas', 'F', 1);

-- INSERÇÃO DE TELEFONES DAS PESSOAS -- 
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('61991449791', 1);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6128885392', 2);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6125901091', 3);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6125510080', 4);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6135285547', 5);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6127059578', 6);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6129756883', 7);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6135970938', 8);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6135116289', 9);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6127451308', 10);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6136095718', 11);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6129935541', 12);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6129935541', 13);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6129882392', 14);
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6139795602', 15);

-- INSERÇÃO DE PROFISSIONAIS --
INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(1, 2, 8,'47920538270', 'DF/4165', '107260-9', 1, 'Banco do Brasil', '1166'); -- CFM - neurologista

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(2, 2, 7,'66016580837', 'DF/5799', '129612-4', 1, 'Banco do Brasil', '4700'); -- CFM - psiquiatra

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(3, 3, 3, '28760613818', 'DF/0015088', '25732-X', 1, 'Banco do Brasil', '5190'); -- CFP - psicologa

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(4, 4, 2, '82325125915', 'DF/12388', '13712-X', 1, 'Banco do Brasil', '2911'); -- CFFA - fonoaudiologo

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(5, 5, 9, '83486630768', 'DF/23231', '125509-6', 1, 'Banco do Brasil', '3591' ); -- COFFITO - fisioterapeuta

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(6, 1, 5, '62357653386', 'DF/125723', '1080418-8', 1, 'Banco do Brasil', '2945' ); -- COFEN - enfermeira

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(7, 1, 5, '64972739781', 'DF/125223', '1288950-4', 1, 'Banco do Brasil', '3598'); -- COFEN - tecnica

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(8, 1, 5, '94749112229', 'DF/179653', '213519-1', 1, 'Banco do Brasil', '4591'); -- COFEN - tecnica

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(9, 1, 5, '05703908163', 'DF/9431', '186319-3', 1, 'Banco do Brasil', '7006'); -- COFEN - tecnica

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(10, 1, 5, '90528432937', 'DF/124623', '186319-3', 1, 'Banco do Brasil', '7006'); -- COFEN - tecnica

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(11, 1, 5, '52476540073', 'DF/63271', '186319-3', 1, 'Banco do Brasil', '7006'); -- COFEN - tecnica

-- INSERÇÃO DE PACIENTES --
INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (12, 68.00, 168, 'O+', 'Exame apresenta parênquima pulmonar apresentando neoplasia de crescimento infiltrativo. Paciente apresenta ausencia de infiltração da pleura visceral. Margem cirurgica de ressecçao livre porém microscópica.', 3);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (13, 90.00, 180, 'AB', 'Paciente apresenta inúmeras pedras nos rins, caracterizando as patologias apresentadas.', 3);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (14, 54.00, 165, 'O-', 'Paciente após dois AVC seguidos, o paciente apresenta sequelas de paralisia no lado esquerdo do corpo, dificulade de engolir e quadro depressivo.', 2);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (15, 73.00, 175, 'AB', 'Diagnóstico de transtorno obsessivo-compulsivo com predominância de comportamentos compulsivos. Paciente apresenta também sintomas de TAG (Transtorno de ansiedade generalizada) devido aos rituais de repetição e pensamentos intrusivos que o TOC produz juntamente com um quadro de depressão grave', 2);

-- INSERÇÃO DE PATOLOGIAS --
INSERT INTO PATOLOGIA(cid, nome) VALUES ('I120', 'Doença renal hipertensiva com insuficiência renal');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('I110', 'Doença cardíaca hipertensiva com insuficiência cardíaca (congestiva)');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('J431', 'Enfisema panlobular');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('J302', 'Outras rinites alérgicas sazonais');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('F421', 'Transtorno obsessivo-compulsivo com predominância de comportamentos compulsivos [rituais obsessivos]');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('Z886', 'História pessoal de alergia a agente analgésico');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('I694', 'Seqüelas de acidente vascular cerebral não especificado como hemorrágico ou isquêmico');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('Z889', 'História pessoal de alergia a drogas, medicamentos e substâncias biológicas não especificadas');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('F331', 'Transtorno depressivo recorrente, episódio atual moderado');
INSERT INTO PATOLOGIA(cid, nome) VALUES ('A985', 'Febre hemorrágica com síndrome renal');

-- INSERÇÃO DE PATOLOGIAS -- 
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (12, 'J431'); 
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (12, 'Z886');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (12, 'Z889');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (12, 'J302');

INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (13, 'I120');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (13, 'A985');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (14, 'Z886');

INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (14, 'I694');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (14, 'F331');

INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (15, 'F421');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (15, 'F331');

-- INSERÇÃO DE TECNICOS --
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/125223', 5, 0, '54408895714');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/179653', 5, 0, '22124731796');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/9431', 5, 0, '52643671460');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/124623', 5, 0, NULL);
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/63271', 5, 1, NULL);

-- INSERÇÃO DE TECNICOS PARA COOPERATIVAS --
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 5, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 5, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 5, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/179653', 5, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/179653', 5, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 5, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 5, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 5, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/124623', 5, '67847872000160');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 5, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 5, '95133685000150');


-- INSERÇÃO DE EQUIPAMENTOS --
INSERT INTO EQUIPAMENTO(nome) VALUES ('Aparelho de hemodiálise');
INSERT INTO EQUIPAMENTO(nome) VALUES ('Balão de oxigênio');
INSERT INTO EQUIPAMENTO(nome) VALUES ('Monitor cardíaco');
INSERT INTO EQUIPAMENTO(nome) VALUES ('Bomba infusora');
INSERT INTO EQUIPAMENTO(nome) VALUES ('Ventilador Mecânico');

-- INSERÇÃO DE EQUIPAMENTOS PARA PACIENTES -- 
INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (12, 2);
INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (12, 3);
INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (12, 4);

INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (13, 1);
INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (13, 2);
INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (13, 3);

INSERT INTO PACIENTE_EQUIPAMENTO(idPaciente, idEquipamento) VALUES (14, 3);

-- INSERÇAO DE EQUIPAMENTOS PARA TECNICOS -- 
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/125223', 5, 1);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/125223', 5, 2);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/125223', 5, 3);

INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 5, 4);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 5, 3);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 5, 2);

INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 5, 4);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 5, 3);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 5, 2);

-- INSERÇAO DE TIPOVISITA -- 
INSERT INTO TIPOVISITA(nome) VALUES ('CONSULTA DE ROTINA');
INSERT INTO TIPOVISITA(nome) VALUES ('SESSÃO DE FISIOTERAPIA');
INSERT INTO TIPOVISITA(nome) VALUES ('PLANTÃO');
INSERT INTO TIPOVISITA(nome) VALUES ('EXAME MEDICO');
INSERT INTO TIPOVISITA(nome) VALUES ('SESSÃO DE PSICOTERAPIA');

-- FALTA CRIAR VISITAS, PRESCRIÇÕES, EVOLUÇAO E AVALIAÇÕES -- 


