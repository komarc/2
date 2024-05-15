--Hány beiratkozás történt oktatónként és fizetési státuszonként, 
--és mi az összesített szám összes oktató esetében?
execute As user = 'USERRR'

SELECT iif(grouping(oktato_fk)=1,'Összesen',CAST(oktato_fk as nvarchar(5))),case grouping_id(oktato_fk, fiz_stat) 
when 0 then cast(fiz_stat AS varchar)
when 3 then 'vegosszeg'
else 'reszosszeg'
end as 'fizetesi status',
    COUNT(*) AS beiratkozasok_szama
FROM Beiratkozas
GROUP BY ROLLUP (oktato_fk, fiz_stat);

