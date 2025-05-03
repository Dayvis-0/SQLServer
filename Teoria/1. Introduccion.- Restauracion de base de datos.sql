SELECT @@VERSION AS VersionSQLServer
SELECT @@VERSION VersionSQLServer	
SELECT @@VERSION 'VersionSQLServer'
SELECT @@VERSION [VersionSQLServer]
SELECT @@VERSION 'Version SQL Server'
SELECT @@VERSION [Version SQL Server]
GO 

/*Sin WITH MOVE, SQL Server intentó usar la ruta predeterminada, pero como esa ruta no existía, no pudo restaurar. 
Al especificar una nueva ubicación válida con WITH MOVE, la restauración fue exitosa.*/
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
