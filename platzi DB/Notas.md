#Roles.
-roles de inicio de sesión: asignar un pasword 
-roles de grupo: no inician sesión, cuentan con permisos y pueden agrupar mas roles dentro de un rol de grupo.
##por ejemplo:
un usuario con el rol de contabilidad tiene derecho de hacer query a todas las tablas, o un usuario con el rol de bodega solo puede hace query a la tabla de inventarios.

-CREATE ROLE contabilidad LOGIN ENCRYPTED PASSWORD 'administrador16';
-ENCRYPTED permite guardar el password de manera mas segura.
-VALID UNTIL 'infinity,una_fecha', se restringe el rol a un tiempo delimitado, o para sesiones temporales.
##comandos
-todos los comandos que inicien con "pg" son comandos de psql.

crear bases de datos con plantillas usando TEMPLATE.

esto es importante para manejar información estructurada de forma predefinida.

Esquemas.
nos sirven par organizar objetos que vamos a tener detro de nuestra bases de datos. Las tablas, roles, etc. se organizan en los esquemas.
CREATE SCHEMA nombre;

privilegios de usuario: es algo complejo pero permite darle permiso a los usuarios de si pueden o no agregar campos a una tabla, o de si pueden ver x tabla, crear roles, etc.
GRANT privilege TO role WITH GRAND OPTION 

datos seriales: es un entero autoincrementable, generalmente usado en la llave primaria como el id.


