-- Lo primero a realizar es conectarse a la base de datos
--Paso 1: Accedemos al cliente de postgresql via terminal.
psql -U postgres

-- Paso 2: Crear una base de datos llamada prueba1.
CREATE DATABASE prueba1; --SENTENCIA SQL

-- Paso 3: Lista las bases de datos creadas.
\l --COMANDO, va sin ;

-- Paso 4: Conéctate a la base de datos.
\c prueba1 --comando

-- Paso 4.5: Salir de la terminal de postgres
\q

-- Paso 5: CREACION DE UNA TABLA usa palabras reservadas
-- VARCHAR ---> string
create table clientes(
nombre varchar(30),
apellido varchar(30)
);

--- Litar las talas de la base de datos:
\d

--- Muestra el detalle de la tabla
\d clientes
\d+ clientes

-- Paso 6: INSERTAR VALORES A UNA TABLA a los campos nombre y apellido.
insert into clientes (nombre, apellido) values ('Najla','Gatica');
insert into clientes (nombre, apellido) values ('Salomé','Fierro');
insert into clientes values ('Israel', 'Palma');
insert into clientes (apellido, nombre) values ('Traipe','Jimena');


-- Paso 7: CONSULTAMOS los datos ingresados con:
select * from clientes;

-- Paso 7a: CONSULTAMOS por orden descendente de nombre:
select * from clientes order by nombre desc;

-- Paso 7b: CONSULTAMOS por orden alfabetico de apellido:
select * from clientes order by apellido asc;

-- BORRAR ALGÚN REGISTRO DE LA TABLA
DELETE FROM clientes WHERE nombre = 'Israel'; -- ahí borro solo a israel

-- ELIMINAR la tabla completa
DELETE FROM clientes;

--INVESTIGAR PRIMARY KEY / FOREIGN KEY