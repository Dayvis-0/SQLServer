SELECT @@VERSION AS VersionSQLServer
SELECT @@VERSION VersionSQLServer	
SELECT @@VERSION 'VersionSQLServer'
SELECT @@VERSION [VersionSQLServer]
SELECT @@VERSION 'Version SQL Server'
SELECT @@VERSION [Version SQL Server]
GO 

/*Sin WITH MOVE, SQL Server intent� usar la ruta predeterminada, pero como esa ruta no exist�a, no pudo restaurar. 
Al especificar una nueva ubicaci�n v�lida con WITH MOVE, la restauraci�n fue exitosa.*/
RESTORE DATABASE AdventureWorks2022
FROM DISK = N'D:\SQL2022\Base de datos\AdventureWorks2022.bak'
WITH 
    MOVE 'AdventureWorks2022' TO 'D:\SQL2022\Base de datos\AdventureWorks2022.mdf',
    MOVE 'AdventureWorks2022_log' TO 'D:\SQL2022\Base de datos\AdventureWorks2022_log.ldf',
    FILE = 1,
    NOUNLOAD,
    REPLACE;
GO

USE MASTER
GO
