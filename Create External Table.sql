CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Pranay6.'

CREATE DATABASE SCOPED CREDENTIAL cred_aproject WITH IDENTITY = 'Managed Identity'

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://aprojectstoragedatalake.blob.core.windows.net/aproject-silver',
    CREDENTIAL = cred_aproject

)

CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://aprojectstoragedatalake.blob.core.windows.net/aproject-gold',
    CREDENTIAL = cred_aproject

)

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)

--------------------------------------
------ CREATE EXTERNAL TABLE EXTSALES
--------------------------------------

CREATE EXTERNAL TABLE gold.extsales
WITH
(
    LOCATION = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * FROM gold.sales



select * from gold.extsales