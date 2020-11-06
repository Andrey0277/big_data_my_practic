CREATE DATABASE SCOPED credential conected_my WITH 
IDENTITY ='bigdatatest2',
Secret=''


CREATE EXTERNAL Data source my_azur with( 
LOCATION = 'wasbs://ivanenko@bigdatatest2.blob.core.windows.net/',
credential = conected_my,
type = hadoop );