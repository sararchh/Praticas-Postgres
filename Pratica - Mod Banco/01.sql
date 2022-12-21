Prática: Modelagem de Banco (Agência de Viagens)

CREATE TABLE "companies" (
	id SERIAL NOT NULL PRIMARY KEY,
	"name" VARCHAR(100) NOT NULL,
	"sigla" VARCHAR(10) NOT NULL,
	"idVoo" serial NOT NULL
);

CREATE TABLE "voos" (
	id SERIAL NOT NULL PRIMARY KEY,
	"sigla" VARCHAR(10) NOT NULL,
	"idSource" serial NOT NULL,
	"idDestiny" serial NOT NULL,
	"departureTime" serial NOT NULL,
	"arrivalTime" serial NOT NULL
);



CREATE TABLE "aeroportos" (
	id SERIAL NOT NULL PRIMARY KEY,
	"name" serial NOT NULL,
	"sigla" VARCHAR(10) NOT NULL
);


ALTER TABLE "companies" ADD CONSTRAINT "companies_fk0" FOREIGN KEY ("idVoo") REFERENCES "voos"("id");
ALTER TABLE "voos" ADD CONSTRAINT "voos_fk0" FOREIGN KEY ("idSource") REFERENCES "aeroportos"("id");
ALTER TABLE "voos" ADD CONSTRAINT "voos_fk1" FOREIGN KEY ("idDestiny") REFERENCES "aeroportos"("id");
