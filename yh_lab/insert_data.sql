INSERT INTO program (program_namn) VALUES
('Data Engineering'),
('Webbutveckling'),
('Nätverkstekniker');

INSERT INTO utbildningsledare (fornamn, efternamn, email) VALUES
('Angham', 'Ziad', 'anghamziad@gmail.com'),
('Jalal', 'Ouzo', 'jalalouzo@gmail.com'),
('Hules', 'Tawfeeq', 'hulestawfeeq@gmail.com'),
('Abo', 'Sargon', 'abosargon@gmail.com');
-- Data Engineering (program_id = 1) 3år
INSERT INTO klass (klass_namn, program_id, ledare_id) VALUES
('DE23', 1, 1), -- Data Engineering 2023
('DE24', 1, 1), -- Data Engineering 2024
('DE25', 1, 2); -- Data Engineering 2025

-- Webbutveckling (program_id = 2) 3år
('WB23', 2, 2), -- Webbutveckling 2023
('WB24', 2, 3), -- Webbutveckling 2024
('WB25', 2, 3); -- Webbutveckling 2025

-- Nätverkstekniker (program_id = 3) 3år
('NT23', 3, 4), -- Nätverkstekniker 2023
('NT24', 3, 4), -- Nätverkstekniker 2024
('NT25', 3, 1); -- Nätverkstekniker 2025

INSERT INTO student (fornamn, efternamn, personnummer, email, klass_id) VALUES
-- DE25;
('Gorgis', 'Yalda', '19900101-1234', 'gorgisyalda@gmail.com', 1),
('Maya', 'Leon', '19920202-2345', 'mayaleon@gmail.com', 1),

-- DE24;
('Marcilia', 'Gilana', '19930303-3456', 'marcilia.gilana@gmail.com', 2),
('Paula', 'Somie', '19940404-4567', 'paulasomie@gmail.com', 2),

-- DE23;
('Khalid', 'Tawfeeq', '19950505-5678', 'khalidtawfeeq@gmail.com', 3),
('Lina', 'Hanna', '19960606-6789', 'linahanna@gmail.com', 3),

-- WB25;
('Sara', 'Omar', '19970707-7890', 'saraomar@gmail.com', 4),
('Nour', 'Yousef', '19980808-8901', 'nouryousef@gmail.com', 4),

-- WB24;
('Dina', 'Khalil', '19990909-9012', 'dinakhalil@gmail.com', 5),
('Rana', 'Faris', '20001010-0123', 'ranafaris@gmail.com', 5),

-- WB23;
('Omar', 'Saeed', '20011111-1234', 'omarsaeed@gmail.com', 6),

-- NT25;
('Yasmin', 'Adel', '20021212-2345', 'yasminadel@gmail.com', 7),

-- NT24;
('Tamer', 'Nabil', '20031313-3456', 'tamernabil@gmail.com', 8),

-- NT23;
('Lamia', 'Hussein', '20041414-4567', 'lamiahussein@gmail.com', 9);

INSERT INTO kurs (kurs_kod, kurs_namn, poang, beskrivning, program_id) VALUES
-- Data Engineering Kurser
('DE101', 'Introduktion till Data Engineering', 100, 'Grundläggande koncept inom data engineering.', 1),
('DE102', 'Databashantering', 50, 'Lär dig hantera och optimera databaser.', 1),
('DE103', 'Big Data Tekniker', 100, 'Utforska tekniker för hantering av stora datamängder.', 1),
-- Webbutveckling Kurser
('WB101', 'Webbutveckling Grunder', 100, 'Introduktion till webbutveckling och design.', 2),
('WB102', 'Frontend Utveckling', 100, 'Bygg interaktiva användargränssnitt.', 2),
('WB103', 'Backend Utveckling', 100, 'Lär dig server-side programmering och databashantering.', 2),
-- Nätverkstekniker Kurser
('NT101', 'Nätverksprinciper', 50, 'Grundläggande nätverkskoncept och protokoll.', 3),
('NT102', 'Säkerhet i Nätverk', 50, 'Lär dig om nätverkssäkerhet och skydd.', 3),
('NT103', 'Avancerad Nätverksteknik', 100, 'Utforska avancerade nätverkstekniker och konfigurationer.', 3);

INSERT INTO utbildare (fornamn, efternamn, email) VALUES
('Maria', 'Sofie', 'maria.sofie@gmail.com'),
('Erik', 'Larsen', 'erik.larsen@gmail.com'),
('Anna', 'Karin', 'anna.karin@gmail.com'),
('Johan', 'Pettersson', 'johan.pettersson@gmail.com'),
('Karin', 'Olsson', 'karin.olsson@gmail.com'),
('Lars', 'Andersson', 'lars.andersson@gmail.com');

INSERT INTO foretag (organisationsnummer, foretagsnamn, adress, har_f_skatt) VALUES
('556677-8899', 'Anaghab AB', 'Storgatan 1, 12345 Stockholm', TRUE),
('667788-9900', 'Top Class AB', 'Lillgatan 2, 23456 Göteborg', FALSE),
('778899-0011', 'Five Stars AB', 'Köpmangatan 3, 34567 Malmö', TRUE);

INSERT INTO konsult (utbildare_id, foretag_id, timpris) VALUES
(1, 1, 850.00), -- Maria Sofie från Anaghab AB 850 kr/h
(3, 2, 750.00); -- Anna Karin från Top Class AB 750 kr/h

INSERT INTO utbildare_kurs (utbildare_id, kurs_id) VALUES
(6, 7), -- Lars Andersson undervisar kurs Nätverksprinciper
(3, 4), -- Anna Karin undervisar kurs Webbutveckling Grunder
(4, 5), -- Johan Pettersson undervisar kurs Frontend Utveckling
(2, 1), -- Erik Larsen undervisar kurs Introduktion till Data Engineering
(5, 2), -- Karin Olsson undervisar kurs Databashantering
(4, 3); -- Johan Pettersson undervisar kurs Big Data Tekniker 


