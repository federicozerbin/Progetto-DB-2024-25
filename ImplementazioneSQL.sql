CREATE TABLE Itinerario(
	ID_Itinerario VARCHAR(20) NOT NULL UNIQUE, 
	ModPercorrenza VARCHAR(20) NOT NULL, 
	TempoPercorrenza DECIMAL(3) NOT NULL, 
	difficolta VARCHAR(20) NOT NULL, 
	segnaletica VARCHAR(20),
	NMaxVisite DECIMAL(3), 
	PossibilitaEscursione VARCHAR(5) NOT NULL, 
	ValutazioneTot SMALLINT CHECK (ValutazioneTot >= 0 AND ValutazioneTot <= 5), 
	PuntoPartenza VARCHAR(20) NOT NULL,
	RifAreaProtetta VARCHAR(20) NOT NULL, 
	RifRegistroGuide VARCHAR(20) NOT NULL, 
	NumStelle SMALLINT DEFAULT 0, 
	Commento VARCHAR(140),
	RifVisitatoreValutante VARCHAR(20),

	CONSTRAINT PK_Itinerario PRIMARY KEY(ID_Itinerario)
);

CREATE TABLE AreaProtetta (
	ID_AreaProtetta VARCHAR(20) NOT NULL UNIQUE,
	TipoArea VARCHAR(50) NOT NULL,
	nome VARCHAR(20) UNIQUE,
	provvedimento VARCHAR(50),
	Superficie VARCHAR(256),
	Regione VARCHAR(20) NOT NULL,
	Ecosistemi VARCHAR(20),
	formazioni VARCHAR(20),
	RegioniLimitrofe VARCHAR(20),
	valoreLuogo VARCHAR(20),
	regionaleOStatale VARCHAR(20),
	LeggeRif VARCHAR(50),
	OasiOSuburbano VARCHAR(20),
	PubblicoOPrivato VARCHAR(20),
	ZonaAcqua VARCHAR(20),
	ValutazioneMedia SMALLINT CHECK (ValutazioneMedia >= 0 AND ValutazioneMedia <= 5),
	RifGestore VARCHAR(20) NOT NULL,
	NumStelle SMALLINT DEFAULT 0, 
	Commento VARCHAR(140),
	RifVisitatoreValutante VARCHAR(20),

	CONSTRAINT PK_PA PRIMARY KEY(ID_AreaProtetta)
);

CREATE TABLE Gestore(
	ID_Gestore VARCHAR(20) NOT NULL UNIQUE, 
	TipoUtente VARCHAR(20) NOT NULL,
	Passwd VARCHAR(20) NOT NULL, 
	Username VARCHAR(20) NOT NULL UNIQUE, 
	RifRegistroPresenza VARCHAR(20),

	CONSTRAINT PK_Gestore PRIMARY KEY(ID_Gestore)
);

CREATE TABLE Visitatore(
	ID_Visitatore VARCHAR(20) NOT NULL UNIQUE, 
	TipoUtente VARCHAR(20) NOT NULL, 
	Passwd VARCHAR(20) NOT NULL, 
	Username VARCHAR(20) NOT NULL, 
	Anni DECIMAL(3), 
	NumPersone DECIMAL(2) default 1, 
	Esente varchar(5) default 'false',

	CONSTRAINT PK_Visitatore PRIMARY KEY(ID_Visitatore)	
);

CREATE TABLE OperatoreTuristico(
	ID_OPTuristico VARCHAR(20) NOT NULL UNIQUE,
	TipoUtente VARCHAR(20) NOT NULL, 
	Passwd VARCHAR(20) NOT NULL, 
	Username VARCHAR(20) NOT NULL, 
	RifStrutturaRicettiva VARCHAR(20),

	CONSTRAINT PK_OPTuristico PRIMARY KEY(ID_OPTuristico)
);

CREATE TABLE Guida(
	ID_Guida VARCHAR(20) NOT NULL UNIQUE, 
	TipoUtente VARCHAR(20) NOT NULL, 
	Passwd VARCHAR(20) NOT NULL, 
	Username VARCHAR(20) NOT NULL, 
	ValutazioneTot SMALLINT CHECK (ValutazioneTot >= 0 AND ValutazioneTot <= 5),
	NumStelle SMALLINT DEFAULT 0, 
	Commento VARCHAR(140),
	RifVisitatoreValutante VARCHAR(20),
	Licenze VARCHAR(256),
	Calendario VARCHAR(256),

	CONSTRAINT PK_Guida PRIMARY KEY(ID_Guida)
);

