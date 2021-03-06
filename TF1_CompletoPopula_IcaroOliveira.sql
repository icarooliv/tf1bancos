-- ---------------------------- TF1 aval -------------------------- --
--                                                                  --
--                   SCRIPT DE POPULA (DML)                         --
--                                                                  --
-- Data Criacao ..........: 03/11/2018                              --
-- Autor(es) .............: Lucas Machado de Moura e Silva          --
--                          Ícaro Oliveira                          --
-- Banco de Dados ........: MySQL                                   --
-- Base de Dados(nome) ...: homecare                                --
--                                                                  --
-- Data Ultima Alteracao ..:    04/12/2018                                    --
--                                                                  --
-- PROJETO => 1  Base de Dados                                      --
--         => 23 Tabelas                                            --
--                                                                  --
-- ---------------------------------------------------------------- --


USE homecare;

-- INSERÇÃO DE ESTADOS CIVIS --
INSERT INTO ESTADOCIVIL(nome) VALUES ('CASADO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('SOLTEIRO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('DIVORCIADO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('VIUVO');
INSERT INTO ESTADOCIVIL(nome) VALUES ('SEPARADO');

-- INSERÇÃO DE CARGOS --
INSERT INTO CARGO(nome) VALUES ('CARDIOLOGISTA');
INSERT INTO CARGO(nome) VALUES ('FONOAUDIOLOGO');
INSERT INTO CARGO(nome) VALUES ('PSICOLOGO');
INSERT INTO CARGO(nome) VALUES ('ENFERMEIRO');
INSERT INTO CARGO(nome) VALUES ('TECNICO EM ENFERMAGEM');
INSERT INTO CARGO(nome) VALUES ('ONCOLOGISTA');
INSERT INTO CARGO(nome) VALUES ('PSIQUIATRA');
INSERT INTO CARGO(nome) VALUES ('NEUROLOGISTA');
INSERT INTO CARGO(nome) VALUES ('NEFROLOGISTA');

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

INSERT INTO COOPERATIVA(cnpj, rua, numero, cidade, bairro, cep, nome) 
VALUES ('78558779000152', 'Quadra Quadra 7 Conjunto H', '979', 'Brasília', 'Paranoá', '71570708', 'COOPERATIVA DE TECNICAS DE ENFERMAGEM DO PARANOÁ');

INSERT INTO COOPERATIVA(cnpj, rua, numero, cidade, bairro, cep, nome) 
VALUES ('18827172000107', 'Quadra SRES Quadra 10 Bloco G', '771', 'Brasília', 'Cruzeiro Velho', '70645070', 'COOPERATIVA DE TECNICAS DE ENFERMAGEM DO PARANOÁ');

-- INSEÇAO DE TELEFONES DAS COOPERATIVAS --
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6129939898', '67847872000160');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6135496613', '95133685000150');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6137525509', '60604513000133');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6137525509', '78558779000152');
INSERT INTO TELEFONECOOPERATIVA(telefone, cnpj) VALUES('6137525509', '18827172000107');

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

INSERT INTO PESSOA(tituloEleitor, dataNascimento, rg, cpf, nome, cep, cidade, rua, numero, bairro, sexo, idEstadoCivil) 
VALUES ('011051230108DF', '1965-03-10', '378154813', '12666191435', 'Kelly Aurora Castro', '72600120', 'Brasília', 'Quadra Quadra 101 Conjunto 16', '153', 'Recanto das Emas', 'F', 1);

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
INSERT INTO TELEFONEPESSOA(telefone, idPessoa) VALUES ('6139795602', 16);

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
VALUES(5, 2, 9, '83486630768', 'DF/23231', '125509-6', 1, 'Banco do Brasil', '3591' ); -- CFM - nefrologista

