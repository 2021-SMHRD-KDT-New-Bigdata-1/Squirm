drop table board;
create table board(
  idx int auto_increment,
  title varchar(1000) not null,  
  contents varchar(3000) not null,
  writer varchar(30) not null,
  indate datetime default now(),
  count int default 0,
  primary key(idx)
);

create table board1(
  idx int auto_increment,
  userId varchar(30) not null,
  title varchar(1000) not null,  
  contents varchar(3000) not null,
  writer varchar(30) not null,
  indate datetime default now(),
  count int default 0,
  primary key(idx)
);

create table user(
	userId varchar(20) not null,
	userPwd varchar(30) not null,
	userName varchar(30) not null,
	primary key(userId)
);

insert into user values('HanGeul','9252','최한글');
insert into user values('GodMi','9252','김갓미');
insert into user values('TaeYang','9252','갓태양');

select * from user;