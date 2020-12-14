USE `DB7`;

CREATE VIEW Topscore_En AS
SELECT  Utover.Navn , JuniorA.Score, Watt5000m, Tid5000m, Watt2000m, Tid2000m, Watt60sec, Prosentliggro, Kiloliggro, CmSargeant, AntallBeveg, Ar
FROM JuniorA
INNER JOIN Utover ON  JuniorA.UtoverID = Utover.UtoverID
where Utover.UtoverID= 100;