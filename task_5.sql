#Запрос к 2 заданию    
SELECT nameclient
FROM cars 
WHERE Nameclient IN (SELECT Nameclient FROM cars GROUP BY Nameclient HAVING COUNT(*) > 1)
ORDER BY Nameclient DESC

  #Запрос к 3 заданию  
SELECT managersurname,
COUNT(managersurname) AS sales
FROM cars
GROUP BY Managersurname
HAVING sales > 10 and managersurname like '_%'
  
  #Запрос к 4 заданию  
SELECT managersurname,
COUNT(managersurname) AS sales
FROM cars
GROUP BY Managersurname
HAVING sales < 10 and managersurname like '_%' 
   
  #Запрос к 5 заданию  
SELECT typepayment, nameclient
From cars
WHERE typepayment = 'безналичная';

  #Запрос к 6 заданию  
SELECT mark, Model, Nameclient, datesales
From cars 
Where Nameclient = 'Якушев Никита' 
Order by datesales
Limit 5

  #Запрос к 7 заданию  
SELECT typepayment, avg(transactionamount) as transactionavg
From cars
WHERE typepayment = 'наличная'
SELECT * FROM db_practice_5.cars;
SELECT typepayment, avg(transactionamount) as transactionavg
From cars
WHERE typepayment = 'безналичная'

  #Запрос к 8 заданию  
Select managersurname, sum(transactionamount) as allmoney
From cars
where managersurname = 'Иванов'
