create table City(
    id serial primary key,
    city_name varchar(40) unique not null
);

select * from City;



create table Person(
    id serial primary key,
    person_name varchar(40),
    city_id int not null
);
select * from Person;



insert into City(city_name)
values ('Kiyv'),
       ('Lviv'),
       ('Antalia'),
       ('Moscow'),
       ('Ivanovo'),
       ('Berlin');
      
      
insert into Person(person_name, city_id)
values ('Vadim', 2),
       ('Tanya', 4),
       ('Alex', 6),
       ('Anna', 3);
      
      
insert into Person(person_name, city_id)
values ('Inna', 8),
       ('Anatoly', 10);

      
      
select Person.person_name, Person.city_id, City.city_name, City.id
from Person join City
on Person.city_id = City.id;


select Person.person_name, Person.city_id, City.city_name, City.id
from Person left join City
on Person.city_id = City.id;
 
select Person.person_name, Person.city_id, City.city_name, City.id
from Person right join City
on Person.city_id = City.id 


select Person.person_name, Person.city_id, City.city_name, City.id
from Person full join City
on Person.city_id = City.id;


select Person.person_name, Person.city_id, City.city_name, City.id
from Person cross join City;


