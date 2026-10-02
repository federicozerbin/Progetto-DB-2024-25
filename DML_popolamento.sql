---- 1 popolamento gestore
INSERT INTO Gestore (ID_Gestore, TipoUtente, Passwd, Username, RifRegistroPresenza) VALUES
('GU001', 'Admin', 'v4#8eYb', 'montanari_l', 'RP001'),
('GU002', 'Admin', 'P!6Xnt9', 'borgo_luigi', 'RP002'),
('GU003', 'Admin', '4N4F&e0', 'camillo_terme', 'RP003'),
('GU004', 'Admin', 's2HrgHp', 'ramazzotti_v', 'RP004'),
('GU005', 'Admin', 'z7^3XZm', 'borgo_tiziana', 'RP005'),
('GU006', 'Admin', 'MIk4yCy', 'petrucelli_m', 'RP006'),
('GU007', 'Admin', '0YAxfx8', 'romeo_sali', 'RP007'),
('GU008', 'Admin', 'Aa9ogUu', 'san_ezio_l', 'RP008'),
('GU009', 'Admin', 'A5n11Fb', 'borgo_dina', 'RP009'),
('G010', 'Admin', '62OPToq', 'san_pierang', 'RP010');

---2 popolamento visitatore
INSERT INTO Visitatore (ID_Visitatore, TipoUtente, Passwd, Username, Anni, NumPersone, Esente) VALUES
('V001', 'Adulti', 'vis123', 'marco_rossi', 35, 2, 'false'),
('V002', 'Adulti', 'vis124', 'giulia_bianchi', 28, 1, 'true'),
('V003', 'Gruppi', 'vis125', 'luca_verdi', 42, 4, 'false'),
('V004', 'Anziani', 'vis126', 'francesca_neri', 65, 2, 'false'),
('V005', 'Anziani', 'vis127', 'mario_gallo', 66, 3, 'true'),
('V006', 'Adulti', 'vis128', 'laura_conti', 24, 1, 'false'),
('V007', 'Gruppi', 'vis129', 'simone_martini', 37, 2, 'true'),
('V008', 'Gruppi', 'vis130', 'giovanni_ferrari', 59, 5, 'false'),
('V009', 'Adulti', 'vis131', 'elena_russo', 31, 2, 'false'),
('V010', 'Adulti', 'vis132', 'andrea_mancini', 47, 3, 'true');

--3 Guida
INSERT INTO Guida VALUES 
('GU001', 'L', 'pass001', 'alice_rossi', 5, 5, 'Professionale e simpatica', 'V001', 'IT100,IT200', '08:00-13:00;14:00-17:00'),
('GU002', 'L', 'pass002', 'marco_neri', 4, 4, 'Molto chiaro nelle spiegazioni', 'V002', 'IT101', '09:00-12:00;15:00-18:00'),
('GU003', 'L', 'pass003', 'laura_bianchi', 5, 5, 'Esperta di fauna selvatica', 'V003', 'IT102,IT201', '08:00-13:00'),
('GU004', 'L', 'pass004', 'gianni_verdi', 3, 3, 'Puntuale ma un po’ freddo', 'V004', 'IT103', '10:00-16:00'),
('GU005', 'L', 'pass005', 'chiara_gialli', 4, 4, 'Molto disponibile', 'V005', 'IT104,IT202', '07:30-12:30;13:30-17:30'),
('GU006', 'L', 'pass006', 'luca_blu', 5, 5, 'Esperienza fantastica', 'V006', 'IT105', '08:00-12:00;14:00-18:00'),
('GU007', 'L', 'pass007', 'anna_marroni', 3, 3, 'Poco coinvolgente', 'V007', 'IT106,IT203', '09:00-13:00'),
('GU008', 'L', 'pass008', 'matteo_ferri', 5, 5, 'Appassionato e competente', 'V008', 'IT107', '08:30-12:30;14:30-18:30'),
('GU009', 'L', 'pass009', 'elisa_rosa', 4, 4, 'Molto attenta ai dettagli', 'V009', 'IT108,IT204', '07:00-11:00;13:00-17:00'),
('GU010', 'L', 'pass010', 'giorgio_oro', 2, 2, 'Poca empatia', 'V010', 'IT109', '10:00-14:00');