CREATE TABLE Foto(
	DataFoto DATE NOT NULL UNIQUE,
	Soggetto VARCHAR(20) NOT NULL UNIQUE,

	CONSTRAINT PK_Foto PRIMARY KEY(DataFoto, Soggetto)
);

CREATE TABLE Notizia(
	ID_Notizia VARCHAR(20) NOT NULL UNIQUE,
	DataNotizia DATE, 
	Testo VARCHAR(256), 
	RifAreaProtetta VARCHAR(20),
	
	CONSTRAINT PK_Notizia PRIMARY KEY(ID_Notizia)
);

CREATE TABLE Contenimento(
	ID_Notizia VARCHAR(20) NOT NULL UNIQUE, 
	DataFoto DATE NOT NULL UNIQUE, 
	Soggetto VARCHAR(20) NOT NULL UNIQUE,

	CONSTRAINT PK_Contenimento PRIMARY KEY(ID_Notizia, DataFoto, Soggetto)
);
	
CREATE TABLE ProgrammaCertificazione(
	Anno VARCHAR(5), 
	sigla VARCHAR(20) DEFAULT 'C.E.T.S.',
	
	CONSTRAINT PK_ProgrammaCertificazione PRIMARY KEY(Anno, sigla)
);

CREATE TABLE Adesione(
	ID_AreaProtetta VARCHAR(20) NOT NULL UNIQUE, 
	Anno VARCHAR(5) NOT NULL UNIQUE,
	sigla VARCHAR(20) NOT NULL UNIQUE,
	
	CONSTRAINT PK_Adesione PRIMARY KEY(ID_AreaProtetta, Anno, sigla)
);
	
CREATE TABLE StrutturaRicettiva(
	Contatti VARCHAR(20), 
	Indirizzo VARCHAR(50), 
	TipologiaServizi VARCHAR(50),  
	ValutazioneTot SMALLINT CHECK (ValutazioneTot >= 0 AND ValutazioneTot <= 5), 
	Nome VARCHAR(20), 
	ID_StrutturaRicettiva VARCHAR(20) NOT NULL UNIQUE, 
	RifAreaProtetta VARCHAR(20) NOT NULL, 
	NumStelle SMALLINT DEFAULT 0, 
	Commento VARCHAR(140),
	RifVisitatoreValutante VARCHAR(20),

	CONSTRAINT PK_StrutturaRicettiva PRIMARY KEY(ID_StrutturaRicettiva)
);

CREATE TABLE PostoDisponibile(
	NumOspiti SMALLINT, 
	TariffaBase DECIMAL(3), 
	DataInizioSoggiorno DATE NOT NULL, 
	DataFineSoggiorno DATE NOT NULL, 
	RifStrutturaRicettiva VARCHAR(20) NOT NULL,

	CONSTRAINT PK_PostoDisponibile PRIMARY KEY(DataInizioSoggiorno, DataFineSoggiorno, RifStrutturaRicettiva)
);

CREATE TABLE Prenotazione (
	ID_Prenotazione VARCHAR(20) NOT NULL UNIQUE, 
	RifStrutturaRicettiva VARCHAR(20) NOT NULL, 
	RifVisitatore VARCHAR(20), 
	DataOraPrenotazione TIMESTAMP, 
	Tipo VARCHAR(20), 
	Stato VARCHAR(20) DEFAULT 'in attesa', 
	DataOraVisita TIMESTAMP,
	itinerarioVisita VARCHAR(20), 
	TariffaVisitaGuidata DECIMAL DEFAULT 0, 
	RifVisitaGuidata VARCHAR(20), 
	DataInizioSoggiorno DATE, 
	DataFineSoggiorno DATE, 
	TariffaSoggiorno DECIMAL DEFAULT 0, 
	NumOspiti SMALLINT,

	CONSTRAINT PK_Prenotazione PRIMARY KEY(ID_Prenotazione)
); 

