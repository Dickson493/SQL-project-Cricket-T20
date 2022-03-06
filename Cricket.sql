#creating a database called world
create database world;


#Use the database world
use world; 


#To show the record in cricket_1.csv file
select * from cricket_1;

#To show the record in cricket_2.csv file
select * from cricket_2;


#To show the records of player who were present in test match 1 or test match 2
select Players_Name from cricket_1
union 
select Players_Name from cricket_2;


#To show the players from test match 1 having popularity higher than the average popularity
select players_name,popularity from cricket_1 where Popularity>(select avg(Popularity) from cricket_1);


#To show player_id and player_name that are common in test match 1 and test match 2
select player_id,players_name
from cricket_1 
where cricket_1.player_id in (select player_id from cricket_2);


#Write a query to extract the player_id,runs,player_name from the table cricket_1 where the runs are greater than 50
select player_id,runs,Players_name from cricket_1 where runs>50;




#write a query to extract all the columns from cricket_1 where player_name starts with 'y' and ends with 'v'
select * from cricket_1 where players_name like 'y%v';



#write a query to extract all the columns from cricket_1 where player_name does not end with 't'
select * from cricket_1 where  players_name not like '%t';

#Query to add new record in the table
insert into cricket_1(player_id,players_name) 
values#('PL69','Dickson',100,100),
('PL69','Akash');
select * from cricket_1;



#To show columns with null values
select * from cricket_1 where popularity is null;


#seperate all player id's into one numeric id(example PL1=1)
select player_id,substr(player_id,3) from cricket_1