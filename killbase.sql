-- // psql Killbase < killbase.sql

drop table if exists assassins;
drop table if exists contracts;
drop table if exists clients;
drop table if exists targets;



-- // Create tables

create table assassins (id serial Primary Key, full_name text, codename text, weapon text, contact_info text, min_price int, rating float, number_of_kills int, age int);

create table contracts (id serial Primary Key, target text, client text, budget int, completed text, who_completed text);

create table clients (id serial Primary Key, name text);

create table targets(id serial Primary Key, name text, location text, photo text, seclevel text);



-- // Add data into assassins table

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Alexander Duggan', 'The Jackal', 'Sniper rifle', 'alex@gmail.com', 45, 7.5, 28, 31);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Anton Chigurh', 'Old Man', 'Pneumatic bolt gun', 'chiggy@gmail.com', 40, 9, 72, 52);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('', 'Ghost Dog', 'Pistol', 'blank@ghost.org', 20, 6.5, 35, 28);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Jason Bourne', '', 'Parkour', 'jb@nsa.gov', 25, 7, 48, 27);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('John Wick', 'Baba Yaga', 'Lots of guns', 'keanu@msn.com', 50, 9.5, 433, 35);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Jules Winnfield', '', 'Pistol', 'jules@yahoo.com', 15, 6.5, 13, 26);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Leon', 'The Professional', 'Everything', 'leo@gmail.com', 30, 8.5, 87, 41);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Nikita Mears', 'Nikita, LaFemme Nikita', 'Silenced pistols', 'nikki@gmail.com', 30, 7, 32, 28);

insert into assassins (full_name, codename, weapon, contact_info, min_price, rating, number_of_kills, age) values ('Pickle Rick', 'Solenya', 'Lasers and office supplies', 'rickybobby@nascar.org', 0, 8, 24, 60);



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



-- // Exercises

-- // 1. Select all the assassins, sorted by number of kills.

select assassins
  from assassins
  order by number_of_kills ASC;


-- // 2. Select all of the assassins older than 30 years old.

select assassins
  from assassins
  where age > 30
  order by age ASC;


-- // 3. Select all of the contracts that can afford to pay Nikita Mears. (Budget >= her price).

select contracts
  from contracts
  where budget >= 30;


-- // 4. Count the number of assassins that are capable of taking out Norman Stansfield. (Their rating >= his security level)
select count(assassins)
  from assassins
  where rating >= 7;


-- // 5. Get the total amount it would require to hire every available assassin.
select sum(min_price)
  from assassins;


-- // 6. Assign the following jobs to these assassins:
        -- Jules Winnfield -> Butch Coolidge
        -- The Jackal -> The Jaguar
        -- John Wick -> The Jaguar
        -- Leon -> Norman Stansfield
        -- Pickle Rick -> Sonny Valerio
        -- Jules Winnfield -> Santino D'Antonio
        -- Nikita Mears -> Norman Stansfield
        -- Ghost Dog -> Butch Coolidge

select * from assassins inner join targets on ;
