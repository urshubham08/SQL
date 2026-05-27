-- TCL 
-- tran... - arre the group of sql statment which work as a uniq 
-- tran ko mnage krte hai 
-- this tcl comment insure my data is currect and accurate by following for property 
-- 1 Atomicity --- ya to pura ya pura nhi hoga all tran done or not be done 
-- 2 consistancy -- step by step 👉 Consistency means the database always remains correct, accurate, and valid before and after a transaction.
-- 3 isolation -- 👉 Isolation means multiple transactions run independently without affecting each other.
-- 4 durability -- Durability means once a transaction is successfully committed, the data is saved permanently in the database.
--
create database raj_db ;

use raj_db;
create table raj (id int );
insert into raj values (10);
insert into raj value (20) ;

select * from raj ;

 --  tcl ka use krte hai 
 
start transaction; -- only isi  me change hoga secound me change nhi hoga 

insert into raj value (100) , (99); 
select * from raj ;
commit; -- har gha same rkahega 


-- transaction  --  autocommit  start tran ,, .,,  jab hum dml chalayenge  ddm ke baad panding 
-- when the transaction end -- commit likhna pdega /  ya roll back / ya ddl statement chalayenge 

start transaction;

UPDATE raj
SET SQL_SAFE_UPDATES = 0;
update raj set id = 500 ;
select * from raj ;
rollback;



start transaction ;
insert into raj values (10) , (11) , (20) ;
select * from raj ;
commit;
rollback ; -- nhi chalega , save ho gya transation band ho gya 



start transaction;

insert into raj value (768) ,(564) , (56) ;
select * from raj ;

savepoint raj_savepoint_arya ;
update raj set id = 10000;
rollback to raj_savepoint_arya ;--  specific point tak hi back krega 
-- --------------------------------------------------------------------
start transaction;

insert into raj value (768) ,(564) , (56) ;
select * from raj ;

savepoint raj_savepoint_arya ;
update raj set id = 10;
rollback to raj_savepoint_arya ;--  specific point tak hi back krega 

create table mt_arya( id int ) ;

-- drop and trunct ddl statent , delete ddl truncate me roe delete me row delete me condition de sky=te hai  bss delete roll back ho skta hai 
