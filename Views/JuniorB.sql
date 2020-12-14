USE `DB7`;

CREATE VIEW Topscore_JuniorB AS
SELECT  Utover.Navn , JuniorB.Score, JuniorB.Year
FROM JuniorB
         INNER JOIN Utover ON  JuniorB.UtoverID = Utover.UtoverID;