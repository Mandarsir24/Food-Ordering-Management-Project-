use foodorderingapp;
--- --Retrieve all names of customers who have allergies
select*from customer;
select fname,lname from customer where allergy = 'none';

-- Find the Cuisines Offered by specific chef
select*from cuisine;
select*from chef;
select c.cuisinename from cuisine c inner join chef ch on c.cuisinid = ch.cuisinid 
where ch.chefname ='Chef Lily';

-- List the total number of ingredients of each cuisine 
select*from cuisine;
select*from ingredient;
select*from food;
select c.cuisinename , count(i.ingid)  as ingredient_count from cuisine c 
Left join food f on c. cuisinid= f.cuisinid 
left join ingredient i on f.ingid =i. ingid 
group by c. cuisinid , c.cuisinename;

-- calculate total cost of each order , including food and drink 
select*from orders;
select*from drink;
select*from Food;
select o . ordid , sum(f.price + d. price) As totalcost 
from  orders o 
Left join food f on o.foodid = f. foodid 
left join drink d on o.drinkid = d. drinkid 
group by o.ordid;

--  Retrive the names of customers who have placed orders through the express delivery sevice
select*from customer;
select*from delivery;
select c. fname,c. lname from customer c
 join delivery d on c. custid = d. custid 
where d.delname = 'Express Delivery';

-- List the chef who have not prepared any food 
select*from chef;
select*from Food;

select ch.chefname from chef ch 
left join food f on ch.chefid= f.chefid where f. foodid is null;

-- Retrieve the names of all customers who are allergies to eggs 
select * from customer;
select fname from customer where allergy = 'eggs';

-- find the ingredients added in Marghrita Pizza 
select*from Food;
select*from ingredient;
select i. ingname from ingredient i join food f on f.ingid=i.ingid where f.foodname='Marghrita Pizza';

select ingname from ingredient where ingid in ( select ingid from food where foodname = 'Marghrita Pizz');

