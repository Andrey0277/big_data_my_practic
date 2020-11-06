CREATE TABLE ivanenko_shema.fact_tripdata   WITH (
    DISTRIBUTION = HASH (DOLocationID)
)
AS
    select * from ivanenko_shema.table_extern

