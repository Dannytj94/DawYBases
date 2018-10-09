Código para eliminar tus tablas: 
     drop TABLE entregan 
     drop TABLE materiales 
     drop TABLE proyectos 
     drop TABLE Proveedores
	 
	 
	  IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Materiales')




CREATE TABLE Materiales 
( 
  Clave numeric(5) not null, 
  Descripcion varchar(50), 
  Costo numeric (8,2) 
) 
 
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Proveedores')

CREATE TABLE Proveedores 
( 
  RFC char(13) not null, 
  RazonSocial varchar(50) 
) 
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Proyectos')

CREATE TABLE Proyectos 
( 
  Numero numeric(5) not null, 
  Denominacion varchar(50) 
) 
IF EXISTS (SELECT * FROM INFORMATION_SCHEMA.TABLES WHERE TABLE_NAME = 'Entregan')

CREATE TABLE Entregan 
( 
  Clave numeric(5) not null, 
  RFC char(13) not null, 
  Numero numeric(5) not null, 
  Fecha DateTime not null, 
  Cantidad numeric (8,2) 
) 


BULK INSERT a1172848.a1172848.[Materiales] 
  FROM 'e:\wwwroot\a1172848\materiales.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = ';' 
  ) 

BULK INSERT a1172848.a1172848.[Proyectos] 
  FROM 'e:\wwwroot\a1172848\Proyectos.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = ';' 
  ) 

BULK INSERT a1172848.a1172848.[Proveedores] 
  FROM 'e:\wwwroot\a1172848\Proveedores.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = ';' 
  ) 

SET DATEFORMAT dmy -- especificar formato de la fecha 

BULK INSERT a1172848.a1172848.[Entregan] 
  FROM 'e:\wwwroot\a1172848\Entregan.csv' 
  WITH 
  ( 
    CODEPAGE = 'ACP', 
    FIELDTERMINATOR = ',', 
    ROWTERMINATOR = ';' 
  ) 

  SELECT *  FROM Materiales

  INSERT INTO Materiales values(1000, 'xxx', 1000) 

  Delete from Materiales where Clave = 1000 and Costo = 1000 

  ALTER TABLE Materiales add constraint llaveMateriales PRIMARY KEY (Clave) 

    INSERT INTO Materiales values(1000, 'xxx', 1000) 

	 sp_helpconstraint materiales 

 SELECT * from Proveedores; 
 SELECT * from Entregan;
 SELECT * from Proyectos;

   INSERT INTO entregan values (0, 'xxx', 0, '1-jan-02', 0) ; 

     Delete from Entregan where Cantidad = 0 

	 ALTER TABLE entregan add constraint cfentreganclave 
  foreign key (clave) references materiales(clave); 

    sp_helpconstraint entregan

INSERT INTO entregan values (1000, 'AAAA800101', 5000, GETDATE(), 0);

SELECT * FROM Entregan 

  ALTER TABLE entregan add constraint cantidad check (cantidad > 0) ; 