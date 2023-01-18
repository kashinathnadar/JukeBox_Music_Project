create database Jukebox;
use Jukebox;
drop database Jukebox;
create table Useer4
(
U_Id int auto_increment,
U_Password varchar(20) default null,
U_MobileNo varchar(20) default null,
primary key (U_Id)
);
insert into Useer4 (U_Password,U_MobileNo) values('kaki123','8898023184');
select * from Useer4;

create table Playlistt1
(
Pl_Id int auto_increment,
Pl_Name varchar (20) default null,
U_Id int null,
unique key (Pl_Id),
foreign key (U_Id) references Useer4(U_Id) on update cascade on delete cascade
);
insert into Playlistt1 (Pl_Name,U_Id)values('folk',1);
insert into Playlistt1 (Pl_Name,U_Id)values('pop',1);
insert into Playlistt1 (Pl_Name,U_Id)values('melody',15);
insert into Playlistt1 (Pl_Name,U_Id)values('jazz',15);
select * from Playlistt1;
delete from PlaylistDetailss1 where S_Id=8 ;
select * from Useer4;
drop table Playlistt1;

create table PlaylistDetailss1
(

Pl_Id int default null,
S_Id int default null,
P_Id int default null,

foreign key (Pl_Id) references Playlistt1(Pl_Id) on update cascade on delete cascade,
foreign key (S_Id) references Songg(S_Id) on update cascade on delete cascade,
foreign key (P_Id) references Podcastt(P_Id) on update cascade on delete cascade
);
insert into PlaylistDetailss1 values(1,1,1);
insert into PlaylistDetailss1 values(1,8,1);
insert into PlaylistDetailss1 values(2,2,3);
insert into PlaylistDetailss1 values(2,6,2);
select S_Path from PlaylistDetailss1 inner join Songg on PlaylistDetailss1.S_Id=Songg.S_Id ;
select * from PlaylistDetailss1;

create table Songg
(
S_Id int default null,
S_Name varchar (20) default null,
S_Genre varchar (20) default null,
S_Artist varchar (20) default null,
S_Duration time default null,
S_Path varchar (40) default null,
unique key (S_Id)
);

create table Podcastt
(
P_Id int default null,
P_Name varchar (20) default null,
P_Episode varchar (20) default null,
P_Celebrity varchar (20) default null,
P_Duration time default null,
P_Path varchar (40) default null,
unique key (P_Id)
);

insert into User values(101,'kokli101',8852336998);
insert into User values(002,'abc123',6354785692);
insert into User values(003,7523456981,'nnn123');
select * from User4;

insert into Playlist values(24,'Travel',002);
select * from Playlistt;

insert into PlaylistDetails values (1,24,2,0);
select * from PlaylistDetailss;

insert into Songg values (1,'Levitating','POP','Dua Lipa',03.23,'"C:/Users/KASHINATH/Music/song1.wav"');
insert into Songg values (2,'Perfect','MELODY','Ed Sheeran',04.2500,'"C:/Users/KASHINATH/Music/song2.wav"');
insert into Songg values (3,'Roar','JAZZ','Katy Perry',03.4303,'"C:/Users/KASHINATH/Music/song3.wav"');
insert into Songg values (4,'Stitches','POWER POP','Shawn Mendes',03.27,'"C:/Users/KASHINATH/Music/song4.wav"');
insert into Songg values (5,'You Belong With Me','PARTY','Taylor Swift',03.52,'"C:/Users/KASHINATH/Music/song5.wav"');
insert into Songg values (6,'Closer','FUTURE BASS','The Chainsmokers',04.04,'"C:/Users/KASHINATH/Music/song6.wav"');
insert into Songg values (7,'Blank Space','ELECTRO POP','Taylor Swift',03.52,'"C:/Users/KASHINATH/Music/song7.wav"');
insert into Songg values (8,'April Madhathil','MELODY','UnniKrishnan',05.30,'"C:\Users\KASHINATH\Music\song8.wav"');
insert into Songg values (9,'Aluva-Puzha','MELODY','Vineeth Sreenivasan',03.03,'"C:\Users\KASHINATH\Music\song9.wav"');
insert into Songg values (10,'Malare_Premam','MELODY','Vijay Yesudas',05.14,'"C:\Users\KASHINATH\Music\song10.wav"');
select * from Songg;
delete from Songg where S_Id=10;

update Songg set S_Path='C:/Users/KASHINATH/Music/song10.wav' where S_Id ='10';
update Podcastt set P_Path='C:/Users/KASHINATH/Music/pod4.mpeg' where P_Id='4';

insert into Podcastt values(1,'Love','1','Depp',12.30,'"C:/Users/KASHINATH/Music/pod1.mpeg"');
insert into Podcastt values(2,'Love','2','Depp',11.50,'""C:/Users/KASHINATH/Music/pod2.mpeg""');
insert into Podcastt values(3,'Comedy','1','Potter',10.10,'"C:/Users/KASHINATH/Music/pod3.mpeg"');
insert into Podcastt values(4,'Struggle','1','Hermoine',12.45,'"C:/Users/KASHINATH/Music/pod4.mpeg"');
select * from Podcastt;
select * from Songg where S_Genre='POP';

select * from Useer4;
select * from Playlistt1;
select * from PlaylistDetailss1;
select * from Songg;
select * from Podcastt;