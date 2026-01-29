-- TEST 1: Visa alla klasser med program och ledare
-- Visar klassnamn, programnamn och utbildningsledare
SELECT 
    k.klass_namn AS klass,
    p.program_namn AS program,
    ul.fornamn || ' ' || ul.efternamn AS utbildningsledare
FROM klass k
JOIN program p ON k.program_id = p.program_id
JOIN utbildningsledare ul ON k.ledare_id = ul.ledare_id
ORDER BY k.klass_namn;
-- TEST 2: Räkna klasser per utbildningsledare
-- Visar hur många klasser varje ledare ansvarar för
SELECT 
    ul.fornamn || ' ' || ul.efternamn AS utbildningsledare,
    ul.email,
    COUNT(k.klass_id) AS antal_klasser
FROM utbildningsledare ul
LEFT JOIN klass k ON ul.ledare_id = k.ledare_id
GROUP BY ul.ledare_id, ul.fornamn, ul.efternamn, ul.email
ORDER BY antal_klasser DESC;
-- TEST 3: Visa alla studenter med klass
-- Listar alla studenter och deras klass/program
SELECT 
    s.fornamn || ' ' || s.efternamn AS student,
    s.email,
    k.klass_namn AS klass,
    p.program_namn AS program
FROM student s
JOIN klass k ON s.klass_id = k.klass_id
JOIN program p ON k.program_id = p.program_id
ORDER BY s.efternamn, s.fornamn;
-- TEST 4: Räkna studenter per klass
-- Visar antal studenter i varje klass
SELECT 
    k.klass_namn AS klass,
    p.program_namn AS program,
    COUNT(s.student_id) AS antal_studenter
FROM klass k
JOIN program p ON k.program_id = p.program_id
LEFT JOIN student s ON k.klass_id = s.klass_id
GROUP BY k.klass_id, k.klass_namn, p.program_namn
ORDER BY k.klass_namn;
-- TEST 5: Visa kurser för varje program
-- Listar alla kurser och vilket program de tillhör
SELECT 
    p.program_namn AS program,
    k.kurs_namn AS kurs,
    k.kurs_kod AS kurskod,
    k.poang AS poäng,
    k.beskrivning
FROM kurs k
JOIN program p ON k.program_id = p.program_id
ORDER BY p.program_namn, k.kurs_kod;
-- TEST 6: Visa utbildare och deras kurser
-- Visar vilka kurser varje utbildare undervisar
SELECT 
    u.fornamn || ' ' || u.efternamn AS utbildare,
    u.email,
    k.kurs_namn AS kurs,
    k.kurs_kod AS kurskod,
    p.program_namn AS program
FROM utbildare_kurs uk
JOIN utbildare u ON uk.utbildare_id = u.utbildare_id
JOIN kurs k ON uk.kurs_id = k.kurs_id
JOIN program p ON k.program_id = p.program_id
ORDER BY u.efternamn, k.kurs_namn;
-- TEST 7: Visa konsulter och deras företag
-- Visar konsulter, företag och timpriser
SELECT 
    u.fornamn || ' ' || u.efternamn AS konsult,
    f.foretagsnamn AS företag,
    k.timpris AS timpris_kr,
    f.organisationsnummer AS org_nr,
    CASE WHEN f.har_f_skatt THEN 'Ja' ELSE 'Nej' END AS har_f_skatt
FROM konsult k
JOIN utbildare u ON k.utbildare_id = u.utbildare_id
JOIN foretag f ON k.foretag_id = f.foretag_id
ORDER BY k.timpris DESC;
-- TEST 8: Sammanfattning av all data
-- Räknar antal poster i varje tabell
SELECT 'Program' AS tabell, COUNT(*) AS antal FROM program
UNION ALL
SELECT 'Klasser', COUNT(*) FROM klass
UNION ALL
SELECT 'Studenter', COUNT(*) FROM student
UNION ALL
SELECT 'Kurser', COUNT(*) FROM kurs
UNION ALL
SELECT 'Utbildare', COUNT(*) FROM utbildare
UNION ALL
SELECT 'Utbildningsledare', COUNT(*) FROM utbildningsledare
UNION ALL
SELECT 'Konsulter', COUNT(*) FROM konsult
UNION ALL
SELECT 'Företag', COUNT(*) FROM foretag
ORDER BY antal DESC;