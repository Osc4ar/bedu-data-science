# Reto 1
# ¿Qué artículos incluyen la palabra Pasta en su nombre?
SELECT * FROM articulo where nombre LIKE '%Pasta%';
# ¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT * FROM articulo where nombre LIKE '%Canelloni%';
# ¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT * FROM articulo where nombre LIKE '%-%';
# ¿Qué puestos incluyen la palabra Designer?
SELECT * FROM puesto WHERE nombre LIKE '%Designer%';
# ¿Qué puestos incluyen la palabra Developer?
SELECT * FROM puesto WHERE nombre LIKE '%Developer%';

# Reto 2
# ¿Cuál es el promedio de salario de los puestos?
SELECT ROUND(AVG(salario), 2) AS "Salario Promedio" FROM puesto;
# ¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT COUNT(*) AS "Pasta" FROM articulo WHERE nombre LIKE "%Pasta%";
# ¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) AS 'Salario Minimo', MAX(salario) AS 'Salario Maximo' FROM puesto;
# ¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT SUM(salario) AS 'Suma ultimos 5 salarios' FROM puesto WHERE id_puesto > 995;

# Reto 3
# ¿Cuántos registros hay por cada uno de los puestos?
SELECT nombre, COUNT(*) AS 'Total' FROM puesto GROUP BY nombre;
# ¿Cuánto dinero se paga en total por puesto?
SELECT nombre, SUM(salario) AS 'Total Sueldos' FROM puesto GROUP BY nombre;
# ¿Cuál es el número total de ventas por vendedor?
SELECT id_empleado, COUNT(*) AS 'Ventas' FROM venta GROUP BY id_empleado;
# ¿Cuál es el número total de ventas por artículo?
SELECT id_articulo, COUNT(*) AS 'Ventas' FROM venta GROUP BY id_articulo;