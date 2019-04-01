use master  
go
create database ITEnvironment
on primary
( name = N'It_BASE_mdf', 
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE.mdf', 
   size = 5Mb, 
   maxsize=10Mb, 
   filegrowth=1024Kb),

( name = N'It_BASE_ndf',
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE.ndf', 
   size = 5Mb, 
   maxsize=10Mb, 
   filegrowth=10%),
   ---------------------------------
filegroup G1
( name = N'It_BASE11_ndf',
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE11.ndf',
   size=10Mb, 
   maxsize=15Mb, 
   filegrowth=1Mb),

( name = N'It_BASE12_ndf',
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE12.ndf',
   size=2Mb, 
   maxsize=5Mb, 
   filegrowth=1Mb),
   --------------------------------
filegroup G2
( name = N'It_BASE21_ndf',
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE21.ndf',
   size=5Mb, 
   maxsize=10Mb, 
   filegrowth=1Mb),

( name = N'It_BASE22_ndf',
	filename = N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE22.ndf',
   size=2Mb, 
   maxsize=5Mb, 
   filegrowth=1Mb)
   --------------------------------
log on
( name = N'It_BASE_log', filename=N'D:\Учеба\4 сем\курсовой\Environment\data_base\It_BASE.ldf',       
   size=5Mb,  maxsize=unlimited, filegrowth=1Mb)
   go