CREATE TABLE CentroVisite(
	ID_CentroVisite VARCHAR(20) NOT NULL UNIQUE, 
	Orari VARCHAR(100), 
	Contatti VARCHAR(20),
	Indirizzo VARCHAR(50), 
	TipologieStrumAccessibilita VARCHAR(50),
	ValutazioneTot SMALLINT CHECK (ValutazioneTot >= 0 AND ValutazioneTot <= 5), 
	Nome VARCHAR(20),
	RifAreaProtetta VARCHAR(20) NOT NULL, 
	NumStelle SMALLINT DEFAULT 0, 
	Commento VARCHAR(140),
	RifVisitatoreValutante VARCHAR(20),

	CONSTRAINT PK_CentroVisite PRIMARY KEY(ID_CentroVisite)
);
	

CREATE TABLE RegistroGuide(
	ID_RegistroGuide VARCHAR(20) NOT NULL UNIQUE, 
	NumDisponibili DECIMAL(3), 
	NomiDisponibili VARCHAR(256), 
	NomiAbilitate VARCHAR(256), 
	NumAbilitate DECIMAL(3), 
	RifOPTuristico VARCHAR(20) NOT NULL,

	CONSTRAINT PK_RegistroGuide PRIMARY KEY(ID_RegistroGuide)
);

CREATE TABLE Reperibilita(
	ID_Guida VARCHAR(20) NOT NULL UNIQUE, 
	ID_RegistroGuide VARCHAR(20) NOT NULL UNIQUE, 
	DataEOra TIMESTAMP NOT NULL,

	CONSTRAINT PK_Reperibilita PRIMARY KEY(ID_Guida, ID_RegistroGuide, DataEOra)
);	
	
CREATE TABLE Escursione(
	DataEOra TIMESTAMP NOT NULL UNIQUE, 
	ID_Itinerario VARCHAR(20) NOT NULL,

	CONSTRAINT PK_Escursione PRIMARY KEY(DataEOra, ID_Itinerario)
);

CREATE TABLE VisitaGuidata(
	DataOraProgrammati TIMESTAMP NOT NULL UNIQUE, 
	ID_Itinerario VARCHAR(20) NOT NULL UNIQUE, 
	NMaxPartecipanti DECIMAL(3) NOT NULL, 
	Stato VARCHAR(20) NOT NULL, 
	TariffaBase DECIMAL(3) NOT NULL, 
	RifCentroVisite VARCHAR(20) NOT NULL,
  modalita VARCHAR(50) NOT NULL, 

	CONSTRAINT PK_VisitaGuidata PRIMARY KEY(DataOraProgrammati, ID_Itinerario)
);

CREATE TABLE Partecipazione(
	ID_Visitatore VARCHAR(20) NOT NULL, 
	DataEOra TIMESTAMP NOT NULL, 
	ID_Itinerario VARCHAR(20) NOT NULL,

	CONSTRAINT PK_Partecipazione PRIMARY KEY(ID_Visitatore,ID_Itinerario)
);

CREATE TABLE Assegnamento(
	ID_Guida VARCHAR(20) NOT NULL, 
	DataOraProgrammati TIMESTAMP NOT NULL, 
	ID_Itinerario VARCHAR(20) NOT NULL, 
	DataOra TIMESTAMP NOT NULL,

	CONSTRAINT PK_Assegnamento PRIMARY KEY(ID_Guida,DataOraProgrammati, ID_Itinerario)
);
	
CREATE TABLE RegistroPresenza(
	DataInizioValidita TIMESTAMP NOT NULL UNIQUE, 
	DataFineValidita TIMESTAMP NOT NULL UNIQUE,
	DataPresenza DATE NOT NULL, 
	OrarioIngresso TIMESTAMP NOT NULL, 
	OrarioUscita TIMESTAMP NOT NULL, 
	TipologiaDiUtente VARCHAR(20) NOT NULL,
	RifItinerario VARCHAR(20) NOT NULL,

	CONSTRAINT PK_RegistroPresenza PRIMARY KEY(DataInizioValidita, DataFineValidita)
);

	
/*AGGIUNTA DEI VINCOLI*/

--constraints di area protetta
ALTER TABLE AreaProtetta
ADD CONSTRAINT FK_Amministrazione FOREIGN KEY (RifGestore) REFERENCES Gestore(ID_Gestore) ON DELETE RESTRICT ON UPDATE CASCADE,
ADD	CONSTRAINT FK_ValutazioneAP FOREIGN KEY (RifVisitatoreValutante) REFERENCES Visitatore(ID_Visitatore) ON DELETE SET NULL ON UPDATE CASCADE,

