from pymapd import connect
import pandas as pd
import numpy as np

con = connect(user="admin", password="HyperInteractive", host="localhost", dbname="omnisci")

query = "SELECT Invoice, SUM(Price*Quantity) as invoice_sum FROM online_retail GROUP BY Invoice ORDER BY invoice_sum DESC"
print(f"Executing {query}")

# df = pd.read_sql_query(query, con=con)  # <-un po' più veloce ma usa ipc (arrow)
df = con.select_ipc_gpu(query)  # <-analogo
# result = list(con.execute(query))  #NO IPC

print("Done")