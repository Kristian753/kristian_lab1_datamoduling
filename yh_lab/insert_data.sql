-- Lägger in personuppgifter för alla.
INSERT INTO person (fornamn, efternamn, personnummer, email) VALUES
(1,'Kristian', 'Tawfeeq', '20060723-6932', 'kristiantawfeeq33@gmail.com'),
(2,'Angham', 'Ziad', '19790523-1283', 'anghamziad@gmail.com'),
(3,'Alawie', 'Galbi', '19900101-1459', 'alawiegalbi@gmail.com'),
(4,'Abo', 'Sargon', '19531123-7854', 'abosargon@gmail.com'),
(5,'Jalal', 'Ouzo', '19641230-0479', 'jalalouzo@gmail.com');
-- Skapar ett utbildningsprogram i databasen.
INSERT INTO program (program_id, program_namn) VALUES
(1,'Data engineer'),
(2,'Webb developer'),
(3,'automation engineer');
-- Lägger in studenter kopplade till person och klass.
INSERT INTO student (student_id, person_id, klass_id) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 1),
(5, 5, 2);
-- Skapar klass kopplad till program.
INSERT INTO klass (program_id, klass_namn, utbildningsledare_id) VALUES
(1,'DE25', 1), -- Data Engineer år 1
(2,'DE24', 2), -- Data Engineer år 2
(3,'DE23', 3), -- Data Engineer år 3
-- webb developer klasser
(2,'WD25', 1), -- Webb Developer år 1
(2,'WD24', 2), -- Webb Developer år 2
(2,'WD23', 3), -- Webb Developer år 3
-- automation engineer klasser
(3,'AE25', 1), -- Automation Engineer år 1
(3,'AE24', 2), -- Automation Engineer år 2
(3,'AE23', 3); -- Automation Engineer år 3



-- Kopplar utbildningsledare till person.
INSERT INTO utbildningsledare (person_id, fornamn, efternamn, email) VALUES
(1,'Hazim', 'Yalda', 'hazimy@gmail.com'),
(2,'Gorgis', 'Yalda', 'gorgisy@gmail.com'),
(3,'Hules', 'Jager', 'hulesjager@gmail.com');

INSERT INTO kurs (kurs_namn, kurskod, poang, beskrivning, program_id) VALUES
('Databasteknik', 'DE1010', 7.5, 'Introduktion till databasteknik och SQL.', 1),
('Webbutveckling', 'WD2020', 7.5, 'Grundläggande webbutveckling med HTML, CSS och JavaScript.', 2),
('Automationssystem', 'AE3030', 7.5, 'Principer för design och implementering av automationssystem.', 3);