INSERT INTO PROFISSIONAL(idPessoa, idCategoriaProfissional, idCargo, ctps, registroProfissional, numeroConta, codBanco, nomeBanco, numeroAgencia)
VALUES(6, 1, 4, '62357653386', 'DF/125723', '1080418-8', 1, 'Banco do Brasil', '2945' ); -- COFEN - enfermeira

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
VALUES (12, 68.00, 168, 'O+', 'Exame apresenta parênquima pulmonar apresentando neoplasia de crescimento infiltrativo. Paciente apresenta ausencia de infiltração da pleura visceral. Margem cirurgica de ressecçao livre porém microscópica.', 1);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (13, 90.00, 180, 'AB', 'Paciente apresenta inúmeras pedras nos rins, caracterizando as patologias apresentadas. Necessita de diálise', 3);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (14, 54.00, 165, 'O-', 'Paciente após dois AVC seguidos, o paciente apresenta sequelas de paralisia no lado esquerdo do corpo, dificulade de engolir e quadro depressivo.', 2);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (15, 73.00, 175, 'AB', 'Diagnóstico de transtorno obsessivo-compulsivo com predominância de comportamentos compulsivos. 
Paciente apresenta também sintomas de TAG (Transtorno de ansiedade generalizada) devido aos rituais de repetição e pensamentos intrusivos que o TOC produz 
juntamente com um quadro de depressão grave', 3);

INSERT INTO PACIENTE(idPaciente, peso, altura, tipoSanguineo, diagnostico, idComplexidade) 
VALUES (16, 81.00, 160, 'AB+', 'Graves problemas respiratórios, pulmão esquerdo comprometido.', 3);

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

INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (16, 'J431');
INSERT INTO PACIENTE_PATOLOGIA(idPaciente, cid) VALUES (16, 'Z889');

-- INSERÇÃO DE TECNICOS --
-- nadaConsta 0 = true ou seja o paciente nao tem antecedentes, nadaConsta 1 = tem antecedentes
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/125223', 1, 0, '54408895714');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/179653', 1, 0, '22124731796');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/9431', 1, 0, '52643671460');
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/124623', 1, 0, NULL);
INSERT INTO TECNICO(registroProfissional, idCategoriaProfissional, nadaConsta, cnh) VALUES ('DF/63271', 1, 1, NULL);

-- INSERÇÃO DE TECNICOS PARA COOPERATIVAS --
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 1, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 1, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/125223', 1, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/179653', 1, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/179653', 1, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 1, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 1, '95133685000150');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 1, '60604513000133');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/124623', 1, '67847872000160');

INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 1, '67847872000160');
INSERT INTO TECNICO_COOPERATIVA(registroProfissional, idCategoriaProfissional, cnpj) VALUES ('DF/63271', 1, '95133685000150');


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
VALUES ('DF/125223', 1, 1);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/125223', 1, 2);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/125223', 1, 3);

INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 1, 4);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 1, 3);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 1, 2);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/179653', 1, 1);

INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 1, 4);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 1, 3);
INSERT INTO TECNICO_EQUIPAMENTO(registroProfissional, idCategoriaProfissional, idEquipamento) 
VALUES ('DF/124623', 1, 1);

-- INSERÇÃO DE MEDICAMENTOS --
INSERT INTO MEDICAMENTO(nome) VALUES ('ACICLOVIR');
INSERT INTO MEDICAMENTO(nome) VALUES ('ÁCIDO ACETILSALICÍLICO');
INSERT INTO MEDICAMENTO(nome) VALUES ('SOLUÇÃO PARA DIÁLISE PERITONIAL');
INSERT INTO MEDICAMENTO(nome) VALUES ('TIMOLOL');
INSERT INTO MEDICAMENTO(nome) VALUES ('DIPIRONA SÓDICA');
INSERT INTO MEDICAMENTO(nome) VALUES ('LEXOTAN');
INSERT INTO MEDICAMENTO(nome) VALUES ('CITALAX');


