create database LibDatabase8751

use LibDatabase8751

create table Publisher(
	Pname varchar(20) primary key, Address varchar(20), Phone varchar(20)
	);

create table Books(
	BookId varchar(20) primary key, Title varchar(20),PName varchar(20)
	);



create table Member(
	MemberId varchar(20) primary key, Name varchar(20), Address varchar (20)
	);

create table Borrow(
	BId varchar(20) primary key, MId varchar(20) , Date_in varchar(20), Date_out date,

	foreign key (BId) References Books(BookId), 
	foreign key (MId) References Member(MemberId),
	);

create table BookAuthors(
	BId varchar(20) primary key,  Author varchar(20) ,

	foreign key(BId) References Books(BookId)
	);

create table BookCopies(
	BId varchar(20) primary key, Editioncopies int,

	foreign key (BId) References Books(BookId)
	);

Select * from Publisher
Select * from Books
Select * from Member
Select * from Borrow
Select * from BookAuthors
Select * from BookCopies


Insert into Publisher values ('Gunasena_Publish', 'Colombo', '+949282765')
Insert into Publisher values ('Minsara_publish', 'Kalaniye', '+949248281')
Insert into Publisher values ('Sarasavi_Books', 'Galle', '+9492202636')
Insert into Publisher values ('Kumara_Publish', 'Anuradapura', '+9492125636')
Insert into Publisher values ('Anura_Books', 'Negombe', '+9492256369')


Insert into Books values ('CS001', 'Janadipathi_Thaththa', 'Sirisena')
Insert into Books values ('CS002', 'hodatama_kara','Nandasena')
Insert into Books values('CS003','MagePiyanangeNamayen', 'Premadasa')
Insert into Books values('CS004','Dan_Sapada','Rajapaksha')
Insert into Books values('CS005','PoddkHithalaBalanna','Anura')

Insert into Member values ('M001','Menura', 'Nandasena')
Insert into Member values ('M002','Shamal', 'Sirisena')
Insert into Member values ('M003','Danuka', 'Premadasa')
Insert into Member values ('M004','Kumara', 'Rajapaksha')
Insert into Member values ('M005','Sam', 'Anura')

Insert into Borrow values ('CS001', 'M001', '2022-03-09', '2022-04-06')
Insert into Borrow values ('CS002', 'M002', '2024-03-15', '2024-04-22')
Insert into Borrow values ('CS003', 'M003', '2024-09-22', '2024-10-12')
Insert into Borrow values ('CS004', 'M004', '2024-05-11', '2024-07-15')
Insert into Borrow values ('CS005', 'M005', '2024-09-06', '2024-11-16')

Insert into BookAuthors values ('CS001', 'Sirisena')
Insert into BookAuthors values ('CS002', 'Nandasena')
Insert into BookAuthors values ('CS003', 'Premadasa')
Insert into BookAuthors values ('CS004', 'Rajapaksha')
Insert into BookAuthors values ('CS005', 'Anura')

Insert into BookCopies values('CS001', '5')
Insert into BookCopies values('CS0012', '4')
Insert into BookCopies values('CS003', '2')
Insert into BookCopies values('CS004', '6')
Insert into BookCopies values('CS005', '8')

--------Update Data for Publish Table User Phone Number and Address----------

UPDATE Publisher SET Phone  = '+9466848281' WHERE Pname = 'Anura_Books';
UPDATE Publisher SET Address = 'Kurana' WHERE Pname = 'Anura_Books';

-------Update Data for Member table All Member Addresses----------
UPDATE Member SET Address = 'Thanamalvila' WHERE MemberId = 'M001';
UPDATE Member SET Address = 'Siduwa' WHERE MemberId = 'M002';
UPDATE Member SET Address = 'Peralanda' WHERE MemberId = 'M003';
UPDATE Member SET Address = 'Colombo' WHERE MemberId = 'M004';
UPDATE Member SET Address = 'Kurana' WHERE MemberId = 'M005';

---Select Specific Column---
Select Title from Books;
Select Address from Member;

----Select Multiple Column-----
Select Name,Address from Member

-----Ordering Rows in a Sequence----
Select MemberId
From Member
ORDER BY Name; ---default is Asscending Sequnce 

---Used Desending------
Select BId
From Borrow
Order BY MId Desc; 

---Syntax Opertions-----
Select Editioncopies
	From BookCopies
	Where Editioncopies > 2