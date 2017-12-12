/* script create database SPARK*/
	USE spark;
	create table dvor (
		[id] int IDENTITY(1,1) NOT NULL,
		[name] nvarchar(30),

		CONSTRAINT PK_main_id PRIMARY KEY (ID),
		CONSTRAINT UQ_main_name UNIQUE (name)
	);
	print N'TABLE dvor COMPLETED!'

	create table magazins(
		[id] int NOT NULL,
		[nmag] nvarchar(30),

		CONSTRAINT PK_magazins_id PRIMARY KEY (ID),
		CONSTRAINT UQ_magazins_name UNIQUE (nmag)
	);
	print N'TABLE magazins COMPLETED!'

	create table otdel(
		[ID] int NOT NULL,
		[notdel] nvarchar(30),

		CONSTRAINT PK_otdel_id PRIMARY KEY (ID),
		CONSTRAINT UQ_otdel_notdel UNIQUE (notdel)
	);
	print N'TABLE otdel COMPLETED!'

	create table ofd (
		[id] int not null,
		[nofd] nvarchar(3) not null,

		constraint PK_ofd_id PRIMARY KEY (id),
	);
	print N'TABLE ofd COMPLETED!'


	create table main (
		[id] int IDENTITY(1,1) NOT NULL,
		[dvorID] int,
		[znumber] int,
		[fdate] date,
		[nmagID] int,
		[otdelID] int,
		[ofdID] int,
		[notation] nvarchar(512),

		CONSTRAINT PK_main PRIMARY KEY (ID),
		CONSTRAINT FK_main_dvorID FOREIGN KEY (dvorID) REFERENCES dvor(ID),
		CONSTRAINT FK_main_nmagID FOREIGN KEY (nmagID) REFERENCES magazins(ID),
		CONSTRAINT FK_main_otdelID FOREIGN KEY (otdelID) REFERENCES otdel(ID),
		CONSTRAINT FK_main_ofdID FOREIGN KEY (ofdID) REFERENCES ofd(ID)
	);
	print N'TABLE main COMPLETED!';
