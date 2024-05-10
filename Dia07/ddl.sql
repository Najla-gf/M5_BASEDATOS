--Paso 1: Crear una base de datos
create database transacciones;
\c transacciones
--Paso 2: Mostrar todas las tablas de una base de datos.
\dt;
--Paso 3: Mostrar una tabla en específica.
\dt cuentas;
--Paso 4: Modificar un campo de una tabla.
ALTER TABLE cuentas ADD column_name datatype;
--Paso 5: Eliminar una tabla de la base de datos.
delete table cuentas; --- eliminar registros
drop table cuentas; --- eliminar tabla completa

-----crear tabla
create table clientes (
    id int primary key, 
    nombre varchar not null, 
    rut int unique not null
    dv char not null
    );

select concat(rut,dv) as rut_completo from clientes;

select concat('18198943','-','2') as rut_completo;

CREATE TABLE products (
    product_no integer UNIQUE, 
    name text, 
    price numeric default 0
);

--DEFAULT 0 hace que le aisgne un valor 0 al dato que no se ingresa
--Si coloco null, deja el dato vacío.
--Lo mismo aplica para texto: default ''

insert into products values(012,'producto 1',0100);
insert into products values(013,'producto 2');
insert into products values(014,'producto 3', null);


drop table products;

---- MODIFICAMOS LA TABLA
CREATE TABLE products (
    id integer PRIMARY KEY,
    name text not null default '',
    price numeric default 0
);

CREATE TABLE orders (
    id integer PRIMARY KEY,
    product_id integer REFERENCES products(id),
    quantity integer
);

ALTER TABLE IF EXISTS public.orders
ADD CONSTRAINT check_quantity CHECK (quantity >=0)
NOT VALID;

--------------------------
--Crear una tabla para clientes con los campos:
a. ID               int         PRIMARY KEY
b. Nombre           varchar(50) not null
c. Apellido         varchar(50) not null
d. Rut              varchar(12) not null unique
e. Teléfono         varchar(20) default ''
f. Email.           varchar     unique




