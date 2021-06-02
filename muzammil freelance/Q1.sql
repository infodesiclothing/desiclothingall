CREATE TABLE [dbo].[customer](
	[customer_id] INT NOT NULL AUTO_INCREMENT,
	[FirstName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[BirthYear] [int] NULL,
	[email] [varchar](50) NULL,
	[login] [varchar](50) NULL,
	[phone] [varchar](50) NULL,
	PRIMARY KEY (customer_id));




select top 5 o.customer_id,FirstName, LastName, phone,email, sum(total) as total from customer c
inner join orders o on o.customer_id = c.customer_id
group by o.customer_id,FirstName, LastName, phone,email
order by total desc
