Create user MASKUSERR without login
grant SELECT ON Ugyfel to MASKUSERR
execute As user = 'MASKUSERR'
SELECT * From Ugyfel