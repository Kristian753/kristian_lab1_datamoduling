-- Lägger in personuppgifter för alla.
INSERT INTO person (fornman, efternamn, personnummer, email) VALUES
('Kristian', 'Tawfeeq', '20060723-6932', 'kristiantawfeeq33@gmail.com'),
('Angham', 'Ziad', '19790523-1283', 'anghamziad@gmail.com'),
('Alawie', 'Galbi', '19900101-1459', 'alawiegalbi@gmail.com');
-- Skapar ett utbildningsprogram i databasen.
INSERT INTO program (namn) VALUES
('Data engineer');
-- Kopplar utbildningsledare till person.
INSERT INTO utbildningsledare (person_id, fornamn, efternamn, email) VALUES
(1);
-- Skapar klass kopplad till program.
INSERT INTO klass (program_id, utbildningsledare_id) VALUES
(1, 1);


