--drop table ORDERS 
--drop table CUSTOMERS
--drop table WORKERS
--drop table SERVICESS





use ITEnvironment;

------------�������� � ���������� ������� SERVICESS 
create table SERVICESS 
(  
	SERVICESS nvarchar(50) constraint 
	SERVICESS_TYPE primary key,
	SERVICESS_PRICE  float,  
    SERVICESS_SPECIALITY  varchar(50)
) 
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )        values ('gg', 45.5,'����������');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )         values ('��-�',55, '������������ �����');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )         values ('��-�',54, '���������� � ���. ����������');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )          values  ('��-X',95, '���������� �����������');
insert into SERVICESS   (SERVICESS, SERVICESS_PRICE, SERVICESS_SPECIALITY )        values  ('��-��',51, '����. ������������ �����');
 
-------------�������� � ���������� ������� WORKERS 
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
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('r','����������','gg', 45,'����������');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('t','����������','��-��', 45,'����������');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('y','����������','gg', 45,'����������');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('u','����������','��-X', 45,'����������');
insert into WORKERS   (WORKERS,  WORKERS_NAME,SERVICESS, WORKERS_YEARS, WORKERS_CONTACTS)        values ('i','����������','gg', 45,'����������');

------------�������� � ���������� ������� CUSTOMERS 
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


------------�������� � ���������� ������� ORDERS 
create table ORDERS
(  
	ORDERS int constraint 
	ORDERS_ID primary key,
	SERVICESS nvarchar(50) constraint ORDERS_SERVICESS_TYPE foreign key
	references SERVICESS(SERVICESS),
	ORDERS_DATE  date, 
	ORDERS_WORKER nvarchar(20), -- ����� ����� �� ��������� ������������� ��� ������ ��� ����� ������� ���� 
    ORDERS_COST float,
	ORDERS_DISCOUNT int, 
	CUSTOMERS nvarchar(20) constraint ORDERS_OFCUSTOMERS foreign key
	references CUSTOMERS(CUSTOMERS)
) 
insert into ORDERS   (ORDERS, SERVICESS, ORDERS_DATE,ORDERS_WORKER, ORDERS_COST, ORDERS_DISCOUNT, CUSTOMERS)        values (1,'gg','2019-5-8','����������', 45, 10, '123');
