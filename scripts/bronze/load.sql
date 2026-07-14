-- Active: 1783948575995@@127.0.0.1@1444@DataWarehouse
BULK INSERT bronze.crm_cust_info
FROM '/var/opt/mssql/datasets/source_crm/cust_info.csv'
WITH (
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);

SELECT * FROM bronze.crm_cust_info