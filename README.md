# mysql-estructura
Tasca S2.02. Consultes MySQL

La tasca consta de vàries consultes SQL a construir i executar en MySql Workbench, a partir de dos scripts .sql de creació i càrrega de base de dades disponibles amb l'enunciat.
1a base de dades: Tienda
2a base de dades: Universitat

En la base de dades Tienda, les consultes realitzades son:
1 Llista el nom de tots els productes que hi ha en la taula producto.
2 Llista els noms i els preus de tots els productes de la taula producto.
3 Llista totes les columnes de la taula producto.
4 Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD).
5 Llista el nom dels productes, el preu en euros i el preu en dòlars estatunidencs (USD). Utilitza els següents àlies per a les columnes: nom de producto, euros, dòlars.
6 Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a majúscula.
7 Llista els noms i els preus de tots els productes de la taula producto, convertint els noms a minúscula.
8 Llista el nom de tots els fabricants en una columna, i en una altra columna obtingui en majúscules els dos primers caràcters del nom del fabricant.
9 Llista els noms i els preus de tots els productes de la taula producto, arrodonint el valor del preu.
10 Llista els noms i els preus de tots els productes de la taula producto, truncant el valor del preu per a mostrar-lo sense cap xifra decimal.
11 Llista el codi dels fabricants que tenen productes en la taula producto.
12 Llista el codi dels fabricants que tenen productes en la taula producto, eliminant els codis que apareixen repetits.
13 Llista els noms dels fabricants ordenats de manera ascendent.
14 Llista els noms dels fabricants ordenats de manera descendent.
15 Llista els noms dels productes ordenats, en primer lloc, pel nom de manera ascendent i, en segon lloc, pel preu de manera descendent.
16 Retorna una llista amb les 5 primeres files de la taula fabricante.
17 Retorna una llista amb 2 files a partir de la quarta fila de la taula fabricante. La quarta fila també s'ha d'incloure en la resposta.
18 Llista el nom i el preu del producte més barat. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MIN(preu), necessitaria GROUP BY.
19 Llista el nom i el preu del producte més car. (Utilitza solament les clàusules ORDER BY i LIMIT). NOTA: Aquí no podria usar MAX(preu), necessitaria GROUP BY.
20 Llista el nom de tots els productes del fabricant el codi de fabricant del qual és igual a 2.
21 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades.
22 Retorna una llista amb el nom del producte, preu i nom de fabricant de tots els productes de la base de dades. Ordena el resultat pel nom del fabricant, per ordre alfabètic.
23 Retorna una llista amb el codi del producte, nom del producte, codi del fabricador i nom del fabricador, de tots els productes de la base de dades.
24 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més barat.
25 Retorna el nom del producte, el seu preu i el nom del seu fabricant, del producte més car.
26 Retorna una llista de tots els productes del fabricant Lenovo.
27 Retorna una llista de tots els productes del fabricant Crucial que tinguin un preu major que 200 €.
28 Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Sense utilitzar l'operador IN.
29 Retorna un llistat amb tots els productes dels fabricants Asus, Hewlett-Packardy Seagate. Fent servir l'operador IN.
30 Retorna un llistat amb el nom i el preu de tots els productes dels fabricants el nom dels quals acabi per la vocal e.
31 Retorna un llistat amb el nom i el preu de tots els productes el nom de fabricant dels quals contingui el caràcter w en el seu nom.
32 Retorna un llistat amb el nom de producte, preu i nom de fabricant, de tots els productes que tinguin un preu major o igual a 180 €. Ordena el resultat, en primer lloc, pel preu (en ordre descendent) i, en segon lloc, pel nom (en ordre ascendent).
33 Retorna un llistat amb el codi i el nom de fabricant, solament d'aquells fabricants que tenen productes associats en la base de dades.
34 Retorna un llistat de tots els fabricants que existeixen en la base de dades, juntament amb els productes que té cadascun d'ells. El llistat haurà de mostrar també aquells fabricants que no tenen productes associats.
35 Retorna un llistat on només apareguin aquells fabricants que no tenen cap producte associat.
36 Retorna tots els productes del fabricador Lenovo. (Sense utilitzar INNER JOIN).
37 Retorna totes les dades dels productes que tenen el mateix preu que el producte més car del fabricant Lenovo. (Sense usar INNER JOIN).
38 Llista el nom del producte més car del fabricant Lenovo.
39 Llista el nom del producte més barat del fabricant Hewlett-Packard.
40 Retorna tots els productes de la base de dades que tenen un preu major o igual al producte més car del fabricant Lenovo.
41 Llesta tots els productes del fabricant Asus que tenen un preu superior al preu mitjà de tots els seus productes.
---------------------------------------------------------------------
Requisits tècnics

Per a elaborar i executar aquestes consultes, s'ha fet servir el MySql Workbench versió 8.0.38 Community. Es pot descarregar des del vincle https://dev.mysql.com/downloads/installer/, seleccionant sistema operatiu i versió.

Instal·lació: 
1. Clonar el repositorio de Github
git clone https://github.com/g-lemoing/S2.02.-MySQL-queries.git
2. Abrir el MySql WorkBench y crear desde cero la base de datos:
- En la instancia local, ir a File > Open SQL Script..., y abrir el script schema_tienda.sql
- Ejecutar el script con Query > Execute
- Abrir de la misma manera el script queries_tienda.sql, y ejecutarlo para comprobar las consultas

Repetir esos pasos para la base de datos Universitat, abriendo y ejecutando primero el script schema_universidad.sql y luego queries_universidad.sql

Contribuciones:
1. Crear un fork del repositorio: 
2. Clonar el repositorio hacia el directorio local marcado por git bash
 git clone https://github.com/YOUR-USERNAME/S2.02.-MySQL-queries.git
3. Crear una rama
git branch BRANCH-NAME
git checkout BRANCH-NAME
4. Realizar cambios o comentarios, y hacer un commit: git commit -m 'mensaje cambios'
5. Subir cambios a tu nueva rama: git push origin BRANCH-NAME
6. Hacer un pull request