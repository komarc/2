--Hányadik beiratkozó egy adott diák egy oktató diákjai között?
execute As user = 'USERRR'

SELECT
    oktato_fk as oktató_az,
    (d.vez_nev+' '+d.ker_nev) as Név ,
    ROW_NUMBER() OVER (PARTITION BY oktato_fk ORDER BY diak_fk) AS rang
FROM Beiratkozas b join Diakok d on b.diak_fk=d.diak_id
