use master  
go
create database Lab4Mich
on primary
( name = N'Mich_BSTU_mdf', 
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU.mdf', 
   size = 5Mb, 
   maxsize=10Mb, 
   filegrowth=1024Kb),

( name = N'Mich_BSTU_ndf',
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU.ndf', 
   size = 5Mb, 
   maxsize=10Mb, 
   filegrowth=10%),
   ---------------------------------
filegroup G1
( name = N'Mich_BSTU11_ndf',
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU11.ndf',
   size=10Mb, 
   maxsize=15Mb, 
   filegrowth=1Mb),

( name = N'Mich_BSTU12_ndf',
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU12.ndf',
   size=2Mb, 
   maxsize=5Mb, 
   filegrowth=1Mb),
   --------------------------------
filegroup G2
( name = N'Mich_BSTU21_ndf',
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU21.ndf',
   size=5Mb, 
   maxsize=10Mb, 
   filegrowth=1Mb),

( name = N'Mich_BSTU22_ndf',
	filename = N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU22.ndf',
   size=2Mb, 
   maxsize=5Mb, 
   filegrowth=1Mb)
   --------------------------------
log on
( name = N'Mich_BSTU_log', filename=N'D:\׃קובא\4 סול\בה\LABA4\Mich_BSTU.ldf',       
   size=5Mb,  maxsize=unlimited, filegrowth=1Mb)
   go
