CREATE TABLE program (
    person_id SERIAL PRIMARY KEY,
    namn TEXT
);

CREATE TABLE person (
    person_id SERIAL PRIMARY KEY,
    fornamn TEXT,
    efternamn TEXT
    personnummer TEXT,
    email TEXT
);

CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id),
    klass_id INT REFERENCES klass(klass_id)
);

CREATE TABLE klass (
    klass_id SERIAL PRIMARY KEY,
    program_id INT REFERENCES program(program_id),
    utbildningsledare_id INT REFERENCES utbildningsledare(utbildningsledare_id)
);

CREATE TABLE utbildningsledare (
    utbildningsledare_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id)
);

CREATE TABLE kurs (
    kurs_id SERIAL PRIMARY KEY,
    namn TEXT,
    kurskod TEXT,
    poang INT
);

CREATE TABLE utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    person_id INT REFERENCES person(person_id)
);

CREATE TABLE utbildare_kurs (
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (utbildare_id, kurs_id)
);