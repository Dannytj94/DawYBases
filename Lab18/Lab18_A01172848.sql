
Materiales(Clave, Descripción, Costo, PorcentajeImpuesto)
Proveedores(RFC, RazonSocial)
Proyectos(Numero, Denominacion)
Entregan(Clave, RFC, Numero, Fecha, Cantidad) 

--La suma de las cantidades e importe total de todas las entregas realizadas durante el 97.

SELECT SUM(Cantidad) as ‘Cantidades’, SUM(Costo) as ‘Importe’
FROM Entregan E, Materiales M
WHERE E.Clave = M.Clave
AND E.fecha >= ‘1997-01-01’
AND E.fecha <= ‘1997-12-31’

--Para cada proveedor, obtener la razón social del proveedor, número de entregas e importe total de las entregas realizadas.

SELECT RazonSocial, COUNT(Numero) as 'Entregas', SUM(Costo) as 'Importe'
FROM Proveedores P, Entregan E, Materiales M
WHERE P.RFC = E.RFC
AND E.Clave = M.Clave
GROUP BY RazonSocial

--Por cada material obtener la clave y descripción del material, la cantidad total entregada, la mínima cantidad entregada, la máxima cantidad entregada, el importe total de las entregas de aquellos materiales en los que la cantidad promedio entregada sea mayor a 400.

SELECT E.Clave, Descripcion, SUM(Cantidad) as Cantidad_Total,  MIN(Cantidad), MAX(Cantidad), SUM(Costo)
		FROM Materiales M, Entregan E
		WHERE M.Clave = E.Clave
		GROUP BY E.Clave, Descripcion
		HAVING AVG(Cantidad) > 400


--Para cada proveedor, indicar su razón social y mostrar la cantidad promedio de cada material entregado, detallando la clave y descripción del material, excluyendo aquellos proveedores para los que la cantidad promedio sea menor a 500.

		SELECT RazonSocial, E.Clave, Descripcion, AVG(Cantidad) as 'Promedio'
    		FROM Materiales M, Entregan E, Proveedores P
    		WHERE E.Clave = M.Clave
    		AND P.RFC = E.RFC
  		GROUP BY RazonSocial,E.Clave,Descripcion
    		HAVING AVG(Cantidad) < 500;

--Mostrar en una solo consulta los mismos datos que en la consulta anterior pero para dos grupos de proveedores: aquellos para los que la cantidad promedio entregada es menor a 370 y aquellos para los que la cantidad promedio entregada sea mayor a 450.

SELECT RazonSocial, AVG(Cantidad) as 'Promedio', E.Clave, Descripcion
FROM Proveedores P, Materiales M, Entregan E
WHERE E.Clave = M.Clave
AND P.RFC = E.RFC
GROUP BY E.Clave, Descripcion, RazonSocial
HAVING AVG(Cantidad) < 370 OR AVG(Cantidad) > 450

--AGREGAR cinco Materiales nuevos
	INSERT INTO Materiales VALUES (0101,Ladrillo Amarillo,100,10);
	INSERT INTO Materiales VALUES (0102,Ladrillo Cafe,100,10);
	INSERT INTO Materiales VALUES (0103,Ladrillo Negro,100,8);
	INSERT INTO Materiales VALUES (0201,Marmol Blanco,150,16);
	INSERT INTO Materiales VALUES (0202,Marmol Negro,88,8);

--Clave y descripción de los materiales que nunca han sido entregados.

	SELECT E.Clave, Descripcion
	FROM Materiales M, Entregan E
	WHERE M.Clave = E.Clave
	AND Cantidad = 0

--Razón social de los proveedores que han realizado entregas tanto al proyecto 'Vamos México' como al proyecto 'Querétaro Limpio'.
	
	SELECT RazonSocial 
	FROM Proveedores P, Entregan E 
	WHERE P.RFC = E.RFC 
AND E.Numero = (SELECT Numero FROM Proyectos Pr WHERE Pr.Denominacion = 'Vamos Mexico' OR Pr.Denominacion = 'Quérétaro Limpio')


--Descripción de los materiales que nunca han sido entregados al proyecto 'CIT Yucatán'.

	SELECT DISTINCT M.Descripcion
	FROM Materiales M, Entregan E
WHERE E.Numero NOT IN (SELECT Numero FROM Proyectos WHERE Denominacion = 'CIT Yucatan')
	AND M.Clave = E.Clave

--Razón social y promedio de cantidad entregada de los proveedores cuyo promedio de cantidad entregada es mayor al promedio de la cantidad entregada por el proveedor con el RFC 'VAGO780901'.

	SELECT P.RazonSocial, AVG(Cantidad) as 'PromEntregas'
	FROM Proveedores P, Entregan E
	WHERE P.RFC = E.RFC
 	GROUP BY P.RazonSocial
HAVING AVG(Cantidad) > (SELECT AVG(Cantidad) as 'Promedio' FROM Entregan WHERE RFC = 'VAGO780901')

--RFC, razón social de los proveedores que participaron en el proyecto 'Infonavit Durango' y cuyas cantidades totales entregadas en el 2000 fueron mayores a las cantidades totales entregadas en el 2001. 

	SELECT RazonSocial, RFC, SUM(Cantidad) as Promedio2000
	FROM Proveedores Prov, Entregan E, Proyecto Proy
	WHERE Prov.RFC = E.RFC
	AND E.Numero = Proy.Numero
	AND Proy.Denominacion = ‘Infonavit Durango’
	AND E.Fecha < ‘2000-12-31’ 
AND E.Fecha > ‘2000-01-01’
	GROUP BY RazonSocial, RFC
HAVING Promedio2000 > (	
SELECT SUM(Cantidad) as Promedio2001
		FROM Proveedores Prov, Entregan E, Proyecto Proy
		WHERE Prov.RFC = E.RFC
		AND E.Numero = Proy.Numero
	AND Proy.Denominacion = ‘Infonavit Durango’
	AND E.Fecha < ‘2001-12-31’ 
AND E.Fecha > ‘2001-01-01’
 ) 
	

SELECT RazonSocial, RFC, SUM(Cantidad) as Promedio2001
	FROM Proveedores Prov, Entregan E, Proyecto Proy
	WHERE Prov.RFC = E.RFC
	AND E.Numero = Proy.Numero
	AND Proy.Denominacion = ‘Infonavit Durango’
