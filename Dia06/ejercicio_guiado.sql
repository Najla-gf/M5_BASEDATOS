--Paso 2: Transacción controlada donde pasamos los $1000 de la cuenta 1 a la cuenta 2.
begin transaction;
UPDATE cuentas set balance = balance - 1000 where numero_cuenta = 1;
UPDATE cuentas set balance = balance + 1000 where numero_cuenta = 2;
--Paso 3: Confirmamos la transacción:
commit;

BEGIN TRANSACTION;
UPDATE cuentas SET balance = balance + 1000 WHERE numero_cuenta = 2;
UPDATE cuentas SET balance = balance - 1000 WHERE numero_cuenta = 1;
/*ERROR:  el nuevo registro para la relación «cuentas» viola la restricción «check» «cuentas_balance_check»
DETAIL:  La fila que falla contiene (1, -1000, t).*/

select * from cuentas;
--ERROR:  transacción abortada, las órdenes serán ignoradas hasta el fin de bloque de transacción

commit; --el commit ejecuta un rollback por el error anterior
ROLLBACK;

/*Paso 4: Intentemos registrar una nueva cuenta de número 3 en nuestra tabla
“cuentas” con un saldo de $5000 y justo luego guardemos ese punto de la
transacción con un SAVEPOINT de nombre “nueva_cuenta”.*/
BEGIN TRANSACTION;
INSERT INTO cuentas(numero_cuenta, balance) VALUES (3,5000, true);
select * from cuentas;
SAVEPOINT nueva_cuenta;


UPDATE cuentas SET balance = balance + 3000 WHERE numero_cuenta = 3;
UPDATE cuentas SET balance = balance - 3000 WHERE numero_cuenta = 2;
-- Justo acá deberás recibir un error
--TAMBIEN SE PUEDE USAR CONDICIONALES
--IF condicion then plsql postgresql
ROLLBACK TO nueva_cuenta;
COMMIT;

UPDATE cuentas SET balance = balance + 2000 WHERE numero_cuenta = 2;
--dejar la cuenta en 4mil

UPDATE cuentas SET balance = 4000 WHERE numero_cuenta = 2;

----------------
--Inserción de registros
INSERT INTO cuentas(numero_cuenta, balance) VALUES (4,7000);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (5,500);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (6,12000);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (7,900);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (8,100);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (9,20000);
INSERT INTO cuentas(numero_cuenta, balance) VALUES (10,50);

select * from cuentas; 

--Reporta aquellas cuentas cuyo balance sea mayor a 2000.
select numero_cuenta from cuentas where balance > 2000;

--Reporta cuántas tienen un balance inferior a 1000.
select count(numero_cuenta) from cuentas where balance < 1000;

--Reporta el promedio total de las cuentas registradas según su balance.
select avg(balance) from cuentas;

--Reporta el promedio de cuentas cuyo balance sea mayor o igual a 10000.
select avg(balance) from cuentas where balance >= 10000;



