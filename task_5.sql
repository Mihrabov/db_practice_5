#Запрос к 2 заданию    
SELECT client_name
FROM cars 
WHERE client_name IN (SELECT client_name FROM cars GROUP BY client_name HAVING COUNT(*) > 1)
ORDER BY client_name DESC

  #Запрос к 3 заданию  
SELECT manager_surname,
COUNT(manager_surname) AS sales
FROM cars
GROUP BY manager_surname
HAVING sales > 10 and manager_surname like '_%'
  
  #Запрос к 4 заданию  
SELECT manager_surname,
COUNT(manager_surname) AS sales
FROM cars
GROUP BY manager_surname
HAVING sales < 10 and manager_surname like '_%' 
   
  #Запрос к 5 заданию  
SELECT payment_type,  client_name
From cars
WHERE  payment_type = 'безналичная';

  #Запрос к 6 заданию  
SELECT mark, model, client_name, date_sales
From cars 
Where client_name = 'Якушев Никита' 
Order by date_sales
Limit 5

  #Запрос к 7 заданию  
SELECT payment_type, avg(transactionamount) as transactionavg
From cars
WHERE payment_type = 'наличная'
SELECT * FROM db_practice_5.cars;
SELECT payment_type, avg(transactionamount) as transactionavg
From cars
WHERE payment_type = 'безналичная'

  #Запрос к 8 заданию  
Select manager_surname, sum(transactionamount) as allmoney
From cars
where manager_surname = 'Иванов'
