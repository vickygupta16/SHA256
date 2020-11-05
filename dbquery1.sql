create table hashTable
(
	HashID int primary key identity,
	UserName varchar(100) not null,
	PassWord varchar(100) not null,
	SaltValue varchar(255) not null,
	HashedPassWord varchar(255) not null
)

select * from hashTable

delete from hashTable

create table hashTable_Encrypted_Data
(
	HED_ID int primary key identity,
	HashedPassWord varchar(255) not null
)

drop table hashTable_Encrypted_Data

select * from hashTable_Encrypted_Data