USE universidad;

-- 1
SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' ORDER BY apellido1, apellido2, nombre;
-- 2
SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' AND telefono IS NULL;
-- 3
SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
-- 4
SELECT apellido1, apellido2, nombre FROM persona WHERE tipo = 'profesor' AND telefono IS NULL AND nif LIKE '%K';
-- 5
SELECT * FROM asignatura WHERE cuatrimestre = 1 AND curso = 3 AND id_grado = 7;
-- 6
SELECT apellido1, apellido2, p.nombre, d.nombre FROM persona p JOIN profesor pr on p.id = pr.id_profesor JOIN departamento d on pr.id_departamento = d.id ORDER BY apellido1, apellido2, p.nombre;
-- 7
SELECT a.nombre, ce.anyo_inicio, ce.anyo_fin FROM alumno_se_matricula_asignatura m JOIN persona p on m.id_alumno = p.id JOIN asignatura a ON m.id_asignatura = a.id join curso_escolar ce on m.id_curso_escolar = ce.id WHERE p.nif = '26902806M';
-- 8
SELECT DISTINCT d.nombre FROM asignatura a join grado g on a.id_grado = g.id JOIN profesor pr on pr.id_profesor = a.id_profesor JOIN departamento d ON pr.id_departamento = d.id WHERE g.nombre = 'Grado en Ingeniería Informática (Plan 2015)';
-- 9
SELECT DISTINCT p.* FROM alumno_se_matricula_asignatura m JOIN persona p ON m.id_alumno = p.id JOIN curso_escolar ce ON m.id_curso_escolar = ce.id WHERE ce.anyo_inicio = 2018 AND ce.anyo_fin = 2019;

-- consultes utilitzant les clàusules LEFT JOIN i RIGHT JOIN
-- 1
SELECT p.nombre, p.apellido1, p.apellido2, d.nombre FROM persona p JOIN profesor pr ON pr.id_profesor = p.id LEFT JOIN departamento d ON pr.id_departamento = d.id;
-- 2
SELECT p.nombre, p.apellido1, p.apellido2 FROM persona p JOIN profesor pr ON pr.id_profesor = p.id WHERE pr.id_departamento IS NULL;
-- 3
SELECT d.nombre FROM profesor pr RIGHT JOIN departamento d on pr.id_departamento = d.id WHERE pr.id_profesor is null;
-- 4
SELECT p.nombre, p.apellido1, p.apellido2 FROM persona p Join profesor pr on pr.id_profesor = p.id LEFT JOIN asignatura a on pr.id_profesor = a.id_profesor WHERE a.id_profesor is null;
-- 5
SELECT nombre FROM asignatura a LEFT JOIN profesor pr ON a.id_profesor = pr.id_profesor where pr.id_profesor IS NULL;
-- 6
SELECT DISTINCT d.nombre FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor LEFT JOIN alumno_se_matricula_asignatura m ON a.id = m.id_asignatura WHERE m.id_asignatura IS NULL;

-- Consultes resum
-- 1
SELECT COUNT(*) AS TotalAlumnes FROM persona WHERE tipo = 'alumno';
-- 2
SELECT COUNT(*) AS TotalAlumnes FROM persona WHERE tipo = 'alumno' AND YEAR(fecha_nacimiento) = 1999;
-- 3
SELECT d.nombre, COUNT(pr.id_profesor) AS TotalProfessors FROM profesor pr JOIN departamento d ON pr.id_departamento = d.id GROUP BY d.nombre ORDER BY COUNT(*) DESC;
-- 4
SELECT d.nombre, COUNT(pr.id_profesor) AS TotalProfessors FROM departamento d LEFT JOIN profesor pr ON d.id = pr.id_departamento GROUP BY d.nombre ORDER BY COUNT(*) DESC;
-- 5
SELECT g.nombre, COUNT(a.id) AS "Total assignatures" FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre ORDER BY COUNT(a.id) DESC;
-- 6
SELECT g.nombre, COUNT(a.id) AS "Total assignatures" FROM grado g LEFT JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre HAVING COUNT(a.id) > 40 ORDER BY COUNT(a.id) DESC;
-- 7
SELECT g.nombre AS "Nom del grau", a.tipo AS "Tipo assignatura", SUM(a.creditos) AS "Total nombre crèdits" FROM grado g JOIN asignatura a ON g.id = a.id_grado GROUP BY g.nombre, a.tipo;
-- 8
SELECT ce.anyo_inicio As "Any inici curs", COUNT(DISTINCT m.id_alumno) AS "Total alumnes matriculats" FROM alumno_se_matricula_asignatura m JOIN curso_escolar ce ON m.id_curso_escolar = ce.id GROUP BY ce.anyo_inicio;
-- 9
SELECT p.id, p.nombre, p.apellido1, p.apellido2, COUNT(a.id) AS "Total assignatures" FROM persona p JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor GROUP BY p.id, p.nombre, p.apellido1, p.apellido2 ORDER BY COUNT(a.id) DESC;
-- 10
SELECT * FROM persona WHERE tipo = 'alumno' AND fecha_nacimiento = (SELECT MAX(fecha_nacimiento) FROM persona WHERE tipo = 'alumno');
-- 11
SELECT p.id, p.nombre, p.apellido1, p.apellido2 FROM persona p JOIN profesor pr ON p.id = pr.id_profesor LEFT JOIN asignatura a ON pr.id_profesor = a.id_profesor WHERE pr.id_departamento IS NOT NULL AND a.id IS NULL;