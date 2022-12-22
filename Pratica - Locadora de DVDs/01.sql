Prática: Modelagem de Banco (Locadora de DVDs);

CREATE DATABASE Locadora;

CREATE TABLE "discs" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"number" TEXT NOT NULL UNIQUE,
	"code" TEXT NOT NULL UNIQUE,
  "filmsId" INTEGER NOT NULL REFERENCES "films"(id)
);

CREATE TABLE "films" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"title" TEXT NOT NULL UNIQUE,
	"categoryId" INTEGER NOT NULL REFERENCES "category"(id)
);

CREATE TABLE "category" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL UNIQUE
);

CREATE TABLE "actors" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL UNIQUE,
	"country" TEXT NOT NULL,
	"birthDate" DATE NOT NULL
);

CREATE TABLE "filmsActors" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"actorsId" INTEGER NOT NULL REFERENCES "actors"(id),
	"filmsId" INTEGER NOT NULL REFERENCES "films"(id)
);

CREATE TABLE "clients" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"name" TEXT NOT NULL,
	"CPF" VARCHAR(11) NOT NULL UNIQUE
);

CREATE TABLE "phones" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"phones" TEXT NOT NULL
);

CREATE TABLE "phonesClients" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"phonesId" INTEGER NOT NULL REFERENCES "phones"(id),
	"clientsId" INTEGER NOT NULL REFERENCES "clients"(id)
);

CREATE TABLE "adresses" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"street" TEXT NOT NULL,
	"number" TEXT NOT NULL,
	"complement" TEXT NOT NULL,
	"district" TEXT NOT NULL,
	"CEP" TEXT NOT NULL,
	"city" TEXT NOT NULL,
	"state" TEXT NOT NULL
);

CREATE TABLE "adressesClients" (
  "id" SERIAL NOT NULL PRIMARY KEY,
	"adressesId" INTEGER NOT NULL REFERENCES "adresses"(id),
	"clientsId" INTEGER NOT NULL REFERENCES "clients"(id)
);

CREATE TABLE "location" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "clientsId" INTEGER NOT NULL REFERENCES "clients"(id),
  "discsId" INTEGER NOT NULL REFERENCES "discs"(id),
  "date" DATE NOT NULL
);

CREATE TYPE "transactionNote" AS ENUM ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9','10' );

EATE TABLE "devolution" (
  "id" SERIAL NOT NULL PRIMARY KEY,
  "locationId" INTEGER NOT NULL REFERENCES "location"(id),
  "date" DATE NOT NULL,
  "noteFilms" "transactionNote" NOT NULL,
  "noteAttendance" "transactionNote" NOT NULL
);