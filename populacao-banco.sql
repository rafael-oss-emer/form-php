INSERT INTO PROFESSOR 
(codigo, email, nome, titulacao) VALUES 
(0090, "pardal@disney.com", "Professor Pardal", "Dr."),
(0091, "alexandre@disney.com", "Professor Alexandre", "Dr."),
(0092, "frank@disney.com", "Professor Frank", "Dr."),
(0093, "bruno@disney.com", "Professor Bruno", "Dr."),
(0094, "raquel@disney.com", "Professora Raquel", "Dr."),
(0095, "edilson@disney.com", "Professor Edilson", "Dr.");

INSERT INTO ALUNO 
(registro, nome, dataNascimento) VALUES
(222, "Luisino", "1937-02-05"),
(223, "Pedrinho", "1937-02-05"),
(224, "Marinho", "1937-02-05"),
(225, "Joaninha", "1937-02-05"),
(226, "Francisquinho", "1937-02-05"),
(227, "Mariazinha", "1937-02-05");
 
INSERT INTO DISCIPLINA 
(id, nome, cargaHoraria, livro) VALUES
(NULL, "Invenpatólis", 80, "Quadrinhos Disney"),
(NULL, "Banco de Dados", 80, "Introdução BD"),
(NULL, "Algoritmos", 80, "Introdução Algoritmos"),
(NULL, "Web 1", 40, "Introdução Web 1"),
(NULL, "Web 2", 80, "Introdução Web 2"),
(NULL, "Estrutura de Dados", 40, "Introdução ED");
 
 
INSERT INTO TURMA 
(codigo, disciplina, sigla, nAlunos, sala, professor) VALUES
(1, 1, "PTLD1950-1", 10, "Lagoa", 0090),
(2, 2, "CTDS2023-1", 40, "B302", 0091),
(3, 3, "CTDS2022-1", 40, "B303", 0092),
(4, 4, "CTDS2021-1", 40, "B303", 0093),
(5, 5, "CTDS2020-1", 40, "B302", 0092),
(6, 6, "CTDS2023-2", 40, "B302", 0091);
 
 
 INSERT INTO MATRICULA 
 (id, turma, aluno, ano, nota) VALUES
 (NULL, 1, 222, 1950, NULL),
 (NULL, 2, 223, 2023, NULL),
 (NULL, 2, 224, 2022, NULL),
 (NULL, 3, 225, 2021, NULL),
 (NULL, 3, 226, 2020, NULL),
 (NULL, 4, 227, 2023, NULL);