--4 Area Protetta
INSERT INTO AreaProtetta VALUES 
('AP001', 'Parco Nazionale', 'GranParadiso', NULL, 'terrestre 71000', 'Piemonte', 'Bosco', 'Rupi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'G001', 4, 'Splendida area montana', 'V001'),
('AP002', 'Parco Nazionale', 'Stelvio', NULL, 'terrestre 134620', 'Lombardia', 'Ghiacciai', 'Montagne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'G002', 5, 'Vette mozzafiato', 'V002'),
('AP003', 'Riserva Naturale', 'LagoVico', NULL, 'lacuale 3286', 'Lazio', 'Lago', NULL, NULL, NULL, 'regionale', NULL, NULL, NULL, NULL, 3, 'G003', 3, 'Specchio d’acqua immerso nei boschi', 'V003'),
('AP004', 'Parco Nazionale', 'Aspromonte', NULL, 'terrestre 64000', 'Calabria', 'Montagna', 'Boschi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'G004', 4, 'Territorio selvaggio e affascinante', 'V004'),
('AP005', 'Parco Nazionale', 'CilentoValloDiano', NULL, 'terrestre 181000', 'Campania', 'Fiume', 'Montagne', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 'G005', 5, 'Patrimonio UNESCO', 'V005'),
('AP006', 'Riserva Naturale', 'MonteRufeno', NULL, 'terrestre 2892', 'Lazio', 'Bosco', NULL, NULL, NULL, 'regionale', NULL, NULL, NULL, NULL, 2, 'G006', 2, 'Riserva nascosta', 'V006'),
('AP007', 'Parco Nazionale', 'Majella', NULL, 'terrestre 74095', 'Abruzzo', 'Montagna', 'Grotte', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'G007', 4, 'Parco ricco di fauna', 'V007'),
('AP008', 'Parco Nazionale', 'Pollino', NULL, 'terrestre 192000', 'Basilicata', 'Faggeta', 'Rupi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 'G008', 4, 'Esteso e spettacolare', 'V008'),
('AP009', 'Parco Nazionale', 'Vesuvio', NULL, 'terrestre 8000', 'Campania', 'Vulcano', 'Rocce', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 'G009', 3, 'Vicino al vulcano attivo', 'V009'),
('AP010', 'Riserva Naturale', 'TorbiereSebino', NULL, 'torbiera 360', 'Lombardia', 'Zona Umida', NULL, NULL, NULL, 'statale', NULL, NULL, NULL, NULL, 3, 'G010', 3, 'Specie rare di uccelli', 'V010');

-- Programma Certificazione
INSERT INTO ProgrammaCertificazione VALUES 
('2024', 'C.E.T.S.'),
('2001', 'A.B.C'),
('2012', 'P.P.D.A'),
('2010', 'AGENDA2020'),
('2002', 'PROG2010'),
('2003', 'IMPEGNOECO'),
('1999', 'SIG'),
('2001', 'A.M.B.I.E.N.T.E.'),
('2006', 'E.C.O.');

-- Adesione
INSERT INTO Adesione VALUES 
('AP001', '2024', 'C.E.T.S.'),
('AP002', '2001', 'A.B.C'),
('AP003', '2012', 'P.P.D.A'),
('AP004', '2010', 'AGENDA2020'),
('AP005', '2002', 'PROG2010'),
('AP006', '2003', 'IMPEGNOECO'),
('AP007', '1999', 'SIG'),
('AP009', '2006', 'E.C.O.');


--- pop. struttura
INSERT INTO StrutturaRicettiva (Contatti, Indirizzo, TipologiaServizi, ValutazioneTot, Nome, ID_StrutturaRicettiva, RifAreaProtetta, NumStelle, Commento,RifVisitatoreValutante) VALUES 
('0123456001', 'Via Roma 10, Cogne', 'Parcheggio', 4, 'Baita Alpina', 'SR001', 'AP001', 5, 'Struttura con ampio parcheggio', 'V001'),
('0123456002', 'Via Torino 15, Aosta', 'Parcheggio', 3, 'Rifugio Montano', 'SR002', 'AP002', 3, 'Accogliente, ottima posizione', 'V002'),
('0123456003', 'Piazza Garibaldi 5, Ivrea', 'Strumento per la gestione di gruppi e scolaresche', 5, 'Casa Vacanze Ivrea', 'SR003', 'AP003', 5, 'Ottimo per gruppi e scolaresche', 'V003'),
('0123456004', 'Corso Milano 21, Torino', 'Parcheggio', 2, 'Hotel Torino Centro', 'SR004', 'AP004', 3, 'Parcheggio limitato, ma pulito', 'V004'),
('0123456005', 'Via Roma 123, Biella', 'Parcheggio', 1, 'B&B Biellese', 'SR005', 'AP005', 1, 'Piccolo ma accogliente', 'V005'),
('0123456006', 'Via Napoli 7, Cuneo', 'Parcheggio', 4, 'Residence Cuneo', 'SR006', 'AP006', 5, 'Posti auto comodi', 'V006'),
('0123456007', 'Viale Europa 9, Verbania', 'Strumento per la gestione di gruppi e scolaresche', 5, 'Casa Vacanze Lago', 'SR007', 'AP007', 5, 'Ottima per scolaresche', 'V007'),
('0123456008', 'Via Firenze 11, Novara', 'Parcheggio', 3, 'Hotel Novara', 'SR008', 'AP008', 4, 'Parcheggio custodito', 'V008'),
('0123456009', 'Via Venezia 6, Alessandria', 'Parcheggio', 2, 'Albergo Alessandria', 'SR009', 'AP009', 2, 'Parcheggio piccolo ma presente', 'V009'),
('0123456010', 'Piazza Dante 18, Asti', 'Parcheggio', 4, 'B&B Asti', 'SR010', 'AP010', 5, 'Accogliente e pulita', 'V010');

-- Operatore Turistico
INSERT INTO OperatoreTuristico (ID_OPTuristico, TipoUtente, Passwd, Username, RifStrutturaRicettiva) VALUES
('OT001', 'OT', 'op123', 'eco_tour1', 'SR001'),
('OT002', 'OT', 'op124', 'green_travel', 'SR002'),
('OT003', 'OT', 'op125', 'nature_explore', 'SR003'),
('OT004', 'OT', 'op126', 'wild_adventures', 'SR004'),
('OT005', 'OT', 'op127', 'mountain_guides', 'SR005'),
('OT006', 'OT', 'op128', 'river_tours', 'SR006'),
('OT007', 'OT', 'op129', 'forest_paths', 'SR007'),
('OT008', 'OT', 'op130', 'eco_journeys', 'SR008'),
('OT009', 'OT', 'op131', 'nature_walks', 'SR009'),
('OT010', 'OT', 'op132', 'sunset_trips', 'SR010');

-- RegistroGuide
INSERT INTO RegistroGuide VALUES 
('RG001', 3, 'Paolo Verdi,Laura Neri,Marco Bianchi', 'Laura Neri,Marco Bianchi', 2, 'OT001'),
('RG002', 2, 'Giulia Rossi,Luca Fontana', 'Luca Fontana', 1, 'OT002'),
('RG003', 4, 'Anna Gallo,Stefano Moretti,Elisa Neri,Alberto Valli', 'Anna Gallo,Alberto Valli', 2, 'OT003'),
('RG004', 1, 'Riccardo Serra', 'Riccardo Serra', 1, 'OT004'),
('RG005', 3, 'Marta De Luca,Simone Greco,Valeria Fiore', 'Valeria Fiore', 1, 'OT005'),
('RG006', 2, 'Chiara Martini,Gianni Riva', 'Chiara Martini,Gianni Riva', 2, 'OT006'),
('RG007', 3, 'Alessandro Longo,Fabio Villa,Ludovica Leone', 'Fabio Villa,Ludovica Leone', 2, 'OT007'),
('RG008', 2, 'Irene Caruso,Daniele Fabbri', 'Daniele Fabbri', 1, 'OT008'),
('RG009', 1, 'Giada Ferri', 'Giada Ferri', 1, 'OT009'),
('RG010', 4, 'Matteo Testa,Sara Ferrara,Enrico Bianco,Giorgia Palmieri', 'Sara Ferrara,Enrico Bianco', 2, 'OT010');


-- Itinerario 
INSERT INTO Itinerario VALUES 
('IT001', 'A piedi', 3.5, 'Intermedio', 'true', 15, 'true', 4, 'Pont Valsavarenche', 'AP001', 'RG001', 4, 'Sentiero ben tenuto', 'V001'),
('IT002', 'In bici', 2.0, 'Principiante', 'true', 10, 'false', 3, 'Colle del Lys', 'AP002', 'RG002', 3, 'Panorama rilassante', 'V002'),
('IT003', 'A cavallo', 4.0, 'Avanzato', 'false', 8, 'true', 5, 'Pian della Mussa', 'AP003', 'RG003', 5, 'Itinerario spettacolare', 'V003'),
('IT004', 'A piedi', 1.5, 'Base', 'true', 20, 'true', 2, 'Cascata del Toce', 'AP004', 'RG004', 2, 'Adatto a famiglie', 'V004'),
('IT005', 'In bici', 3.2, 'Intermedio', 'false', 12, 'false', 1, 'Valle Pesio', 'AP005', 'RG005', 1, 'Segnaletica da migliorare', 'V005'),
('IT006', 'A piedi', 5.0, 'Avanzato', 'true', 6, 'true', 5, 'Gran Paradiso', 'AP006', 'RG006', 5, 'Vista eccezionale', 'V006'),
('IT007', 'In bici', 2.8, 'Principiante', 'false', 14, 'true', 3, 'Alpe Devero', 'AP007', 'RG007', 3, 'Percorso agevole', 'V007'),
('IT008', 'A cavallo', 3.7, 'Intermedio', 'true', 10, 'true', 4, 'Bosco di Cansiglio', 'AP008', 'RG008', 4, 'Ben organizzato', 'V008'),
('IT009', 'A piedi', 2.2, 'Base', 'false', 18, 'false', 2, 'Lago di Braies', 'AP009', 'RG009', 2, 'Molto frequentato', 'V009'),
('IT010', 'In bici', 4.5, 'Avanzato', 'true', 5, 'true', 5, 'Val di Mello', 'AP010', 'RG010', 5, 'Impegnativo ma soddisfacente', 'V010'),
('IT011', 'A piedi', 3.0, 'Intermedio', 'true', 12, 'true', 4, 'Monte Baldo', 'AP001', 'RG001', 4, 'Panorama mozzafiato', 'V001'),
('IT012', 'In bici', 1.5, 'Principiante', 'false', 16, 'false', 2, 'Valle delle Ferriere', 'AP002', 'RG002', 2, 'Tranquillo', 'V002'),
('IT013', 'A cavallo', 4.3, 'Avanzato', 'true', 9, 'true', 5, 'Monte Amiata', 'AP003', 'RG003', 5, 'Ottima esperienza a cavallo', 'V003'),
('IT014', 'A piedi', 2.5, 'Base', 'false', 11, 'true', 3, 'Val di Funes', 'AP004', 'RG004', 3, 'Facile da seguire', 'V004'),
('IT015', 'In bici', 3.8, 'Intermedio', 'true', 7, 'true', 4, 'Gole del Verdon', 'AP005', 'RG005', 4, 'Adrenalina pura', 'V005');

-- CentroVisite
INSERT INTO CentroVisite VALUES
('CV001', '9:00-18:00 tutti i giorni', '0123987654', 'Via Parco 2, Cogne', 'Guida multimediale', 4, 'Centro Gran Paradiso', 'AP001', 4, 'Molto informativo', 'V001'),
('CV002', '10:00-17:00 sabato e domenica', '0123456789', 'Via Bosco 5, Ivrea', 'Selezione Lingua', 3, 'Centro Bosco Vivo', 'AP002', 4, 'Personale gentile', 'V002'),
('CV003', '8:30-18:30 lun-sab', '0112233445', 'Piazza Verde 1, Torino', 'Strumento per ipovedenti o non vedenti', 2, 'Info Verde', 'AP003', 3, 'Strumenti migliorabili', 'V003'),
('CV004', '9:00-13:00', '0133123456', 'Via delle Alpi 7, Aosta', 'Guida multimediale', 5, 'Centro Montano', 'AP004', 5, 'Ottimo supporto ai turisti', 'V004'),
('CV005', '10:00-16:00', '0161789000', 'Via Lago 12, Verbania', 'Selezione Lingua', 3, 'Lago Center', 'AP005', 4, 'Informazioni dettagliate', 'V005'),
('CV006', '9:30-17:30 tutti i giorni', '0123456678', 'Via Ghiacciaio 2, Courmayeur', 'Guida multimediale', 4, 'Glacier Point', 'AP006', 5, 'Esperienza immersiva', 'V006'),
('CV007', '9:00-14:00 lun-ven', '0191112223', 'Via Riva 5, Orta', 'Strumento per ipovedenti o non vedenti', 2, 'Orta Natura', 'AP007', 3, 'Pochi materiali visivi', 'V007'),
('CV008', '10:00-18:00 sabato e domenica', '0171999888', 'Via della Quercia 9, Biella', 'Selezione Lingua', 3, 'Centro Quercia', 'AP008', 3, 'Buona accoglienza', 'V008'),
('CV009', '9:00-18:00 tutti i giorni', '0133678990', 'Strada Bosco Alto 10, Novara', 'Guida multimediale', 5, 'Bosco Alto', 'AP009', 5, 'Centro eccellente', 'V009'),
('CV010', '8:00-12:00', '0188123456', 'Via Sole 3, Domodossola', 'Selezione Lingua', 2, 'Infopoint Sole', 'AP010', 3, 'Struttura datata', 'V010');

--Notizia
INSERT INTO Notizia VALUES 
('N001', '2024-05-10', 'Riapertura sentiero IT001 dopo lavori di manutenzione', 'AP001'),
('N002', '2024-04-15', 'Nuovo centro visite inaugurato a Cogne', 'AP002'),
('N003', '2024-03-20', 'Inizio progetto di riforestazione alpina', 'AP003'),
('N004', '2024-02-05', 'Evento didattico per le scuole locali', 'AP004'),
('N005', '2024-01-25', 'Installazione di pannelli informativi', 'AP005'),
('N006', '2024-04-28', 'Avvistamento raro di aquila reale', 'AP006'),
('N007', '2024-03-12', 'Giornata ecologica con i volontari', 'AP007'),
('N008', '2024-05-01', 'Nuovi percorsi naturalistici segnalati', 'AP008'),
('N009', '2024-04-04', 'Interventi di manutenzione straordinaria', 'AP009'),
('N010', '2024-02-20', 'Collaborazione con università per studi ambientali', 'AP010');

--Foto
INSERT INTO Foto VALUES 
('2024-05-01', 'Camoscio'),
('2024-04-10', 'Aquila'),
('2024-03-15', 'Stambecco'),
('2024-02-28', 'Marmotta'),
('2024-01-20', 'Gufo'),
('2024-04-12', 'Volpe'),
('2024-03-08', 'Capriolo'),
('2024-05-03', 'Lupo'),
('2024-04-18', 'Cervo'),
('2024-02-25', 'Orso');

--Contenimento
INSERT INTO Contenimento VALUES 
('N001', '2024-05-01', 'Camoscio'),
('N002', '2024-04-10', 'Aquila'),
('N003', '2024-03-15', 'Stambecco'),
('N004', '2024-02-28', 'Marmotta'),
('N005', '2024-01-20', 'Gufo'),
('N006', '2024-04-12', 'Volpe'),
('N007', '2024-03-08', 'Capriolo'),
('N008', '2024-05-03', 'Lupo'),
('N009', '2024-04-18', 'Cervo'),
('N010', '2024-02-25', 'Orso');

--PostoDisp
INSERT INTO PostoDisponibile VALUES 
(2, 45.0, '2024-07-01', '2024-07-05', 'SR001'),
(4, 25.0, '2024-07-10', '2024-07-15', 'SR002'),
(1, 35.0, '2024-07-05', '2024-07-06', 'SR003'),
(3, 38.0, '2024-07-08', '2024-07-12', 'SR004'),
(5, 22.0, '2024-07-15', '2024-07-20', 'SR005'),
(2, 0.0,  '2024-07-03', '2024-07-04', 'SR006'),
(3, 45.0, '2024-07-18', '2024-07-22', 'SR007'),
(1, 25.0, '2024-07-09', '2024-07-11', 'SR008'),
(4, 38.0, '2024-07-12', '2024-07-16', 'SR009'),
(2, 35.0, '2024-07-02', '2024-07-03', 'SR010');

--Escursione
INSERT INTO Escursione VALUES 
('2024-07-01 09:00:00', 'IT001'),
('2024-07-02 10:30:00', 'IT002'),
('2024-07-03 14:00:00', 'IT003'),
('2024-07-04 08:00:00', 'IT004'),
('2024-07-05 11:15:00', 'IT005'),
('2024-07-06 13:45:00', 'IT006'),
('2024-07-07 09:30:00', 'IT007'),
('2024-07-08 15:00:00', 'IT008'),
('2024-07-09 10:00:00', 'IT009'),
('2024-07-10 12:30:00', 'IT010');

--visita
INSERT INTO VisitaGuidata VALUES 
('2024-07-02 09:00:00', 'IT001', 10, 'attiva', 12, 'CV001', 'Prenotabile'),
('2024-07-03 10:00:00', 'IT002', 15, 'in programma', 6, 'CV002', 'Prenotabile ma con Accesso Libero'),
('2024-07-04 11:30:00', 'IT003', 12, 'completata', 8, 'CV003', 'Prenotabile'),
('2024-07-05 14:00:00', 'IT004', 8, 'attiva', 9, 'CV004', 'Prenotabile'),
('2024-07-06 15:30:00', 'IT005', 20, 'cancellata', 5, 'CV005', 'Prenotabile ma con Accesso Libero'),
('2024-07-07 09:00:00', 'IT006', 25, 'attiva', 0, 'CV006', 'Prenotabile'),
('2024-07-08 10:30:00', 'IT007', 18, 'in programma', 12, 'CV007', 'Prenotabile'),
('2024-07-09 12:00:00', 'IT008', 14, 'completata', 6, 'CV008', 'Prenotabile ma con Accesso Libero'),
('2024-07-10 13:45:00', 'IT009', 16, 'attiva', 8, 'CV009', 'Prenotabile'),
('2024-07-11 15:15:00', 'IT010', 22, 'in programma', 9, 'CV010', 'Prenotabile ma con Accesso Libero');

INSERT INTO Prenotazione VALUES 
('PR001', 'SR001', 'V001', '2024-06-01 10:30:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-07-01', '2024-07-05', 360.0, 2),
('PR002', 'SR002', 'V002', '2024-06-05 14:00:00', 'visita', 'in attesa', '2024-07-10 09:00:00', 'IT002', 12, 'VG002', NULL, NULL, 0, 1),
('PR003', 'SR003', 'V003', '2024-06-07 11:15:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-08-01', '2024-08-10', 720.0, 3),
('PR004', 'SR004', 'V004', '2024-06-10 16:45:00', 'visita', 'rifiutata', '2024-07-15 14:00:00', 'IT004', 6, 'VG004', NULL, NULL, 0, 2),
('PR005', 'SR005', 'V005', '2024-06-12 09:30:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-07-20', '2024-07-25', 300.0, 1),
('PR006', 'SR006', 'V006', '2024-06-14 13:00:00', 'visita', 'accettata', '2024-07-22 10:30:00', 'IT006', 9, 'VG006', NULL, NULL, 0, 4),
('PR007', 'SR007', 'V007', '2024-06-16 15:20:00', 'soggiorno', 'in attesa', NULL, NULL, 0, NULL, '2024-08-05', '2024-08-12', 420.0, 2),
('PR008', 'SR008', 'V008', '2024-06-18 10:00:00', 'visita', 'accettata', '2024-07-25 11:00:00', 'IT008', 5, 'VG008', NULL, NULL, 0, 1),
('PR009', 'SR009', 'V009', '2024-06-20 12:45:00', 'soggiorno', 'rifiutata', NULL, NULL, 0, NULL, '2024-07-30', '2024-08-05', 360.0, 3),
('PR010', 'SR010', 'V010', '2024-06-22 14:30:00', 'visita', 'in attesa', '2024-08-01 09:00:00', 'IT010', 7, 'VG010', NULL, NULL, 0, 2),
('PR011', 'SR001', 'V010', '2024-06-24 09:15:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-08-10', '2024-08-15', 250.0, 1),
('PR012', 'SR002', 'V003', '2024-06-26 16:40:00', 'visita', 'accettata', '2024-08-05 14:00:00', 'IT002', 6, 'VG002', NULL, NULL, 0, 3),
('PR013', 'SR003', 'V010', '2024-06-28 11:30:00', 'soggiorno', 'in attesa', NULL, NULL, 0, NULL, '2024-09-01', '2024-09-07', 420.0, 2),
('PR014', 'SR004', 'V004', '2024-06-29 13:20:00', 'visita', 'rifiutata', '2024-08-10 10:00:00', 'IT004', 8, 'VG004', NULL, NULL, 0, 1),
('PR015', 'SR005', 'V005', '2024-07-01 15:00:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-08-15', '2024-08-20', 480.0, 4),
('PR016', 'SR006', 'V006', '2024-07-02 10:10:00', 'visita', 'in attesa', '2024-08-18 09:30:00', 'IT006', 5, 'VG006', NULL, NULL, 0, 2),
('PR017', 'SR007', 'V007', '2024-07-03 12:25:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-08-20', '2024-08-27', 560.0, 3),
('PR018', 'SR008', 'V008', '2024-07-04 14:45:00', 'visita', 'rifiutata', '2024-08-22 11:00:00', 'IT008', 9, 'VG008', NULL, NULL, 0, 1),
('PR019', 'SR009', 'V009', '2024-07-05 09:00:00', 'soggiorno', 'accettata', NULL, NULL, 0, NULL, '2024-08-25', '2024-08-30', 320.0, 2),
('PR020', 'SR010', 'V010', '2024-07-06 11:50:00', 'visita', 'in attesa', '2024-08-28 10:30:00', 'IT010', 7, 'VG010', NULL, NULL, 0, 4);

-- Partecipazione
INSERT INTO Partecipazione VALUES
('V001', '2024-07-02 09:00:00', 'IT001'),
('V002', '2024-07-02 10:00:00', 'IT002'),
('V003', '2024-07-03 09:30:00', 'IT003'),
('V004', '2024-07-03 11:00:00', 'IT004'),
('V005', '2024-07-04 08:45:00', 'IT005'),
('V006', '2024-07-04 14:00:00', 'IT006'),
('V007', '2024-07-05 09:00:00', 'IT007'),
('V008', '2024-07-05 13:30:00', 'IT008'),
('V009', '2024-07-06 10:00:00', 'IT009'),
('V010', '2024-07-06 15:00:00', 'IT010');

-- Reperibilita
INSERT INTO Reperibilita VALUES
('GU001', 'RG001', '2024-06-29 08:00:00'),
('GU002', 'RG002', '2024-06-29 09:00:00'),
('GU003', 'RG003', '2024-06-29 10:00:00'),
('GU004', 'RG004', '2024-06-29 11:00:00'),
('GU005', 'RG005', '2024-06-29 12:00:00'),
('GU006', 'RG006', '2024-06-29 13:00:00'),
('GU007', 'RG007', '2024-06-29 14:00:00'),
('GU008', 'RG008', '2024-06-29 15:00:00'),
('GU009', 'RG009', '2024-06-29 16:00:00'),
('GU010', 'RG010', '2024-06-29 17:00:00');

INSERT INTO Assegnamento VALUES 
('GU001', '2024-07-02 09:00:00', 'IT001', '2024-06-30 12:00:00'),
('GU002', '2024-07-03 10:00:00', 'IT002', '2024-07-01 09:00:00'),
('GU003', '2024-07-04 11:30:00', 'IT003', '2024-07-02 10:00:00'),
('GU004', '2024-07-05 14:00:00', 'IT004', '2024-07-03 11:00:00'),
('GU005', '2024-07-06 15:30:00', 'IT005', '2024-07-04 10:00:00'),
('GU006', '2024-07-07 09:00:00', 'IT006', '2024-07-05 09:30:00'),
('GU007', '2024-07-08 10:30:00', 'IT007', '2024-07-06 11:00:00'),
('GU008', '2024-07-09 12:00:00', 'IT008', '2024-07-07 12:00:00'),
('GU009', '2024-07-10 13:45:00', 'IT009', '2024-07-08 14:00:00'),
('GU010', '2024-07-11 15:15:00', 'IT010', '2024-07-09 13:00:00');

INSERT INTO RegistroPresenza VALUES
('2024-06-30 08:00:00', '2024-07-05 18:00:00', '2024-07-02', '2024-07-02 08:00:00', '2024-07-02 18:00:00', 'Visitatore', 'IT001'),
('2024-07-01 08:00:00', '2024-07-06 18:00:00', '2024-07-03', '2024-07-03 08:00:00', '2024-07-03 18:00:00', 'Visitatore', 'IT002'),
('2024-07-02 08:00:00', '2024-07-07 18:00:00', '2024-07-04', '2024-07-04 08:00:00', '2024-07-04 18:00:00', 'Visitatore', 'IT003'),
('2024-07-03 08:00:00', '2024-07-08 18:00:00', '2024-07-05', '2024-07-05 08:00:00', '2024-07-05 18:00:00', 'Visitatore', 'IT004'),
('2024-07-04 08:00:00', '2024-07-09 18:00:00', '2024-07-06', '2024-07-06 08:00:00', '2024-07-06 18:00:00', 'Visitatore', 'IT005'),
('2024-07-05 08:00:00', '2024-07-10 18:00:00', '2024-07-07', '2024-07-07 08:00:00', '2024-07-07 18:00:00', 'Visitatore', 'IT006'),
('2024-07-06 08:00:00', '2024-07-11 18:00:00', '2024-07-08', '2024-07-08 08:00:00', '2024-07-08 18:00:00', 'Visitatore', 'IT007'),
('2024-07-07 08:00:00', '2024-07-12 18:00:00', '2024-07-09', '2024-07-09 08:00:00', '2024-07-09 18:00:00', 'Visitatore', 'IT008'),
('2024-07-08 08:00:00', '2024-07-13 18:00:00', '2024-07-10', '2024-07-10 08:00:00', '2024-07-10 18:00:00', 'Visitatore', 'IT009'),
('2024-07-09 08:00:00', '2024-07-14 18:00:00', '2024-07-11', '2024-07-11 08:00:00', '2024-07-11 18:00:00', 'Visitatore', 'IT010');
