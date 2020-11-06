CREATE EXTERNAL FILE FORMAT ivanenko_scv
WITH (FORMAT_TYPE = DELIMITEDTEXT,
      FORMAT_OPTIONS(
          FIELD_TERMINATOR = ',',
          STRING_DELIMITER = '"',
          FIRST_ROW = 2, 
          USE_TYPE_DEFAULT = True)
)



CREATE EXTERNAL TABLE  ivanenko_shema.table_extern (
  VendorID                INT    ,
  tpep_pickup_datetime  DATETIME     NOT NULL ,
  tpep_dropoff_datetime   DATETIME     NOT NULL ,
  passenger_count         INT  ,
  trip_distance           FLOAT  ,
  RatecodeID              INT  ,
  store_and_fwd_flag      VARCHAR (2) ,  
  PULocationID            INT   ,
  DOLocationID            INT   ,
  payment_type            INT   ,
  fare_amount             FLOAT  ,
  extra                   FLOAT  ,
  mta_tax                 FLOAT  ,
  tip_amount              FLOAT ,
  tolls_amount            FLOAT ,
  improvement_surcharge   FLOAT ,
  total_amount            FLOAT ,
  congestion_surcharge    FLOAT        
) WITH (
    LOCATION='yellow_tripdata_2020-01.csv',
    DATA_SOURCE =  my_azur,
    FILE_FORMAT = ivanenko_scv
);

