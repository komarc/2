--Hány diák tartozik egy-egy oktatóhoz a kategóriák szerint, és hány kategóriát kezel egy oktató?


WITH KategoriaOktato AS (
    SELECT
        oktato_fk,
        COUNT(*) AS kategoria_count
    FROM Kategoriak
    GROUP BY oktato_fk
)
SELECT
    k.oktato_fk,
    COUNT(b.diak_fk) AS diak_count,
    k.kategoria_count
FROM Beiratkozas b
JOIN KategoriaOktato k ON b.oktato_fk = k.oktato_fk
GROUP BY k.oktato_fk, k.kategoria_count;
