CREATE DATABASE  Telefonia;

create table persona(
percedula int primary key,
pernombre Varchar (50),
perapellido Varchar (50),
pertelefonofijo Varchar (20),
perfechanacimiento Varchar (20)
);

create table linea(
linumerolinea  varchar (30) primary key ,
perid int,
linestado varchar(20),
planvalor  Decimal,
constraint perid foreign key (perid) references persona (percedula)
);

create table equipo(
equserial  varchar (30) primary key,
linumerolineaeq  varchar (30),
equmarca Varchar (50),
equdescripcion Varchar (50),
equestado Varchar (50),
constraint linumerolineaeq foreign key (linumerolineaeq) references linea (linumerolinea)

);


create table tipoplan(
planvalor  varchar(30) primary key,
linumerolineatip  varchar (30),
constraint linumerolineatip foreign key (linumerolineatip) references linea (linumerolinea)

);

create table factura(
factnumero  Int primary key auto_increment,
linumerolineas  varchar (30),
facfechaemision  TIMESTAMP,
facvalor varchar(30),
constraint linumerolineas foreign key (linumerolineas) references linea (linumerolinea),
constraint facvalor foreign key (facvalor) references tipoplan (planvalor)

);
