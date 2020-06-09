2.
SELECT * FROM db_practice_5.cars;
SELECT nameclient
FROM cars 
WHERE Nameclient IN (SELECT Nameclient FROM cars GROUP BY Nameclient HAVING COUNT(*) > 1)
ORDER BY Nameclient DESC
3.
SELECT * FROM db_practice_5.cars;
SELECT
    managersurname,
    COUNT(managersurname) AS sales
FROM
   cars
GROUP BY
    Managersurname
HAVING 
    sales > 10 and managersurname like '_%'
 4.
 SELECT * FROM db_practice_5.cars;
SELECT
    managersurname,
    COUNT(managersurname) AS sales
FROM
   cars
GROUP BY
    Managersurname
HAVING 
    sales < 10 and managersurname like '_%'
5.
SELECT  FROM db_practice_5.cars;
SELECT typepayment, nameclient
From cars
WHERE typepayment = 'безналичная';
6.
SELECT * FROM db_practice_5.cars;
SELECT mark, Model, Nameclient, datesales
From cars 
Where Nameclient = 'Якушев Никита' 
Order by datesales
Limit 5
7.
SELECT * FROM db_practice_5.cars;
SELECT typepayment, avg(transactionamount) as transactionavg
From cars
WHERE typepayment = 'наличная'


SELECT * FROM db_practice_5.cars;
SELECT typepayment, avg(transactionamount) as transactionavg
From cars
WHERE typepayment = 'безналичная'
8.
SELECT * FROM db_practice_5.cars;
Select managersurname, sum(transactionamount) as allmoney
From cars
where managersurname = 'Иванов'
