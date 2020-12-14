USE `DB7`;

CREATE VIEW Topscore_JuniorA AS
SELECT  Utover.Navn , JuniorA.Score, JuniorA.Ar
FROM JuniorA
INNER JOIN Utover ON  JuniorA.UtoverID = Utover.UtoverID;