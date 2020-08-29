create  database HanoiTourist
go
use HanoiTourist

go
create table Role
(	
	RoleId int primary key,
	RoleName nvarchar(100),
	Status bit,
)
go
create table Users
(
	UserId int primary key identity,
	UserName nvarchar(100),
	Email nvarchar(100),
	Phone int,
	Address nvarchar(100),
	RoleId int,
	constraint fk_Users_Roles foreign key(RoleId) references Role(RoleId),
	Status bit,
)
go
create table Country
(
	CountryId char(5) primary key,
	CountryName nvarchar(100),
)
go
create table Place
(
	PlaceId char(5) primary key,
	PlaceName nvarchar(100),
	CountryId char(5),
	constraint fk_Place_Country foreign key(CountryId) references Country(CountryId),
)
go

create table Tour
(
	TourId char(10) primary key,
	TourPhoto nvarchar(100),
	TourName nvarchar(100),
	TourDescription nvarchar(max),
	TourPrice money,
	TourDeparture nvarchar(100),
	TourDestination nvarchar(100),
	TourTime nvarchar(100),
	TourVehicle nvarchar(100),
	TourSchedule nvarchar(1000),
	PlaceId char(5),
	constraint fk_Tour_Place foreign key(PlaceId) references Place(PlaceId),
	
	Status bit,
)

go
create Table Orders
(
	UserId int ,
	TourId char(10),
	constraint pk_Order Primary  key(UserId,TourId) ,
	constraint fk_Order_User foreign key(UserId) references Users(UserId),
	constraint fk_Order_Tour foreign key(TourId) references Tour(TourId),
	Status bit,
)
