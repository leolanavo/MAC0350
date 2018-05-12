INSERT INTO USUARIO
	(US_LOGIN, US_PASSWORD)
VALUES
	('biamarou@gmail.com',   'bccimeusp'),
	('leolanavo@gmail.com',  'frontehsorte'),
	('scholl@gmail.com',     'golfinhomexi'),
	('seiji@gmail.com',      'seivadearvor'),
	('victorjoao@gmail.com', 'estadotermin'),
	('jef@ime.usp.br',       'melhordba'),
	('renatocf@ime.usp.br',  'westworld'),
	('decio@ime.usp.br',     'modelagem'),
	('gold@ime.usp.br',      'agilegmail'),
	('kon@ime.usp.br',       'smartcities');

INSERT INTO ALUNO
	(AL_NUSP, AL_NOME, AL_DATA_MATRICULA, AL_DATA_FORMATURA, AL_USER_ID)
VALUES
	('9793652', 'Beatriz Figueiredo', '2016', '2019', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='biamarou@gmail.com')),
	('9793735', 'Leonardo Lana', '2016', '2019', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='leolanavo@gmail.com')),
	('9793739', 'Bruno Scholl', '2016', '', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='scholl@gmail.com')),
	('9793738', 'Victor Seiji', '2016', '', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='seiji@gmail.com')),
	('9793730', 'Victor João', '2016', '2019', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='victorjoao@gmail.com'));

INSERT INTO PROFESSOR
	(PR_NUSP, PR_NOME, PR_AREA, PR_USER_ID)
VALUES
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='jef@ime.usp.br')),
	('5678', 'Renato Cordeiro Ferreira', 'Design Patterns', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='renatocf@ime.usp.br')),
    ('098765', 'Décio', 'Bando de Dados', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='decio@ime.usp.br')),
	('746396', 'Alfredo Goldman', 'Programação Paralela', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='decio@ime.usp.br')),
	('9623935', 'Fábio Kon', 'Smart Cities', (SELECT US_ID FROM USUARIO WHERE US_LOGIN='kon@ime.usp.br'));

INSERT INTO PERFIL
	(PE_NOME)
VALUES
	('CUSTOS'),
	('ALUMNUS'),
	('ADMINISTRATOR'),
	('ANALYTICUM'),
	('PROFESSUS');

INSERT INTO SERVICO
	(SR_NOME, SR_DESCRICAO)
VALUES
	('CONSULTATIO',  'Consulta dados no BD'),
	('ADITUM',       'Insere dados no BD'),
	('MUTATIO',      'Altera dados que já constam no BD'),
	('ADIUNGIT',     'Agrega dados do BD'),
	('REMOVE',       'Remove dados do BD');

INSERT INTO DISCIPLINA
	(DS_CODIGO, DS_NOME, DS_CREDITO_AULA, DS_CREDITO_TRAB, DS_SEMESTRE,
	 DS_LOCAL, DS_EMENTA, DS_APROVEITAMENTO)
VALUES
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME', 'Técnicas de Modelgem de BDs e Eng. Soft', 0),
	('MAC0328', 'Algoritmos em Grafos', 4, 0, 2, 'IME', 'Algoritmos em Grafos', 1),
	('MAC0218', 'Técnicas de Programação 2', 4, 2, 1, 'IME', 'Técnicas avançadas de Programação', 1),
	('MAC0219', 'Programação Paralela', 4, 0, 1, 'IME', 'Programação de ', 2),
	('MAC0460', 'Aprendizagem Computacional', 4, 0, 1, 'IME', 'O básico de apredizagem computacional', 0);

INSERT INTO MODULO
    (MD_NOME)
VALUES
    ('DESENVOLVIMENTO DE SOFTWARE'),
    ('INTELIGÊNCIA ARTICIAL'),
    ('TEORIA DOS GRAFOS'),
    ('ESTATÍSTICA'),
    ('COMPUTAÇÃO GRÁFICA');

INSERT INTO TRILHA
    (TR_NOME)
VALUES
    ('SISTEMAS'),
    ('TEORIA'),
    ('IA'),
    ('CIÊNCIA DE DADOS'),
    ('OUTRO');

INSERT INTO PERFIL_USA_SERVICO
    (PERFIL_ID, SERVICO_ID)
VALUES
    ((SELECT PE_ID FROM PERFIL WHERE PE_NOME='CUSTOS'),        (SELECT SR_ID FROM SERVICO WHERE SR_NOME='CONSULTATIO')),
    ((SELECT PE_ID FROM PERFIL WHERE PE_NOME='ALUMNUS'),       (SELECT SR_ID FROM SERVICO WHERE SR_NOME='ADITUM')),
    ((SELECT PE_ID FROM PERFIL WHERE PE_NOME='ADMINISTRATOR'), (SELECT SR_ID FROM SERVICO WHERE SR_NOME='ADITUM')),
    ((SELECT PE_ID FROM PERFIL WHERE PE_NOME='ADMINISTRATOR'), (SELECT SR_ID FROM SERVICO WHERE SR_NOME='REMOVE')),
    ((SELECT PE_ID FROM PERFIL WHERE PE_NOME='ANALYTICUM'),    (SELECT SR_ID FROM SERVICO WHERE SR_NOME='ADIUNGIT'));

