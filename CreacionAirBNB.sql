rem
rem
rem Author: Angie Lorena Gonzalez Martinez
rem Created at: Aug-31-2024
rem
rem

--Crear usuario 
CREATE USER AirBNB IDENTIFIED BY abcd; 

--Privilegios
GRANT CREATE SESSION, CREATE TABLE, CREATE SEQUENCE, CREATE VIEW, CREATE  SYNONYM TO AirBNB;

-- Asigna una cuota ilimitada al usuario en el tablespace USERS
ALTER USER AirBNB QUOTA UNLIMITED ON USERS;


