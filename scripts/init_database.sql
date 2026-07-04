/* --------------------------------------------------
CREATE DATABASE AND SCHEMA
PURPOSE:
the script creates a new database named DataWarehouse' after checking if if already exists. 
If the database exists, it is dropped and recreated . The scripts also sets up three schemas 
(BRONZE,SILVER,GOLD)
*/
USE master;
GO
-- Drop and recreate the DataWarehouse database
IF EXISTS(SELECT 1 FROM sys.databases WHERE name='DataWarehouse') 
BEGIN 
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABASE DataWarehouse;
END;
GO
-- CREATE THE DATABASE
CREATE DATABASE DataWarehouse;
GO
USE DataWarehouse;
GO
-- CREATE SCHEMAS
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO 
CREATE SCHEMA gold;
GO