ADD CONSTRAINT chk_Valut CHECK(NumStelle >= 0 and NumStelle <=5 and ValutazioneMedia <= NumStelle),
ADD CONSTRAINT chk_tipoArea CHECK (
	tipoArea ~ '^(Parco Nazionale|Parco Regionale o Interregionale|Riserva Naturale|Area di Reperimento Terrestre o Marina|Zona Umida di interesse Internazionale|Altre aree protette)'
	),
ADD	CONSTRAINT chk_provvedimento CHECK (provvedimento IS NULL OR TipoArea = 'Altre Aree Naturali Protette'),
ADD	CONSTRAINT chk_ecosistemi CHECK (Ecosistemi IS NULL OR TipoArea = 'Parco Nazionale' OR TipoArea = 'Riserva Naturale'),
ADD	CONSTRAINT chk_formazioni CHECK (formazioni IS NULL OR TipoArea = 'Parco Nazionale'),
ADD	CONSTRAINT chk_RegioniLimitrofe CHECK (RegioniLimitrofe IS NULL OR TipoArea = 'Parco Naturale Regionale o Interregionale'),
ADD	CONSTRAINT chk_valoreLuogo CHECK (valoreLuogo IS NULL OR TipoArea = 'Parco Naturale Regionale o Interregionale'),
ADD	CONSTRAINT chk_regionaleOStatale CHECK (
	regionaleOStatale IS NULL OR 
	(TipoArea = 'Riserva Naturale' and 
	(regionaleOStatale = 'regionale' or regionaleOStatale = 'statale')
	)),
ADD	CONSTRAINT chk_LeggeRif CHECK (LeggeRif IS NULL OR TipoArea = 'Altre Aree Naturali Protette'),
ADD	CONSTRAINT chk_OasiOSuburbano CHECK (OasiOSuburbano IS NULL OR TipoArea = 'Altre Aree Naturali Protette'),
ADD	CONSTRAINT chk_PubblicoOPrivato CHECK (PubblicoOPrivato IS NULL OR TipoArea = 'Altre Aree Naturali Protette'),
ADD	CONSTRAINT chk_ZonaAcqua CHECK (
	ZonaAcqua IS NULL OR 
	(TipoArea = 'Area di Reperimento Terrestre o Marina' and
	ZonaAcqua ~ '^(permanente e artificiale|permanente e naturale|transitoria e artificiale|transitoria e naturale)')
	),
ADD	CONSTRAINT chk_Superficie CHECK(Superficie ~ '^(terrestre|marina|di costa|lacuale|palude|acquitrinosa|torbiera) [0-9]+$'); -- con regex

--constraints di Notizia
ALTER TABLE Notizia
ADD CONSTRAINT FK_Riferimento FOREIGN KEY(RifAreaProtetta) REFERENCES AreaProtetta(ID_AreaProtetta);

--constraints di Gestore
ALTER TABLE Gestore
--ADD CONSTRAINT FK_Consultazione FOREIGN KEY(RifRegistroPresenza) REFERENCES RegistroPresenza(RifItinerario),
ADD CONSTRAINT chk_tipoUtente CHECK(TipoUtente = 'Admin');

--constraints di Contenimento
ALTER TABLE Contenimento
ADD CONSTRAINT FK_Contenimento1 FOREIGN KEY(ID_Notizia) REFERENCES Notizia(ID_Notizia) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_Contenimento2 FOREIGN KEY(DataFoto, Soggetto) REFERENCES Foto(DataFoto, Soggetto) ON DELETE CASCADE ON UPDATE CASCADE;

--constraints di Visitatore
ALTER TABLE Visitatore
ADD CONSTRAINT chk_esente CHECK (Esente ~ '^(true|false)'),
ADD CONSTRAINT chk_tipoUtente CHECK (TipoUtente ~ '^(Bambini|Gruppi|Scolaresche|Adulti|Anziani)'),
ADD CONSTRAINT chk_anni CHECK (Anni > 0 and Anni < 101),
ADD CONSTRAINT chk_numPersone CHECK (NumPersone > 0 and NumPersone < 51);

