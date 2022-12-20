CREATE DATABASE drivenUsers;

CREATE TABLE states (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL
);

CREATE TABLE cities (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
  stateId INTEGER NOT NULL REFERENCES "states"("id")
);

CREATE TABLE customerAddresses (
	id SERIAL PRIMARY KEY,
  customerId INTEGER NOT NULL REFERENCES "customers"("id"),
  street TEXT NOT NULL,
  number INTEGER NOT NULL,
  complement TEXT NOT NULL,
  postalCode TEXT NOT NULL,
  cityId INTEGER NOT NULL REFERENCES "cities"("id")
);

CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	fullName VARCHAR(50) NOT NULL,
  cpf TEXT NOT NULL,
  email TEXT NOT NULL,
  password TEXT NOT NULL
);

CREATE TABLE customerPhones (
	id SERIAL PRIMARY KEY,
	customerId INTEGER NOT NULL REFERENCES "customers"("id"),
  number INTEGER NOT NULL,
  type TEXT NOT NULL
);

CREATE TABLE bankAccount (
	id SERIAL PRIMARY KEY,
	customerId INTEGER NOT NULL REFERENCES "customers"("id"),
  accountNumber INTEGER NOT NULL,
  agency INTEGER NOT NULL,
  openDate TIMESTAMP NOT NULL DEFAULT NOW(),
  closeDate TIMESTAMP NOT NULL DEFAULT NOW()
);

CREATE TABLE transactions (
	id SERIAL PRIMARY KEY,
	bankAccountId INTEGER NOT NULL REFERENCES "bankAccount"("id"),
  amount INTEGER NOT NULL,
  type TEXT NOT NULL,
  time TEXT NOT NULL,
  description TEXT NOT NULL,
  cancelled BOOLEAN NOT NULL
);

CREATE TABLE transactions (
	id SERIAL PRIMARY KEY,
	bankAccountId INTEGER NOT NULL REFERENCES "bankAccount"("id"),
  name VARCHAR(50) NOT NULL,
  number INTEGER NOT NULL,
  securityCode INTEGER NOT NULL,
  expirationMonth INTEGER NOT NULL,
  expirationYear INTEGER NOT NULL,
  password TEXT NOT NULL,
  limit INTEGER NOT NULL
);