-- INSERÇAO DE TIPOVISITA -- 
INSERT INTO TIPOVISITA(nome) VALUES ('CONSULTA DE ROTINA');
INSERT INTO TIPOVISITA(nome) VALUES ('SESSÃO DE FISIOTERAPIA');
INSERT INTO TIPOVISITA(nome) VALUES ('PLANTÃO');
INSERT INTO TIPOVISITA(nome) VALUES ('EXAME MEDICO');
INSERT INTO TIPOVISITA(nome) VALUES ('SESSÃO DE PSICOTERAPIA');

-- INSERÇAO DE VISITAS, EVOLUCOES E PRESCRICOES -- 
-- Paciente id 15 -- visitas de 24h plantao 24/72 para as tecnicas com visita periodica da psicologa, utilizando 3 tecnicos,  DF/9431 DF/63271 DF/179653 DF/125223

-- Inicio do primeiro plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-07 7:00:00', '2018-03-08 7:00:00', 3, 15, 'DF/9431', 1); 

-- marcada consulta com o psiquiatra durante o primeiro plantao (idVisita = 9)
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-07 13:00:00', '2018-03-07 15:00:00', 1, 15, 'DF/5799', 2); 

-- evolucoes antes da consulta
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, observacao) 
VALUES ('2018-03-07 7:00:00', 1, 'Preparação do paciente para o início do homecare, acompanhamento constante inclusive nos banhos. 
Embora a paciente esteja em condições autonomas, sob recomendações ela não poderá ficar sozinha em momento algum.');
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, observacao) 
VALUES ('2018-03-07 12:00:00', 1, 'Paciente apresenta inquietação ao ser alimentada. Início da preparação para a consulta do psiquiatra.');

-- Evolução da consulta marcada com o psiquiatra
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, observacao) 
VALUES ('2018-03-07 15:57:00', 2, 'Durante consulta, paciente se mostrou bastante inquieta e sem mudanças no estado clínico da depressão. 
Foram receitados medicamentos, conforme prescrições indicam.');

-- medicamentos prescritos na consulta (idVisita = 2)
INSERT INTO PRESCRICAO(periodoDeUso, posologia, observacao, idVisita, idMedicamento) 
VALUES ('A cada 12h', '1 comprimido de 5mg', 'Não ministrar outros medicamentos no intervalo de 2h, antes e depois.', 1, 6); 
INSERT INTO PRESCRICAO(periodoDeUso, posologia, observacao, idVisita, idMedicamento) 
VALUES ('A cada 24h', '0.5ml intravenoso', 'Ministrar em jejum minimo de 6h.', 1, 7); 

-- Evolucao ainda no primeiro plantao apos a consulta com o psiquiatra (2018-03-07 7am ate 2018-03-08 7am) 
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-07 22:00:00', 1, 1, 'Foi ministrado um comprimido após a janta para a paciente, que se mostrava um pouco mais calma');
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-08 00:00:00', 1, 2, 'Aplicacao intravenosa, paciente apresentou resistencia');

-- Inicio do segundo plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-08 7:00:00', '2018-03-09 7:00:00', 3, 15, 'DF/63271', 1);

-- Inicio da visita do tipo SESSAO PSICOTERAPIA
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-08 13:00:00', '2018-03-08 15:00:00', 5, 15, 'DF/0015088', 3); -- psicologa

-- Inicio do terceiro plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-09 7:00:00', '2018-03-10 7:00:00', 3, 15, 'DF/179653', 1); 

-- Inicio do quarto plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-10 7:00:00', '2018-03-11 7:00:00', 3, 15, 'DF/125223', 1);  

-- Inicio do quinto plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-11 7:00:00', '2018-03-12 7:00:00', 3, 15, 'DF/9431', 1); 

-- Inicio do sexto plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-12 7:00:00', '2018-03-13 7:00:00', 3, 15, 'DF/63271', 1); 

-- Inicio do setimo
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-13 7:00:00', '2018-03-14 7:00:00', 3, 15, 'DF/179653', 1); 

-- INSERÇAO DE VISITAS, EVOLUCOES E PRESCRICOES -- 
-- Paciente id 13 -- visitas de 12h plantao 12/36 para as tecnicas com visita periodica da psicologa, utilizando 2 tecnicos,  DF/124623 DF/179653

-- Inicio do primeiro plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) -- id 10
VALUES ('2018-03-07 7:00:00', '2018-03-07 19:00:00', 3, 13, 'DF/124623', 1); 
INSERT INTO PRESCRICAO(periodoDeUso, posologia, idVisita, idMedicamento) 
VALUES ('durante 7 dias', '500ml via membrana peritoneal', 10, 7); 
-- Evolucao do primeiro plantao
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-07 7:30:00', 10, 3, 'Inicio da primeira dialise.');
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-07 16:30:00', 10, 3, 'Termino da primeira dialise.');

