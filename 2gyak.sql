/* szallashely database*/
SELECT USERNEV, NEV, UPPER(LEFT(NEV,1) + RIGHT(NEV,1)) 
FROM Vendeg
WHERE EMAIL LIKE('%.hu')


SELECT SZALLAS_ID,
    SZALLAS_NEV,
    HELY,
    DATEDIFF(DAY,ROGZ_IDO,GETDATE()) AS 'Aktív napok száma',
    TIPUS
FROM Szallashely
WHERE NOT(TIPUS='vendégház' OR TIPUS='panzió')



