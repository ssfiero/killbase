-- // psql Killbase < killbase.sql

drop table if exists assassins;
drop table if exists contracts;
drop table if exists clients;
drop table if exists targets;



-- // Create tables

create table assassins (id serial Primary Key, full_name text, weapon text, contract_info text, min_price int, rating float, number_of_kills int, age int);

create table contracts (id serial Primary Key, target text, client text, budget int, completed text, who_completed text);

create table clients (id serial Primary Key, name text);

create table targets(id serial Primary Key, name text, location text, photo text, seclevel text);



-- // Add data into assassins table

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Alexander Duggan', 'The Jackal', 'Sniper rifle', 31, 45, 7.5, 28);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Anton Chigurh', 'Old Man', 'Pneumatic bolt gun', 52, 40, 9, 72);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('', 'Ghost Dog', 'Pistol', 28, 20, 6.5, 35);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Jason Bourne', '', 'Parkour', 27, 25, 7, 48);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('John Wick', 'Baba Yaga', 'Lots of guns', 35, 50, 9.5, 433);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Jules Winnfield', '', 'Pistol', 26, 15, 6.5, 13);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Leon', 'The Professional', 'Everything', 41, 30, 8.5, 87);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Nikita Mears', 'Nikita, LaFemme Nikita', 'Silenced pistols', 28, 30, 7, 32);

insert into assassins (full_name, weapon, contract_info, min_price, rating, number_of_kills, age) values ('Pickle Rick', 'Solenya', 'Lasers and office supplies', 60, 0, 8, 24);



-- // Add data to clients table

insert into clients (name) values ('Marcellus Wallace');
insert into clients (name) values ('Concerto');
insert into clients (name) values ('Mathilda');
insert into clients (name) values ('Winston');
insert into clients (name) values ('Ray Vargo');



-- // Add data to targets table

insert into targets (name, location, photo, seclevel) values ('Butch Coolidge', 'Los Angeles', 'https://goo.gl/LCquZj', 3);

insert into targets (name, location, photo, seclevel) values ('The Jaguar', 'Russian Embassy', 'https://goo.gl/6JWsiv', 9);

insert into targets (name, location, photo, seclevel) values ('Norman Stansfield', 'Manhattan', 'https://i.imgur.com/mdIk33E.jpg', 7);

insert into targets (name, location, photo, seclevel) values ('San D''Antonio', 'Continental Hotel', 'https://goo.gl/fUPkYy', 10);

insert into targets (name, location, photo, seclevel) values ('Sonny Valerio', 'Queens', 'https://goo.gl/8DHYUS', 4);



-- // Add data into contracts table

insert into contracts (target, client, budget, completed, who_completed) values ('Butch Coolidge', 'Marcellus Wallace', 40, '', '');

insert into contracts (target, client, budget, completed, who_completed) values ('The Jaguar', 'Concerto', 70, '', '');

insert into contracts (target, client, budget, completed, who_completed) values ('Norman Stansfield', 'Mathilda', 35, '', '');

insert into contracts (target, client, budget, completed, who_completed) values ('San D''Antonio', 'Winston', 25, '', '');

insert into contracts (target, client, budget, completed, who_completed) values ('Sonny Valerio', 'Ray Vargo', 10, '', '');
