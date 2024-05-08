SELECT ID AS 'Azonosító', -- mindent mutasson, kisebb adatbázisnál
        cim AS 'Film címe',
        LEFT(cim,8) AS 'Rövid cím', --cim oszlopban levo sorok 8 karakterig egy uj oszlopban
        nettoar AS 'Nettó Ár',
        nettoar*1.27 AS 'Bruttóár'
FROM dvd -- tábla neve
WHERE nettoar>5000 AND nettoar <6000 -- sorszűrés


