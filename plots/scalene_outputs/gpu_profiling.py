import sys
import cudf
from time import time

scale_factor = str(sys.argv[1])

start = time()

gpu_df = cudf.read_csv("../data/raw/online_retail_II_x"+scale_factor+".csv")
gpu_df.groupby("Invoice").Price.sum()

end = time()