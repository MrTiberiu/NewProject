USE `DB7`;

CREATE VIEW Topscore_SeniorA AS
SELECT  Utover.Navn , SeniorA.Score, SeniorA.Year
FROM SeniorA
         INNER JOIN Utover ON  SeniorA.UtoverID = Utover.UtoverID;