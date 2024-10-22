USE tienda;
-- 1
SELECT nombre FROM producto;
-- 2
SELECT nombre, precio FROM producto;
-- 3
SELECT * FROM producto;
-- 4
SELECT nombre, precio, precio*1.09 FROM producto;
-- 5
SELECT nombre as "nom de producto", precio as euros, precio*1.09 as "dòlars" FROM producto;
-- 6
SELECT UPPER(nombre), precio FROM producto;
-- 7
SELECT LOWER(nombre), precio FROM producto;
-- 8
SELECT nombre, UPPER(substr(nombre, 1, 2)) FROM fabricante;
-- 9
SELECT nombre, ROUND(precio) FROM producto;
-- 10
SELECT nombre, FLOOR(precio) FROM producto;
-- 11
SELECT f.codigo FROM fabricante f INNER JOIN producto p ON f.codigo = p.codigo_fabricante;
-- 12
SELECT DISTINCT f.codigo FROM fabricante f INNER JOIN producto p ON f.codigo = p.codigo_fabricante;
-- 13
SELECT nombre FROM fabricante order by nombre;
-- 14
SELECT nombre FROM fabricante order by nombre DESC;
-- 15
SELECT nombre, precio FROM producto ORDER BY nombre, precio DESC;
-- 16
SELECT * FROM fabricante LIMIT 5;
-- 17
SELECT * FROM fabricante WHERE codigo > 3 LIMIT 2;
-- 18
SELECT nombre, precio FROM producto ORDER BY precio LIMIT 1;
-- 19
SELECT nombre, precio FROM producto ORDER BY precio DESC LIMIT 1;
-- 20
SELECT nombre FROM producto WHERE codigo_fabricante = 2;
-- 21
SELECT p.nombre as "producto", precio, f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
-- 22
SELECT p.nombre as "producto", precio, f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY f.nombre;
-- 23
SELECT p.codigo as "codigo producto", p.nombre as "producto", p.codigo_fabricante as "codigo fabricante", f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo;
-- 24
SELECT p.nombre as "producto", precio, f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY precio limit 1;
-- 25
SELECT p.nombre as "producto", precio, f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo ORDER BY precio desc limit 1;
-- 26
SELECT p.* FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo';
-- 27
SELECT p.* FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Crucial' and precio > 200;
-- 28
SELECT p.* FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Asus' OR f.nombre = 'Hewlett-Packard' OR f.nombre = 'Seagate';
-- 29
SELECT p.* FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre IN ('Asus', 'Hewlett-Packard', 'Seagate');
-- 30
SELECT p.nombre as "producto", precio FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre like '%e' ;
-- 31
SELECT p.nombre as "producto", precio FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre like '%w%';
-- 32
SELECT p.nombre as "producto", precio, f.nombre as "fabricante" FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE precio >= 180 ORDER BY precio desc, p.nombre;
-- 33
SELECT codigo, nombre FROM fabricante WHERE codigo IN (select codigo_fabricante FROM producto);
-- 34
SELECT * FROM fabricante f left join producto p on f.codigo = p.codigo_fabricante;
-- 35
SELECT f.* FROM fabricante f left join producto p on f.codigo = p.codigo_fabricante WHERE p.codigo_fabricante IS NULL;
-- 36
SELECT * FROM producto WHERE codigo_fabricante = (SELECT codigo FROM fabricante where nombre = 'Lenovo');
-- 37
SELECT * FROM producto where precio = (SELECT max(precio) FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE F.nombre = 'Lenovo');
-- 38
SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Lenovo' ORDER BY precio DESC LIMIT 1;
-- 39
SELECT p.nombre FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE f.nombre = 'Hewlett-Packard' ORDER BY precio LIMIT 1;
-- 40
SELECT * FROM producto where precio >= (SELECT max(precio) FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE F.nombre = 'Lenovo');
-- 41
SELECT * FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo where f.nombre = 'Asus' AND precio >= (SELECT avg(precio) FROM producto p JOIN fabricante f ON p.codigo_fabricante = f.codigo WHERE F.nombre = 'Asus');