--constraints di operatore turistico
ALTER TABLE OperatoreTuristico
ADD CONSTRAINT FK_Impiego FOREIGN KEY(RifStrutturaRicettiva) REFERENCES StrutturaRicettiva(ID_StrutturaRicettiva),
ADD CONSTRAINT chk_tipoUtente CHECK(TipoUtente = 'OT');

--constraints di guida 
ALTER TABLE Guida
ADD CONSTRAINT FK_ValiutazioneG FOREIGN KEY(RifVisitatoreValutante) REFERENCES Visitatore(ID_Visitatore),
ADD CONSTRAINT chk_Valut CHECK(NumStelle >= 0 and NumStelle <=5 and ValutazioneMedia <= NumStelle),
ADD CONSTRAINT chk_tipoUtente CHECK(TipoUtente = 'L');

--constraints di adesione
ALTER TABLE Adesione 
ADD CONSTRAINT FK_Adesione1 FOREIGN KEY(ID_AreaProtetta) REFERENCES AreaProtetta(ID_AreaProtetta),
ADD CONSTRAINT FK_Adesione2 FOREIGN KEY (Anno, sigla) REFERENCES ProgrammaCertificazione(Anno, sigla);

--vincoli StrutturaRicettiva
ALTER TABLE StrutturaRicettiva
ADD CONSTRAINT FK_Inclusione FOREIGN KEY(RifAreaProtetta) REFERENCES AreaProtetta(ID_AreaProtetta) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_ValutazioneSR FOREIGN KEY(RifVisitatoreValutante) REFERENCES Visitatore(ID_Visitatore),

ADD CONSTRAINT chk_TipologiaServizi CHECK (TipologiaServizi ~ '^(Parcheggio|Strumento per la gestione di gruppi e scolaresche)'),
ADD CONSTRAINT chk_Valut CHECK(NumStelle >= 0 and NumStelle <=5 and ValutazioneTot <= NumStelle);

--vincoli Posto disponibile
ALTER TABLE PostoDisponibile
ADD CONSTRAINT FK_Composizione FOREIGN KEY(RifStrutturaRicettiva) REFERENCES StrutturaRicettiva(ID_StrutturaRicettiva),
ADD CONSTRAINT chk_dateIsGood CHECK(DataInizioSoggiorno < DataFineSoggiorno),
ADD CONSTRAINT chk_TariffaBase CHECK(
	TariffaBase = 45 
	or TariffaBase = 25 
	or TariffaBase = 35
	or TariffaBase = 38
	or TariffaBase = 22
	or TariffaBase = 0
	);

--vincoli Prenotazione
ALTER TABLE Prenotazione
ADD CONSTRAINT FK_Gestione FOREIGN KEY(RifStrutturaRicettiva) REFERENCES StrutturaRicettiva(ID_StrutturaRicettiva) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_Richiesta FOREIGN KEY(RifVisitatore) REFERENCES Visitatore(ID_Visitatore) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT FK_Corrispondenza FOREIGN KEY (itinerarioVisita) REFERENCES VisitaGuidata(ID_Itinerario) ON DELETE SET NULL ON UPDATE CASCADE,

ADD CONSTRAINT chk_tipoPrenotazione CHECK (Tipo ~ '^(visita|soggiorno)'),
ADD CONSTRAINT chk_Stato CHECK(Stato ~ '^(accettata|rifiutata|in attesa)'),
ADD CONSTRAINT chk_dateIsGood CHECK(
	(DataInizioSoggiorno IS NULL or DataFineSoggiorno IS NULL)
	or Tipo = 'soggiorno' and (DataInizioSoggiorno < DataFineSoggiorno));


--vincoli centro visite
ALTER TABLE CentroVisite
ADD CONSTRAINT FK_Afferenza FOREIGN KEY(RifAreaProtetta) REFERENCES AreaProtetta(ID_AreaProtetta) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_ValutazioneCV FOREIGN KEY(RifVisitatoreValutante) REFERENCES Visitatore(ID_Visitatore),

ADD CONSTRAINT chk_strumAccessib CHECK(TipologieStrumAccessibilita ~ '^(Selezione Lingua|Guida multimediale|Strumento per ipovedenti o non vedenti)'),
ADD CONSTRAINT chk_Valut CHECK(NumStelle >= 0 and NumStelle <=5 and ValutazioneTot <= NumStelle);


