import pandas as pd
import matplotlib.pyplot as plt
df = pd.read_csv("train 1.csv")
df["Order Date"] = pd.to_datetime(
    df["Order Date"],
    format="mixed",
    dayfirst=True
)
monthly_sales = df.groupby(df["Order Date"].dt.month)["Sales"].sum()
print(monthly_sales)
monthly_sales.plot(
    kind="line",
    marker="o"
)
plt.title("Monthly Sales Trend")
plt.xlabel("Month")
plt.ylabel("Sales")
plt.grid(True)
plt.show()