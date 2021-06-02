use freelance;
CREATE TABLE customer(
	customer_id INT NOT NULL AUTO_INCREMENT,
	FirstName varchar(100) NULL,
	LastName varchar(100) NULL,
	BirthYear int NULL,
	email varchar(50) NULL,
	login varchar(50) NULL,
	phone varchar(50) NULL,
	PRIMARY KEY (customer_id));
    
    CREATE TABLE orders(
	customer_id int NULL,
	Item varchar(50) NULL,
	Price int NULL,
	Quantity int NULL,
	Total int NULL,
 
FOREIGN KEY (customer_id) REFERENCES customer(customer_id));

-- Q2
CREATE TABLE StoreCard(
	customer_id int NOT NULL,
	CardID int NOT NULL,
	CreditLimit int NULL,
	Balance decimal(12, 2) NULL);


insert into customer(firstname,lastname,birthyear,email,login,phone) values('CANNON','Tools',1974,'a@a.com',1,0123456789);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('IMPERIAL','BANKCORP ',1980,'#@3.com',1,56455545454);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('UNITED ','ATLANTIC ',1970,'2@2.com',2,78787888787);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('SOUTHWEST ','STATE ',1990,'3@3.com',3,99999999999);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('CHEMICAL','MUTUAL',1970,'4@4.com',4,7777777);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('MICHIGAN','LIGHTING',1991,'5@5.com',5,5555555555);
insert into customer(firstname,lastname,birthyear,email,login,phone) values('HARTFORD','IRON',1992,'6@6..com',6,6666666666);


insert into orders values(1,1,50,1,50);
insert into orders values(1,2,60,2,120);
insert into orders values(1,3,40,4,160);
insert into orders values(2,3,40,2,80);
insert into orders values(3,2,60,4,240);
insert into orders values(7,1,50,3,150);
insert into orders values(7,2,60,1,60);
insert into orders values(6,1,50,1,50);
insert into orders values(6,2,60,1,60);
insert into orders values(5,1,50,1,50);

-- Q1
select o.customer_id,FirstName, LastName, phone,email, sum(total) as total from customer c
inner join orders o on o.customer_id = c.customer_id
group by o.customer_id,FirstName, LastName, phone,email
order by total desc
LIMIT 5;

-- Q3
insert into StoreCard values(1,1,5000,8000);
insert into StoreCard values(2,3,50000,45000);
insert into StoreCard values(3,4,100000,80000);

-- Q4
ALTER TABLE StoreCard
MODIFY column CardID int NOT NULL;

alter table StoreCard
ADD PRIMARY KEY (CardID);