--vincoli registro guide
ALTER TABLE RegistroGuide
ADD CONSTRAINT FK_Accesso FOREIGN KEY(RifOPTuristico) REFERENCES OperatoreTuristico(ID_OPTuristico) ON DELETE CASCADE ON UPDATE CASCADE;

--vincoli reperibilità
ALTER TABLE Reperibilita
ADD CONSTRAINT FK_Reperibilita1 FOREIGN KEY(ID_Guida) REFERENCES Guida(ID_Guida),
ADD CONSTRAINT FK_Reperibilita2 FOREIGN KEY(ID_RegistroGuide) REFERENCES RegistroGuide(ID_RegistroGuide);

--vincoli itinerario
ALTER TABLE Itinerario
ADD CONSTRAINT FK_Locazione FOREIGN KEY(RifAreaProtetta) REFERENCES AreaProtetta(ID_AreaProtetta) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT FK_Collegamento FOREIGN KEY(RifRegistroGuide) REFERENCES RegistroGuide(ID_RegistroGuide) ON DELETE SET NULL ON UPDATE CASCADE,
ADD CONSTRAINT FK_ValutazioneI FOREIGN KEY(RifVisitatoreValutante) REFERENCES Visitatore(ID_Visitatore),

ADD CONSTRAINT chk_possEscursione CHECK (PossibilitaEscursione ~ '^(true|false)'),
ADD CONSTRAINT chk_ModPercorrenza CHECK (ModPercorrenza ~ '^(A piedi|In bici|A cavallo)'),
ADD CONSTRAINT chk_difficolta CHECK (difficolta ~ '^(Base|Principiante|Intermedio|Avanzato)'),
ADD CONSTRAINT chk_segnaletica CHECK (segnaletica ~ '^(true|false)'),
ADD CONSTRAINT chk_Valut CHECK(NumStelle >= 0 and NumStelle <=5 and ValutazioneTot <= NumStelle);

--vincoli escursione
ALTER TABLE Escursione
ADD CONSTRAINT FK_Occorrenza FOREIGN KEY(ID_Itinerario) REFERENCES Itinerario(ID_Itinerario);

--vincoli visita guidata
ALTER TABLE VisitaGuidata
ADD CONSTRAINT FK_Occorrenza FOREIGN KEY(ID_Itinerario) REFERENCES Itinerario(ID_Itinerario),
ADD CONSTRAINT FK_Offerta FOREIGN KEY(RifCentroVisite) REFERENCES CentroVisite(ID_CentroVisite),
ADD CONSTRAINT chk_Stato CHECK (Stato ~ '^(in programma|attiva|completata|cancellata)'),
ADD CONSTRAINT chk_modalita CHECK (modalita ~ '^(Prenotabile|Prenotabile ma con Accesso Libero)'),
ADD CONSTRAINT chk_TariffaBase CHECK(
	TariffaBase = 12 
	or TariffaBase = 6 
	or TariffaBase = 8
	or TariffaBase = 9
	or TariffaBase = 5
	or TariffaBase = 0
	);

--vincoli partecipazione
ALTER TABLE Partecipazione
ADD CONSTRAINT FK_Partecipazione1 FOREIGN KEY(ID_Visitatore) REFERENCES Visitatore(ID_Visitatore),
ADD CONSTRAINT FK_Partecipazione2 FOREIGN KEY(ID_Itinerario) REFERENCES Itinerario(ID_Itinerario);

--vincoli assegnamento
ALTER TABLE Assegnamento
ADD CONSTRAINT FK_Assegnamento1 FOREIGN KEY(ID_Guida) REFERENCES Guida(ID_Guida),
ADD CONSTRAINT FK_Assegnamento2 FOREIGN KEY(DataOraProgrammati, ID_Itinerario) REFERENCES VisitaGuidata(DataOraProgrammati, ID_Itinerario);


--vincoli registro presenza
ALTER TABLE RegistroPresenza
ADD CONSTRAINT FK_Registrazione FOREIGN KEY(RifItinerario) REFERENCES Itinerario(ID_Itinerario),
ADD CONSTRAINT chk_DataOK CHECK(DataPresenza >= DataInizioValidita and DataPresenza < DataFineValidita);
