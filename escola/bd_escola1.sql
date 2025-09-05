
CREATE TABLE ALUNO(
id_registro INT(4),
nome VARCHAR(50) NOT NULL,
dataNascimento DATE,
PRIMARY KEY(id_registro)
);

CREATE TABLE PROFESSOR(
codigo INT(4),
nome VARCHAR(50) NOT NULL,
email VARCHAR(30),
titulacao ENUM('grad', 'espec',' msc', 'dr'),
PRIMARY KEY(codigo)
);

CREATE TABLE DISCIPLINA(
id_disciplina INT(4) AUTO_INCREMENT,
nome VARCHAR(50) NOT NULL,
cargaHoraria INT(4) CHECK( cargaHoraria > 0),
livro VARCHAR(50),
PRIMARY KEY(id_disciplina)
);

CREATE TABLE TURMA(
codigo INT(4),
fk_idDisciplina INT(4),
sigla VARCHAR(20) UNIQUE DEFAULT "CTDS2023-1",
nAlunos INT(50),
sala INT(4),
fk_codigo INT(4),
PRIMARY KEY(codigo),
FOREIGN KEY(fk_codigo) REFERENCES PROFESSOR(codigo),
FOREIGN KEY(fk_idDisciplina) REFERENCES DISCIPLINA(id_disciplina)
);

CREATE TABLE MATRICULA(
id_matricula INT(4) AUTO_INCREMENT,
fk_codigo INT(4),
fk_idRegistro INT(4),
ano VARCHAR(4),
nota FLOAT(5,2),
PRIMARY KEY(id_matricula),
FOREIGN KEY(fk_codigo) REFERENCES TURMA(codigo),
FOREIGN KEY(fk_idRegistro) REFERENCES ALUNO(id_registro) 
);
