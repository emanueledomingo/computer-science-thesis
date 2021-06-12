CREATE TABLE IF NOT EXISTS online_retail (  
    Invoice      TEXT, 
    StockCode    TEXT, 
    Description  TEXT, 
    Quantity     BIGINT, 
    InvoiceDate  TEXT, 
    Price        DOUBLE, 
    CustomerID  DOUBLE, 
    Country      TEXT 
);

COPY online_retail FROM '/data/raw/online_retail_II_x1.csv';

CREATE TABLE IF NOT EXISTS stock_codes (  
    StockCode    TEXT, 
    Price        DOUBLE
);

COPY stock_codes FROM '/data/raw/online_retail_II_indexes.csv';