-- Inicio do segundo plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-08 7:00:00', '2018-03-08 19:00:00', 3, 13, 'DF/179653', 1); 
-- Evolucao do segundo plantao
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-08 7:30:00', 11, 3, 'Inicio da segunda dialise, paciente queixou-se de dores abdominais apos a ultima dialise.');
-- marcando visita nefrologista durante segundo plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-08 14:00:00', '2018-03-08 15:00:00', 1, 13, 'DF/23231', 2); 
-- prescricoes geradas durante visita
INSERT INTO PRESCRICAO (periodoDeUso, posologia, observacao, idVisita, idMedicamento) VALUES ('3 em 3 horas', '2 gotas', NULL, 12, 2);
INSERT INTO PRESCRICAO (periodoDeUso, posologia, observacao, idVisita, idMedicamento) VALUES ('Toda vez durante a diálise', '200ml', NULL, 12, 3);
-- continuacao evolucao segundo plantao
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-08 16:30:00', 11, 3, 'Termino da segunda dialise.');

-- Inicio do terceiro plantao
INSERT INTO VISITA (dataHoraInicio, dataHoraFim, idTipoVisita, idPaciente, registroProfissional, idCategoriaProfissional) 
VALUES ('2018-03-09 7:00:00', '2018-03-09 19:00:00', 3, 13, 'DF/124623', 1); 
-- Evolucao do terceiro plantao
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-09 7:30:00', 12, 3, 'Inicio da terceira dialise, paciente nao apresentou queixa de dores abdominais.');
INSERT INTO EVOLUCAO(dataHoraRegistro, idVisita, idPrescricao, observacao) 
VALUES ('2018-03-09 16:30:00', 12, 3, 'Termino da terceira dialise.');

-- INSERÇAO DE AVALIACAO -- 
INSERT INTO AVALIACAO (registroProfissional, idCategoriaProfissional, idPaciente, dataAvaliacao, avaliacao)
VALUES ('DF/9431', 1, 15, '2018-03-08','Profissional atencioso e cuidadoso. É paciente e organizado.' );

INSERT INTO AVALIACAO (registroProfissional, idCategoriaProfissional, idPaciente, dataAvaliacao, avaliacao)
VALUES('DF/179653', 1, 15, '2018-03-14', 'Profissional chegou atrasado.');

INSERT INTO AVALIACAO (registroProfissional, idCategoriaProfissional, idPaciente, dataAvaliacao, avaliacao)
VALUES ('DF/124623', 1, 13, '2018-03-07', 'Profissional é bem humorado e atencioso.');

INSERT INTO AVALIACAO (registroProfissional, idCategoriaProfissional, idPaciente, dataAvaliacao, avaliacao)
VALUES ('DF/179653', 1, 13, '2018-03-08', 'Profissional é bem humorado e atencioso.');

INSERT INTO AVALIACAO (registroProfissional, idCategoriaProfissional, idPaciente, dataAvaliacao, avaliacao)
VALUES ('DF/124623', 1, 13, '2018-03-09', 'Profissional foi cuidadoso durante a dialise.');