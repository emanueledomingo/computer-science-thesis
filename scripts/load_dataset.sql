CREATE TABLE IF NOT EXISTS online_retail (  
    Invoice      TEXT, 
    StockCode    TEXT, 
    Description  TEXT, 
    Quantity     BIGINT, 
    InvoiceDate  TEXT, 
    Price        DOUBLE, 
    CustomerID  TEXT, 
    Country      TEXT 
);

COPY online_retail FROM '/data/raw/online_retail_II_x20.csv';