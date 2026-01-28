-- skapar tabeller för utbildningsprogram
CREATE TABLE program (
    program_id SERIAL PRIMARY KEY,
    program_namn VARCHAR(50) NOT NULL
);
-- lagrar information om utbildningsledare
CREATE TABLE utbildningsledare (
    ledare_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);
-- hanterar klasser med programkoppling
CREATE TABLE klass (
    klass_id SERIAL PRIMARY KEY,
    klass_namn VARCHAR(50) NOT NULL,
    program_id INT REFERENCES program(program_id),
    ledare_id INT REFERENCES utbildningsledare(ledare_id)
);
-- studentinformation med klasskoppling
CREATE TABLE student (
    student_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    personnummer VARCHAR(12) UNIQUE NOT NULL,
    email VARCHAR(100),
    klass_id INT REFERENCES klass(klass_id)
);
-- kursinformation med poäng och beskrivning
CREATE TABLE kurs (
    kurs_id SERIAL PRIMARY KEY,
    kurs_kod VARCHAR(10) UNIQUE NOT NULL,
    kurs_namn VARCHAR(100) NOT NULL,
    poang INT NOT NULL,
    beskrivning TEXT,
    program_id INT REFERENCES program(program_id)
);
-- tabell för utbildares personuppgifter
CREATE TABLE utbildare (
    utbildare_id SERIAL PRIMARY KEY,
    fornamn VARCHAR(50) NOT NULL,
    efternamn VARCHAR(50) NOT NULL,
    email VARCHAR(100) 
);
-- företagsinformation för konsulter
CREATE TABLE foretag (
    foretag_id SERIAL PRIMARY KEY,
    organisationsnummer VARCHAR(20) UNIQUE NOT NULL,
    foretagsnamn VARCHAR(100) NOT NULL,
    adress VARCHAR(200),
    har_f_skatt BOOLEAN DEFAULT FALSE
);
-- kopplar utbildare till företag som konsult 
CREATE TABLE konsult (
    konsult_id SERIAL PRIMARY KEY,
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    foretag_id INT REFERENCES foretag(foretag_id),
    timpris DECIMAL(10,2) NOT NULL,
    UNIQUE (utbildare_id)
);
-- koppling mellan utbildare och kurser (M:M)
CREATE TABLE utbildare_kurs (
    utbildare_id INT REFERENCES utbildare(utbildare_id),
    kurs_id INT REFERENCES kurs(kurs_id),
    PRIMARY KEY (utbildare_id, kurs_id)
);