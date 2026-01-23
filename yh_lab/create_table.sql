-- Tabell för känsliga personuppgifter lagras
CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    fornamn TEXT,
    efternamn TEXT
    personnummer TEXT,
    email TEXT
);
-- Tabell för utbildningsprogram inom skolan
CREATE TABLE program (
    program_id SERIAL PRIMARY KEY,
    namn TEXT
);
-- Tabell för studenter kopplade personer
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id),
    klass_id INT REFERENCES klass(klass_id)
);
-- Tabell för klasser inom program
CREATE TABLE klass (
    klass_id SERIAL PRIMARY KEY,
    program_id INT REFERENCES program(program_id),
    utbildningsledare_id INT REFERENCES utbildningsledare(utbildningsledare_id)
);
-- Tabell för utbildningsledare kopplade personer
CREATE TABLE utbildningsledare (
    utbildningsledare_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id)
);
-- Tabell för kurser inom utbildning
CREATE TABLE kurs (
    kurs_id SERIAL PRIMARY KEY,
    namn TEXT,
    kurskod TEXT,
    poang INT,
    program_id INT REFERENCES program(program_id)
);
-- Tabell för utbildare kopplade personer
CREATE TABLE utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id)
);
-- Kopplingstabell mellan utbildare och kurser
CREATE TABLE utbildare_kurs (
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (utbildare_id, kurs_id)
);