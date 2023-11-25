-- UC1
create database AddressBookService;
use AddressBookService;

-- UC2
create table AddressBook (id int primary key,firstName varchar(30),lastName varchar(30),address varchar(150),city varchar(25),state varchar(25),zip int,phoneNumber int(10),email varchar(50));

-- UC3
insert into AddressBook values(1,"Ashwini","Bankar","Mahim","Mumbai","Maharashtra",400016,77962269,"ash@gmail.com"),
								(2,"Madhavi","sharma","tilak_nagar","Gujrat","Gujrat",200145,95038415,"madhavi@gmail.com"),
                                (3,"Rohan","jadhav","pune","Pune","Maharashtra",430016,8886226,"rohan@gmail.com"),
                                (4,"Raj","Patil","Shivaji_Nagar","Aurangabad","Maharashtra",431016,9056622,"Raj@gmail.com");
select * from AddressBook;

-- UC4
update AddressBook set city="Pune" where id=1;
select * from AddressBook;

-- UC5
delete from AddressBook where id=4;
select * from AddressBook;

-- UC6
select firstName from AddressBook where city="pune";

-- UC7
select city,count(*) from AddressBook group by city;

-- UC8
insert into AddressBook values(5,"Rucha","gawai","nagr","Aurangabad","Maharashtra",412016,88962269,"r@gmail.com"),
								(6,"sanvi","salve","mumbai","Mumbai","Maharashtra",4230016,76596226,"s@gmail.com"),
                                (7,"rakesh","kumar","bihar","Mumbai","Maharashtra",430016,78962269,"rakesh@gmail.com");
select * from AddressBook where state="Maharashtra" order by firstName  ;

-- UC9
alter table AddressBook add type varchar(30);
select * from AddressBook;
update AddressBook set type="profession" where id=7;

-- UC10
select type,count(*) from AddressBook group by type;

-- UC11
insert into AddressBook values(8,"aaa","bbb","manipal","Banglore","Manipal",400125,857496,"a@gmail.com","Family"),
								(9,"ccc","ddd","kalyan","klyan","Mumbai",400125,857496,"a@gmail.com","friend"),
                                (10,"ayyy","zzz","pjkas","pune","maharashtra",430125,800496,"ay@gmail.com","friend");
select * from AddressBook;

-- UC12
create table type (typeid int primary key,relation varchar(30),id int ,foreign key (id) references AddressBook (id));
select * from type;
insert into type values(1,"Famly",1),(2,"Friend",2),(3,"Profession",3),(4,"Friend",5);
