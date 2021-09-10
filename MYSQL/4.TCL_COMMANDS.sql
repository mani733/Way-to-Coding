/* 
 * Transaction Control Language
 * COMMIT
 * ROLLBACK
 * SAVEPOINT
 */
 
 DROP DATABASE IF EXISTS testing ;
 CREATE DATABASE testing;
 USE testing;
 CREATE TABLE IF NOT EXISTS testTable(ID INT PRIMARY KEY,DataValue VARCHAR(30));
 
 
 
 INSERT INTO testTable VALUES(2,"ABC");
 COMMIT;
 UPDATE testTable SET ID=11 WHERE ID=2;
 
 START TRANSACTION;
 SAVEPOINT A;
 INSERT INTO testTable VALUES(4,"ABCDE");
 
 SELECT * FROM testTable;
 
 ROLLBACK TO A;
 SELECT * FROM testTable;