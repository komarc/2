SELECT SZALLAS_ID,
    SZALLAS_NEV,
    HELY, 
    datediff(day,ROGZ_IDO,GETDATE()) as 'Működési idő'
FROM szallashely
WHERE TIPUS='panzió' or TIPUS!='vendégház'