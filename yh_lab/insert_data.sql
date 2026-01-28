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
('Maya', 'Leon', '19920202-2345', 'mayaleon@gmail.com', 1)

-- DE24;
('Marcilia', 'Gilana', '19930303-3456', 'marcilia.gilana@gmail.com', 2),
('Paula', 'Somie', '19940404-4567', 'paulasomie@gmail.com', 2)