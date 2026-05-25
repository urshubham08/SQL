-- data type 

create database if not exists datatypedb ;

use datatypedb;

-- numeric 

create table test1 (id tinyint ) ;
insert into test1 values(-1) , (10);
insert into test1 values(-128) ; --  out of range (1 byte == 8 bit == 2**8 (-120 to 127 )
select * from test1 ;


-- small int --  2 byte mudium int -- 3 byte 
--  int -- > 4 
--  big int -->  byte 


create table test2 (age tinyint unsigned) ;
insert into test2 values (250);
select * from test2;


-- float and double 
create table test3 (salary  float , salary2 double );
insert into test3 values(1989.5541561 , 4544.446524154);
select * from test3; 


-- double before decimal value you can place or you will get after decimal  value you can place or you will gwt 
create table test4 (price  double (6,2)  ); -- total is 6 , 2  is decimal value , 4 re the value before 
insert into test4 values(1989.5541561 ); -- two decimal 
insert into test4 values(199.5541561 );
insert into test4 values(19 );
insert into test4 values(19895.8989); -- eroro becauese of 5 value in this out of range 

select * from test4;

-- char memory le rha hai 
create table test5(countrycode  char(3) );
insert into test5 value ('ind'); 
insert into test5 value ('india') ; -- error because of out of range  last space nhi ginta 
insert into test5 value ('he        ' ) ; -- aage space ko count krega 
select * , char_length(countrycode) from test5 ;



create table test6(countrycode  varchar(3) );
insert into test6 value ('ind'); 
insert into test6 value ('india') ; -- error because of out of range  last space nhi ginta 
insert into test6 value ('h      ' ) ; -- aage space ko count krega  /  piche ke space ko count krta hai 
select * , char_length(countrycode) from test5 ;  










