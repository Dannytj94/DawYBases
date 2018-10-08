CREATE TABLE Proveedores 
( 
  RFC char(13) not null, 
  RazonSocial varchar(50) 
) 

	  CREATE TABLE Entregan 
( 
  Clave numeric(5) not null, 
  RFC char(15) not null, 
  Numero numeric(5) not null, 
  Fecha Datetime not null, 
  Cantidad numeric (8,2) 
) 

CREATE TABLE Proyectos 
( 
  Numero numeric(5) not null, 
  Denominacion varchar(50) 
) 

CREATE TABLE Materiales 
( 
  Clave numeric(5) not null, 
  Descripcion varchar(50), 
  Costo numeric (8,2) 
) 

BULK INSERT a1172848.a1172848.[Proveedores]
   FROM 'e:\wwwroot\a1172848\proveedores.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = ';'
      )
	BULK INSERT a1172848.a1172848.[Proyectos]
   FROM 'e:\wwwroot\a1172848\proyectos.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = ';'
      )
	  BULK INSERT a1172848.a1172848.[Entregan]
   FROM 'e:\wwwroot\a1172848\entregan.csv'
   WITH 
      (
         CODEPAGE = 'ACP',
         FIELDTERMINATOR = ',',
         ROWTERMINATOR = ';'
      )



SET DATEFORMAT dmy -- especificar formato de la fecha 

drop table Entregan

SELECT  * FROM Entregan 
	 

	
