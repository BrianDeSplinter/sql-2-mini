-- ----------1----------
create table movie(
  movie_id serial primary key,
  title text,
  media_type_id int references
  media_type(media_type_id)
  );

-- ----------2----------
insert into movie (title, media_type_id)
values
('Gattaca', 3),
('Voldemort and the Pesky Child', 3);

-- ----------3----------
alter table movie
add column genre_id int references genre(genre_id);

-- ----------4----------
update movie
set genre_id = 20
where movie_id = 1;

update movie
set genre_id = 22
where movie_id = 2;

-- ----------5----------Joins
select * from movie
join genre on movie.genre_id = genre.genre_id;

-- ----------6----------
select ar.name, al.title from artist ar 
join album al on ar.artist_id = al.artist_id;

-- ----------7----------Subquery
select * from track
where genre_id in (
  select genre_id from genre
  where name in ('Jazz', 'Blues')
 );

-- ----------8----------
update employee 
set phone = null
where employee_id = 1;

-- ----------9----------
select * from customer
where company is null;

select * from customer
where company is not null;

-- ----------10----------
select distinct country from customer;

-- ----------11----------
select * from customer where fax is null;
delete from customer where fax is null;
