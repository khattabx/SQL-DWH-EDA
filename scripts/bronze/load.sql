-- Active: 1783948575995@@127.0.0.1@1444@DataWarehouse
TRUNCATE TABLE bronze.crm_cust_info;

BULK INSERT bronze.crm_cust_info
FROM '/var/opt/mssql/datasets/source_crm/cust_info.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.crm_cust_info;
--------------------------------------------------------
TRUNCATE TABLE bronze.crm_prd_info;

BULK INSERT bronze.crm_prd_info
FROM '/var/opt/mssql/datasets/source_crm/prd_info.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.crm_prd_info;
--------------------------------------------------------
-- bronze.crm_sales_details
TRUNCATE TABLE bronze.crm_sales_details;

BULK INSERT bronze.crm_sales_details
FROM '/var/opt/mssql/datasets/source_crm/sales_details.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.crm_sales_details;
--------------------------------------------------------
-- bronze.erp_loc_a101
TRUNCATE TABLE bronze.erp_loc_a101;

BULK INSERT bronze.erp_loc_a101
FROM '/var/opt/mssql/datasets/source_erp/LOC_A101.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.erp_loc_a101;
--------------------------------------------------------
-- bronze.erp_cust_az12
TRUNCATE TABLE bronze.erp_cust_az12;

BULK INSERT bronze.erp_cust_az12
FROM '/var/opt/mssql/datasets/source_erp/CUST_AZ12.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.erp_cust_az12;
--------------------------------------------------------
-- bronze.erp_px_cat_g1v2
TRUNCATE TABLE bronze.erp_px_cat_g1v2;

BULK INSERT bronze.erp_px_cat_g1v2
FROM '/var/opt/mssql/datasets/source_erp/PX_CAT_G1V2.csv'
WITH (
        FIRSTROW = 2,
        FIELDTERMINATOR = ',',
        ROWTERMINATOR = '0x0a',
        TABLOCK
    );

SELECT COUNT(*) FROM bronze.erp_px_cat_g1v2;