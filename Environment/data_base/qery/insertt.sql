--drop table ORDERS 
--drop table CUSTOMERS
--drop table WORKERS
--drop table SERVICESS





use ITEnvironment;

------------Создание и заполнение таблицы SERVICESS 
create table SERVICESS 
(  
	SERVICESS nvarchar(50) constraint 
	SERVICESS_TYPE primary key,
	SERVICESS_PRICE  float,  
    SERVICESS_SPECIALITY  varchar(50)
) 
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )        values ('gg', 45.5,'Лекционная');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )         values ('ЛБ-К',55, 'Компьютерный класс');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )         values ('ЛК-К',54, 'Лекционная с уст. проектором');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )          values  ('ЛБ-X',95, 'Химическая лаборатория');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )        values  ('ЛБ-СК',51, 'Спец. компьютерный класс');
 
-------------Создание и заполнение таблицы WORKERS 
 create table WORKERS 
(  
	WORKERS nvarchar(20) constraint 
	WORKERS_SURNAME primary key,
	WORKERS_NAME  nvarchar(20), 
    SERVICESS nvarchar(50) constraint WORKERS_SPECIALITY foreign key
	references SERVICESS(SERVICESS),
	WORKERS_YEARS int,
	WORKERS_CONTACTS nvarchar(100)
) 
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('r','Лекционная','gg', 45,'Лекционная');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('t','Лекционная','ЛБ-СК', 45,'Лекционная');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('y','Лекционная','gg', 45,'Лекционная');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('u','Лекционная','ЛБ-X', 45,'Лекционная');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('i','Лекционная','gg', 45,'Лекционная');

------------Создание и заполнение таблицы CUSTOMERS 
create table CUSTOMERS
(  
	CUSTOMERS nvarchar(20) constraint 
	CUSTOMERS_LOGIN primary key,
	CUSTOMERS_PASSWORD nvarchar(8),
	CUSTOMERS_SURNAME  nvarchar(20), 
	CUSTOMERS_NAME  nvarchar(20), 
	CUSTOMERS_CART nvarchar(20),
	CUSTOMERS_CONTACTS nvarchar(100)
) 

insert into CUSTOMERS  (CUSTOMERS, CUSTOMERS_PASSWORD, CUSTOMERS_SURNAME,CUSTOMERS_NAME, CUSTOMERS_CART, CUSTOMERS_CONTACTS)        values ('123','12345678','KKK','FFF', 10, 'errrr');


------------Создание и заполнение таблицы ORDERS 
create table ORDERS
(  
	ORDERS int constraint 
	ORDERS_ID primary key,
	SERVICESS nvarchar(50) constraint ORDERS_SERVICESS_TYPE foreign key
	references SERVICESS(SERVICESS),
	ORDERS_DATE  date, 
	ORDERS_WORKER nvarchar(20), -- нужно брать из работникв специализацию как запрос или через внешний ключ 
    ORDERS_COST float,
	ORDERS_DISCOUNT int, 
	CUSTOMERS nvarchar(20) constraint ORDERS_OFCUSTOMERS foreign key
	references CUSTOMERS(CUSTOMERS)
) 
insert into ORDERS   (ORDERS, SERVICESS, ORDERS_DATE,ORDERS_WORKER, ORDERS_COST, ORDERS_DISCOUNT, CUSTOMERS)        values (1,'gg','2019-5-8','Лекционная', 45, 10, '123');
