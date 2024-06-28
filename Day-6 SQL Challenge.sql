-- Create Bank Management Data Base --
create database Bank;
use bank;

create table users(
USERID int primary key,
FirstName varchar(40),
LastName varchar(40),
Email varchar(60) unique
);
insert into users(USERID, FirstName, LastName, Email) values
('1', "John", "Doe", "john.doe@exmaple.com"),
('2', "Nitin", "Pal", "nitin.pal@exmaple.com"),
('3', "Punit", "Pal", "punit.pal@exmaple.com");

select * from users;

create table Accounts(
AccountId int primary key,
UserId int,
AccountType varchar(30),
Balance decimal(10, 2),
foreign key (UserId) references Users (UserId)
);
insert into Accounts(AccountId, UserId, AccountType, Balance) values
(101, 1, "Savings", 1000.00),
(102, 2, "Checking", 500.00),
(103, 3, "Savings", 200.25);

select * from Accounts;
-- Create Data Base for Google Ads --
create database Google_Ads;
use Google_ads;

create table Customers(
CustomerId int primary key,
CustomerName varchar(25),
PhoneNumber varchar(10) check (length(PhoneNumber) = 10)
);
insert into Customers(CustomerId, CustomerName, PhoneNumber) values
(1, "Nitin Pal", 9899931932),
(2, "Punit Pal", 9819931932),
(3, "Mayank Pal", 9399931932),
(4, "Robin Pal", 9849931932),
(5, "Rahul Pal", 9859931932);

select * from Customers;

-- Create Customer table with a uniqe constraint on PhoneNumber --
create table Customer(
CustomerId int primary key,
CustomerName varchar(25),
PhoneNumber varchar(10) unique
);
insert into Customer(CustomerId, CustomerName, PhoneNumber) values
(1, "Nitin Pal", 9899931932),
(2, "Punit Pal", 9819931932),
(3, "Mayank Pal", 9399931932),
(4, "Robin Pal", 9849931932),
(5, "Rahul Pal", 9859931932);

-- Create Customer table with a Not Null constraint on PhoneNumber --
create table Application(
CustomerId int primary key,
CustomerName varchar(25),
PhoneNumber varchar(10) not null
);
insert into Application(CustomerId, CustomerName, PhoneNumber) values
(1, "Nitin Pal", 9899931932),
(2, "Punit Pal", 9819931932),
(3, "Mayank Pal", 9399931932),
(4, "Robin Pal", 9849931932),
(5, "Rahul Pal", 9859931932);


