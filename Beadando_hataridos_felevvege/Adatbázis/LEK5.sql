--Kik azok az oktatók, akiknek több mint 1 diákja van, és akik B2 jogosítványt tanítanak?

SELECT O.vez_nev, O.ker_nev, COUNT(DISTINCT B.diak_fk) AS 'Diakok száma'
FROM Oktatok O
JOIN Beiratkozas B ON O.oktato_id = B.oktato_fk
WHERE O.oktato_id IN (
    SELECT K.oktato_fk
    FROM Kategoriak K
  where k.megnevezes = 'B2' or k.megnevezes = 'B2_utankepzes'
)
GROUP BY O.vez_nev, O.ker_nev
HAVING COUNT(DISTINCT B.diak_fk) > 1;