INSERT INTO OPTATIVA_FORMA_MODULO
    (OPTATIVA_ID, MODULO_ID)
VALUES
    ((SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0219'), (SELECT MD_ID FROM MODULO WHERE MD_NOME='DESENVOLVIMENTO DE SOFTWARE')),
    ((SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0218'), (SELECT MD_ID FROM MODULO WHERE MD_NOME='DESENVOLVIMENTO DE SOFTWARE')),
    ((SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0460'), (SELECT MD_ID FROM MODULO WHERE MD_NOME='INTELIGÊNCIA ARTIFICIAL')),
    ((SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0460'), (SELECT MD_ID FROM MODULO WHERE MD_NOME='ESTATÍSTICA')),
    ((SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0328'), (SELECT MD_ID FROM MODULO WHERE MD_NOME='TEORIA DOS GRAFOS'));

INSERT INTO ALUNO_CURSA_DISCIPLINA
    (ALUNO_ID, DISCIPLINA_ID, PRETENDE_SEM, PRETENDE_ANO, STATUS)
VALUES
    ((SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735'), (SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0350'), 1, 2018, TRUE),
    ((SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735'), (SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0218'), 1, 2018, FALSE),
    ((SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735'), (SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0219'), 1, 2018, TRUE),
    ((SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793652'), (SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0328'), 1, 2018, FALSE),
    ((SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793652'), (SELECT DS_ID FROM DISCIPLINA WHERE DS_CODIGO='MAC0460'), 1, 2018, TRUE);

INSERT INTO USUARIO_TEM_PERFIL
    (USUARIO_ID, PERFIL_ID)
VALUES
    ((SELECT US_ID FROM USUARIO WHERE US_LOGIN='leolanavo@gmail.com'), (SELECT PE_ID FROM PERFIL WHERE PE_NOME='ALUMNUS')),
    ((SELECT US_ID FROM USUARIO WHERE US_LOGIN='leolanavo@gmail.com'), (SELECT PE_ID FROM PERFIL WHERE PE_NOME='CUSTOS')),
    ((SELECT US_ID FROM USUARIO WHERE US_LOGIN='gold@ime.usp.br'),     (SELECT PE_ID FROM PERFIL WHERE PE_NOME='ANALYTICUM')),
    ((SELECT US_ID FROM USUARIO WHERE US_LOGIN='jef@ime.usp.br'),      (SELECT PE_ID FROM PERFIL WHERE PE_NOME='PROFESSUS')),
    ((SELECT US_ID FROM USUARIO WHERE US_LOGIN='jef@ime.usp.br'),      (SELECT PE_ID FROM PERFIL WHERE PE_NOME='ADMINISTRATOR'));

INSERT INTO MODULO_PERTENCE_TRILHA
    (MODULO_ID, TRILHA_ID)
VALUES
    ((SELECT MD_ID FROM MODULO WHERE MD_NOME='DESENVOLVIMENTO DE SOFTWARE'), (SELECT TR_ID FROM TRILHA WHERE TR_NOME='SISTEMAS')),
    ((SELECT MD_ID FROM MODULO WHERE MD_NOME='INTELIGÊNCIA ARTIFICIAL'),     (SELECT TR_ID FROM TRILHA WHERE TR_NOME='SISTEMAS')),
    ((SELECT MD_ID FROM MODULO WHERE MD_NOME='COMPUTAÇÃO GRÁFICA'),          (SELECT TR_ID FROM TRILHA WHERE TR_NOME='SISTEMAS')),
    ((SELECT MD_ID FROM MODULO WHERE MD_NOME='INTELIGÊNCIA ARTIFICIAL'),     (SELECT TR_ID FROM TRILHA WHERE TR_NOME='IA')),
    ((SELECT MD_ID FROM MODULO WHERE MD_NOME='TEORIA DOS GRAFOS'),           (SELECT TR_ID FROM TRILHA WHERE TR_NOME='TEORIA'));

INSERT INTO PROFESSOR_TUTORA_ALUNO
    (PROFESSOR_ID, ALUNO_ID)
VALUES
    ((SELECT PR_ID FROM PROFESSOR WHERE PR_NUSP='1234'),    (SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735')),
    ((SELECT PR_ID FROM PROFESSOR WHERE PR_NUSP='5678'),    (SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735')),
    ((SELECT PR_ID FROM PROFESSOR WHERE PR_NUSP='746396'),  (SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793735')),
    ((SELECT PR_ID FROM PROFESSOR WHERE PR_NUSP='098765'),  (SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793739')),
    ((SELECT PR_ID FROM PROFESSOR WHERE PR_NUSP='9623935'), (SELECT AL_ID FROM ALUNO WHERE AL_NUSP='9793739'));

