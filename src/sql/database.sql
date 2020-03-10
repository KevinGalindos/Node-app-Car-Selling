create database BUSES;

use BUSES;

create table persona(

	idPersona INT NOT NULL PRIMARY KEY,
	cedula INT NOT NULL UNIQUE,
    tipoPer VARCHAR(20) NOT NULL,
	nombre VARCHAR(20) NOT NULL,
	apellido varchar(20) not null,
	correo varchar(20) null
	
	);

   create table Vehiculo(
	NumInterno int not null PRIMARY KEY,
	placa varchar(6) not null unique,
	color varchar(20) null,
	marca varchar (20) not null,
	modelo int not null,
 	capacidad int not null
	
	); 


    
    INSERT INTO persona
    ( -- columns to insert data into
     idPersona, cedula, tipoPer, nombre,apellido,correo
    )
    VALUES
    ( -- first row: values for the columns in the list above
     0001,120449,'Pasajero','Marc','Carl','cacm@fnv.com'
    ),
    ( -- second row: values for the columns in the list above
      0002,12534549,'Administrativo','Fag','Doez','cgrem@fnv.com'
    );

    INSERT INTO vehiculo(
        NumInterno,placa,color,marca,modelo,capacidad
    )
    VALUES
    (
    2034,'asx039','ROJO','KIA',2015,5
    ),

    (
    4050,'apr956','AZUL','RENAULT',2018,14
    );

SELECT * FROM persona;
SELECT * from vehiculo;