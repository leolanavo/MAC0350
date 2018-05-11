CREATE DATABASE yggdrasil_bia_lana;
\c yggdrasil_bia_lana;


CREATE TABLE IF NOT EXISTS USUARIO(
    US_ID               SERIAL PRIMARY KEY     NOT NULL,
    US_LOGIN            CHAR(320)              NOT NULL,
    US_PASSWORD         CHAR(12)               NOT NULL
);

CREATE TABLE IF NOT EXISTS ALUNO(
    AL_ID               SERIAL PRIMARY KEY     NOT NULL,
    AL_NUSP             INT                    NOT NULL UNIQUE,
    AL_NOME             CHAR(50)               NOT NULL,
    AL_DATA_MATRICULA   CHAR(10)               NOT NULL,
    AL_DATA_FORMATURA   CHAR(10),
    AL_USER_ID          INT                    references USUARIO(US_ID)
);

CREATE TABLE IF NOT EXISTS PROFESSOR(
    PR_ID               SERIAL PRIMARY KEY     NOT NULL,
    PR_NUSP             INT                    NOT NULL UNIQUE,
    PR_NOME             CHAR(50)               NOT NULL,
    PR_AREA             CHAR(50)               NOT NULL,
    PR_USER_ID          INT                    references USUARIO(US_ID)
);

CREATE TABLE IF NOT EXISTS PERFIL(
    PE_ID               SERIAL PRIMARY KEY     NOT NULL,
    PE_NOME             CHAR(50)               NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS SERVICO(
    SR_ID               SERIAL PRIMARY KEY     NOT NULL,
    SR_NOME             CHAR(50)               NOT NULL UNIQUE,
    SR_DESCRICAO        TEXT                   NOT NULL
);

CREATE TABLE IF NOT EXISTS DISCIPLINA(
    DS_ID                  SERIAL PRIMARY KEY     NOT NULL,
    DS_CODIGO              CHAR(7)                NOT NULL UNIQUE,
    DS_NOME                CHAR(50)               NOT NULL,
    DS_CREDITO_AULA        INT                    NOT NULL CHECK(DS_CREDITO_AULA >= 0 AND DS_CREDITO_AULA <= 40),
    DS_CREDITO_TRAB        INT                    NOT NULL CHECK(DS_CREDITO_TRAB >= 0 AND DS_CREDITO_TRAB <= 40),
    DS_SEMESTRE            INT                    NOT NULL CHECK(DS_SEMESTRE >= 1 AND DS_SEMESTRE <= 2),
    DS_LOCAL               CHAR(10)               NOT NULL,
    DS_EMENTA              TEXT                   NOT NULL,
    DS_APROVEITAMENTO      INT                    NOT NULL, CHECK(DS_APROVEITAMENTO >= 0 AND DS_APROVEITAMENTO <= 2)
);

CREATE TABLE IF NOT EXISTS MODULO(
    MD_ID                  SERIAL PRIMARY KEY     NOT NULL,
    MD_NOME                CHAR(50)               NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS TRILHA(
    TR_ID                  SERIAL PRIMARY KEY     NOT NULL,
    TR_NOME                CHAR(50)               NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS PERFIL_USA_SERVICO(
    PERFIL_ID              INT    references PERFIL(PE_ID),
    SERVICO_ID             INT    references SERVICO(SR_ID)
);

CREATE TABLE IF NOT EXISTS OPTATIVA_FORMA_MODULO(
    OPTATIVA_ID         INT    references DISCIPLINA(DS_ID),
    MODULO_ID           INT    references MODULO(MD_ID)
);

CREATE TABLE IF NOT EXISTS ALUNO_CURSA_DISCIPLINA(
    ALUNO_ID            INT    references ALUNO(AL_ID),
    DISCIPLINA_ID       INT    references DISCIPLINA(DS_ID),
    PRETENDE_SEM        INT    NOT NULL CHECK(PRETENDE_SEM >= 1 AND PRETENDE_SEM <= 2),
    PRETENDE_ANO        INT    NOT NULL CHECK(PRETENDE_ANO >= 2000),
    STATUS              BOOLEAN
);

CREATE TABLE IF NOT EXISTS USUARIO_TEM_PERFIL(
    USUARIO_ID          INT    references USUARIO(US_ID),
    PERFIL_ID           INT    references PERFIL(PE_ID)
);
CREATE TABLE IF NOT EXISTS MODULO_PERTENCE_TRILHA(
    MODULO_ID           INT    references MODULO(MD_ID),
    TRILHA_ID           INT    references TRILHA(TR_ID)
);
CREATE TABLE IF NOT EXISTS PROFESSOR_TUTORA_ALUNO(
    PROFESSOR_ID        INT   references PROFESSOR(PR_ID),
    ALUNO_ID            INT   references ALUNO(AL_ID)
);
