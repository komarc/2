--Melyek azok a diákok, akik fizetett státuszban vannak a Beiratkozas táblában?
execute As user = 'USERRR'

SELECT d.diak_id, d.vez_nev, d.ker_nev, d.szul_dat, d.email
FROM Diakok d
WHERE d.diak_id IN (
    SELECT diak_fk
    FROM Beiratkozas
    WHERE fiz_stat = 'fizetett'
);
