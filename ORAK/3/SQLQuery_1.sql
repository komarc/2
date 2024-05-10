--feladat1
select *,
--uj oszlop
IIF(MONTH(METTOL)IN (6,7,8),'igen','Nem') as 'Nyári_e'
from Foglalas
where UGYFEL_FK = 'laszlo2' and gyermek_szam = 0



--feladat2
select  szh.TiPUS,
    YEAR(f.METTOL) as 'ÉV',
    MONTH (f.METTOL) as 'Hónap',
<<<<<<< HEAD
    --
from Foglalas f JOIN Szoba sz ON  f.SZOBA_FK=sz.SZOBA_ID
JOIN szallashely szh --
where -- >=5
=======
    count(*)
from Foglalas f JOIN Szoba sz ON  f.SZOBA_FK=sz.SZOBA_ID
JOIN szallashely szh --
where datediff(day,f.METTOL, f.MEDDIG) >=5
>>>>>>> 39975290e750e7d196e84bfb55733b2e17a3673e
group by sz.TIPUS, --

--feladat3