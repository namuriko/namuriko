USE computers;
SELECT DISTINCT maker
FROM Product
WHERE type = 'PC' 
AND maker NOT IN (SELECT maker
                  FROM Product 
                  WHERE type = 'Laptop'
);
-- Задание 9
SELECT DISTINCT maker 
FROM Product 
JOIN PC ON Product.model = PC.model
WHERE speed >= 450;

-- Задание 10 
SELECT DISTINCT model, price 
FROM Printer
WHERE price = (SELECT MAX(Price)
               FROM Printer
              );
              
-- Задание 11 
SELECT AVG(speed) AS average_speed
FROM PC;

-- Задание 12
SELECT AVG(speed) AS average_speed
FROM Laptop 
WHERE price > 1000;
