SELECT id, "Pelicula", "Año estreno", "Director"
FROM public.peliculas;


select id from peliculas where "Pelicula" = 'Titanic';

select max("Año estreno") from peliculas;

select count(id) from peliculas where "Director" = 'Peter Jackson';

select "Pelicula", "Año estreno" from peliculas where "Director" = 'Peter Jackson';

