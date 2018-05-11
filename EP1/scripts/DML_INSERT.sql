INSERT INTO USUARIOS
	(US_LOGIN, US_PASSWORD)
VALUES
	('biamarou@gmail.com', 'bccimeusp'),
	('jef@ime.usp.br',     'melhordba'),
	('biamarou@gmail.com', 'bccimeusp'),
	('biamarou@gmail.com', 'bccimeusp'),
	('biamarou@gmail.com', 'bccimeusp');

INSERT INTO ALUNO
	(AL_NUSP, AL_NOME, AL_DATA_MATRICULA, AL_DATA_FORMATURA)
VALUES
	('9793652', 'Beatriz Figueiredo', 'jan/2016', 'jan/2019', 1),
	('9793652', 'Beatriz Figueiredo', 'jan/2016', 'jan/2019', 1),
	('9793652', 'Beatriz Figueiredo', 'jan/2016', 'jan/2019', 1),
	('9793652', 'Beatriz Figueiredo', 'jan/2016', 'jan/2019', 1),
	('9793652', 'Beatriz Figueiredo', 'jan/2016', 'jan/2019', 1);

INSERT INTO PROFESSOR
	(PR_NUSP, PR_NOME, PR_AREA)
VALUES
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', 2),
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', 2),
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', 2),
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', 2),
	('1234', 'João Eduardo Ferreira', 'Banco de Dados', 2);

INSERT INTO PERFIL
	(PE_NOME)
VALUES
	('CUSTOS'),
	('ALUMNUS'),
	('PROFESSUS');

INSERT INTO SERVICO
	(SR_NOME, SR_DESCRICAO)
VALUES
	('ADITUM',  'Insere dados no BD'),
	('MUTATIO', 'Altera dados que já constam no BD'),
	('REMOVE',  'Remove dados do BD'),

INSERT INTO DISCIPLINA
	(DS_CODIGO, DS_NOME, DS_CREDITO_AULA, DS_CREDITO_TRAB, DS_SEMESTRE, 
	 DS_LOCAL, DS_EMENTA, DS_APROVEITAMENTO)
VALUES
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME',

	 'Técnicas para coleta de requisitos, modelagem, projeto e implementacão de sistemas de software. 
	 Conceitos de projetos de sistemas avançados. Qualidade de software. Gerência e manutenção de software. 
	 Usabilidade e experiência do usuário. Arquitetura de software, projeto orientado a objetos, padrões de projeto. 
	 Verificação e validação com testes automatizados. Persistência de dados: projeto conceitual, lógico e físico de 
	 bancos de dados. Modelo entidade relacionamento e modelo relacional: álgebra relacional, cálculo relacional e linguagem SQL.',

	 0),
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME',

	 'Técnicas para coleta de requisitos, modelagem, projeto e implementacão de sistemas de software. 
	 Conceitos de projetos de sistemas avançados. Qualidade de software. Gerência e manutenção de software. 
	 Usabilidade e experiência do usuário. Arquitetura de software, projeto orientado a objetos, padrões de projeto. 
	 Verificação e validação com testes automatizados. Persistência de dados: projeto conceitual, lógico e físico de 
	 bancos de dados. Modelo entidade relacionamento e modelo relacional: álgebra relacional, cálculo relacional e linguagem SQL.',

	 0),
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME',

	 'Técnicas para coleta de requisitos, modelagem, projeto e implementacão de sistemas de software. 
	 Conceitos de projetos de sistemas avançados. Qualidade de software. Gerência e manutenção de software. 
	 Usabilidade e experiência do usuário. Arquitetura de software, projeto orientado a objetos, padrões de projeto. 
	 Verificação e validação com testes automatizados. Persistência de dados: projeto conceitual, lógico e físico de 
	 bancos de dados. Modelo entidade relacionamento e modelo relacional: álgebra relacional, cálculo relacional e linguagem SQL.',

	 0),
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME',

	 'Técnicas para coleta de requisitos, modelagem, projeto e implementacão de sistemas de software. 
	 Conceitos de projetos de sistemas avançados. Qualidade de software. Gerência e manutenção de software. 
	 Usabilidade e experiência do usuário. Arquitetura de software, projeto orientado a objetos, padrões de projeto. 
	 Verificação e validação com testes automatizados. Persistência de dados: projeto conceitual, lógico e físico de 
	 bancos de dados. Modelo entidade relacionamento e modelo relacional: álgebra relacional, cálculo relacional e linguagem SQL.',

	 0),
	('MAC0350', 'Introdução ao Desenvolvimento de Sistemas', 4, 2, 1, 'IME',

	 'Técnicas para coleta de requisitos, modelagem, projeto e implementacão de sistemas de software. 
	 Conceitos de projetos de sistemas avançados. Qualidade de software. Gerência e manutenção de software. 
	 Usabilidade e experiência do usuário. Arquitetura de software, projeto orientado a objetos, padrões de projeto. 
	 Verificação e validação com testes automatizados. Persistência de dados: projeto conceitual, lógico e físico de 
	 bancos de dados. Modelo entidade relacionamento e modelo relacional: álgebra relacional, cálculo relacional e linguagem SQL.',

	 0);

INSERT INTO MODULO
	()
VALUES
	(),

INSERT INTO TRILHA
	()
VALUES
	(),

INSERT INTO PERFIL_USA_SERVICO
	()
VALUES
	(),

INSERT INTO OPTATIVA_FORMA_MODULO
	()
VALUES
	(),

INSERT INTO ALUNO_CURSA_DISCIPLINA
	()
VALUES
	(),

INSERT INTO USUARIO_TEM_PERFIL
	()
VALUES
	(),

INSERT INTO MODULO_PERTENCE_TRILHA
	()
VALUES
	(),

INSERT INTO PROFESSOR_TUTORA_ALUNO
	()
VALUES
	()