Prática: Modelagem de Banco (Curso)

CREATE TABLE "Alunos" (
	id SERIAL NOT NULL PRIMARY KEY,
	"nome" varchar(50) NOT NULL,
	"CPF" varchar(11) NOT NULL,
	"email" TEXT NOT NULL
);



CREATE TABLE "CadTurma" (
	id SERIAL NOT NULL PRIMARY KEY,
	"código" varchar(255) NOT NULL
);



CREATE TABLE "Turma" (
	id SERIAL NOT NULL PRIMARY KEY,
	"idAluno" serial NOT NULL,
	"idTurma" serial NOT NULL,
	"dataEntrada" serial NOT NULL,
	"dataSaida" serial NOT NULL
);



CREATE TABLE "CadNotas" (
	id SERIAL NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL 
);



CREATE TABLE "Projetos" (
	id SERIAL NOT NULL PRIMARY KEY,
	"data" DATE NOT NULL,
	"idNota" serial NOT NULL,
	"name" TEXT NOT NULL,
	"idModulo" serial NOT NULL
);



CREATE TABLE "Modulo" (
	id SERIAL NOT NULL PRIMARY KEY,
	"nome" TEXT NOT NULL
);


ALTER TABLE "Turma" ADD CONSTRAINT "Turma_fk0" FOREIGN KEY ("idAluno") REFERENCES "Alunos"("id");
ALTER TABLE "Turma" ADD CONSTRAINT "Turma_fk1" FOREIGN KEY ("idTurma") REFERENCES "CadTurma"("id");
ALTER TABLE "Projetos" ADD CONSTRAINT "Projetos_fk0" FOREIGN KEY ("idNota") REFERENCES "CadNotas"("id");
ALTER TABLE "Projetos" ADD CONSTRAINT "Projetos_fk1" FOREIGN KEY ("idModulo") REFERENCES "Modulo"("id");







