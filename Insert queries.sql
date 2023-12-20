use foodorderingapp;
show tables;
describe customer;
insert into Customer(fname,lname,custid,emailid,pwd,address,street,pincode,gender,phoneno,allergy)
values('johm','Doe',1,'johndoe@email.com','password1','123main st','Apt 4B',12345,'male',551234,'None'),
('Alice','Smith',2,'alice@email.com','password2','456 Elm St','unit7',54321,'Female',5555678,'Peanuts'),
('Bob','johnson',3,'bob@email.com','password3','789OakSt','suite3A',98765,'Male',5559876,'Dairy'),
('Sarah','Williams',4,'sarah@email.com','password4','567 Pime St','Unit5D',65432,'Female',5554321,'Gluten'),
('Mike','Brown',5,'mike@email.com','password5','101 OakSt','Apt 2C',45678,'Male',5558765,'Shelfish');	
select*from customer;

insert into cuisine (cuisinid,cuisinename)
values(1, 'italien'),(2,'chinese'),(3,'mexican'),(4,'italien'),(5,'japanese');
select*from cuisine;

insert into employee(emid,fname,lname,dob,emailid,pwd,address,phoneno,gender,salary)
values(1,'Michael','johnson','1990-05-15','mike@email.com','emp_pass1','789 Oak St',5558765,'male',50000),
(2,'Emily','Wilson','1985-02-20','emily@email.com','emp_pass2','567Pine St',5554321,'Female',45000),
(3,'David','Lee','1988-09-10','david@email.com','emp_Pass3','654 Elm St',5557890,'Male',48000),
(4,'Anna','Garcia','1993-03-25','amma@email.com','emp_Pass4','789 Oak St',5551234,'Female',	52000),
(5,'Robert','Brown','1987-12-12','robert@email.com', 'emp_Pass5','101 Oak St', 5553456,'Male',55000);
select*from employee;

insert into chef(chefid,chefname,address,street,phoneno,cuisinid,emid,emailid,pwd,salary)
Values(1,'chef mario','123 Chef Way','Apt 2C', '555-9876',1,1,'mario@email.com','chef_pass1',55000),
(2,'Chef Lily','456 Chef Lane','unit 5D','555-2345',2,2,'lily@email.com','chef_pass2',52000),
(3,'Chef Carlos','789 Chef St','Suite 1B','555-2345',2,2, 'carlos@email.com','chef_pass3',53000),
(4,'Chef Priya','101 Chef Rd','Apt 3A','555-4321',4,4,'priya@email.com','chef_pass4',51000),
(5,'Chef Kenji','456 Chef Ave','Unit 4C','555-3456',5,5,'kenji@email.com','chef_pass5',54000);
select*from chef;
insert into ingredient (ingid,ingname)
values(1, 'Tomato'),
(2,'Chicken'),
(3, 'Beef'),
(4,'Rice'),
(5,'Noodles');
select*from ingredient;

INSERT INTO food (foodid, foodname, price, quantity, foodavail, cuisinid, ingid, chefid) 
VALUES
(1, 'Margherita Pizza', 12, 20, 'Available', 1, 1, 1),
(2, 'Kung Pao Chicken', 15, 15, 'Available', 2, 2, 2),
(3, 'Taco', 10, 30, 'Available', 3, 3, 3),
(4, 'Chicken Biryani', 14, 25, 'Available', 4, 4, 4),
(5, 'Sushi Rolls', 18, 20, 'Available', 5, 5, 5);
 
select*from Food;

INSERT INTO drink (drinkid, drinkname, price, quantity, drinkavail) VALUES
(1, 'Coca-Cola', 2, 'In Stock', 'Available'),
(2, 'Sprite', 2, 'In Stock', 'Available'),
(3, 'Lemonade', 2, 'In Stock', 'Available'),
(4, 'Iced Tea', 2, 'In Stock', 'Available'),
(5, 'Orange Juice',3,'In Stock', 'Available');
select*from drink;

INSERT INTO delivery (delid, delname, vehicleno, delcharge, deldate, deltime, custid, emid) VALUES
(1, 'Fast Delivery', 'DEL123', 5, '2023-10-13', '12:00 PM', 1, 1),
(2, 'Express Delivery', 'DEL456', 7, '2023-10-14', '2:30 PM', 2, 2),
(3, 'Standard Delivery', 'DEL789', 6, '2023-10-15', '3:45 PM', 3, 3),
(4, 'Late Night Delivery', 'DEL987', 8, '2023-10-16', '9:00 PM', 4, 4),
(5, 'Weekend Delivery', 'DEL654', 7, '2023-10-17', '10:30 AM', 5, 5);
select*from delivery;

INSERT INTO orders (ordid, totalcost, foodid, drinkid, delid) VALUES
(1, 27, 1, 1, 1),
(2, 30, 2, 2, 2),
(3, 25, 3, 3, 3),
(4, 32, 4, 4, 4),
(5, 35, 5, 5, 5);
select*from orders;

INSERT INTO payment (payid, paymethod, custid, ordid)
VALUES
(1,'credit card',1,1),
(2,'paypal',2,2),
(3,'Cash',3,3),
(4, 'credit card',4,4),
(5, 'Cash',5,5);
select*from payment;

