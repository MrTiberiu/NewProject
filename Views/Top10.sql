USE `DB7`;

CREATE VIEW Topscore_SeniorA1 AS
SELECT ResultatID, UtoverID, Score, Watt5000m, Tid5000m, Watt2000m, Tid2000m, Watt60sec, ProsentLiggIRo, KgLiggIRo, ProsentKneby, KgKneby, AntallBeveg, Year
FROM SeniorA
LIMIT 10;

CREATE VIEW Topscore_JuniorA1 AS
SELECT ResultatID, UtoverID, Score, Watt5000m, Tid5000m, Watt2000m, Tid2000m, Watt60sec, Prosentliggro, Kiloliggro, CmSargeant, AntallBeveg, Ar
FROM JuniorA
LIMIT 10;

CREATE VIEW Topscore_JuniorB1 AS
SELECT ResultatID, UtoverID, Score, Sek3000m, Tid3000m, Watt2000m, Tid2000m, Watt60sec, AntalKrHev, CmSargeant, AntallBeveg, Year
FROM JuniorB
LIMIT 10;

CREATE VIEW Topscore_JuniorC1 AS
SELECT RESULTATID, UTOVERID, `3000M`, `60SEC`, KROPPSHEV, SARGEANT, BEVEGLIGHET, YEAR
FROM JuniorC
LIMIT 10;

CREATE VIEW Topscore_Utover1 AS
SELECT UtoverID, Navn, Klubb, Fodt
FROM Utover
LIMIT 10;

