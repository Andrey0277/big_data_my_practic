CREATE SCHEMA ivanenko_shema; 
GO

CREATE LOGIN  ivanenko WITH PASSWORD = '';
create user ivanenko_u  for login ivanenko with default_schema = [ivanenko_shema]


EXEC sp_addrolemember 'db_owner', 'ivanenko_u';