--Esto es un comentario

SELECT * FROM demo;
-- Para exportar la columna name
SELECT name from demo;
SELECT id from demo;
SELECT hint from demo;

-- Mezclar varias columnas
select name, hint from demo;
select hint, name from demo;

--Clausura WHERE ayuda a establecer condiciones
SELECT * FROM demo WHERE ID = 5;
SELECT * FROM demo WHERE HINT = '300'; -- aunque aparezca un numero, se trae como string

-- WHERE con OR
SELECT * FROM demo WHERE ID = 5 OR ID = 2;

-- WHERE con AND
--SELECT * FROM demo WHERE ID = 5 AND ID = 8; --No termina de ejecutarse pq no cumple las condicionesdemo
SELECT * FROM demo WHERE ID < 5 AND ID >= 2; -- muestra los id 2, 3 y 4

-- Clausula LIMIT
SELECT * FROM demo LIMIT 3; --- Muestra en orden ascendente: 1, 2 y 3

-- Clausula WHERE y LIMIT
SELECT * FROM demo WHERE ID < 6 LIMIT 3;

-- Clausula ORDER BY
SELECT * FROM demo ORDER BY id desc; -- muestra del 6 al 1
SELECT * FROM demo ORDER BY NAME desc; --- ordena alfabéticamente la columna name
SELECT * FROM demo ORDER BY HINT desc; -- postgresql es la primera
SELECT * FROM demo ORDER BY HINT Asc; --los numeros quedan primero: 1, 300, 3h 

SELECT hint, name from demo order by 1 ASC; -- Muestra solo las columnas hint y name y las ordena por HINT(1)


