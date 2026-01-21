import pandas as pd

df = pd.read_csv(r"C:\Users\Prafull Wahatule\Desktop\Customer-Churn-Analysis\1_data\processed\customer_churn_cleaned.csv")

summary = df.groupby('subscription_type').agg(
    total_customers=('customer_id', 'count'),
    churn_rate=('churn', 'mean')
)

summary['churn_rate'] = round(summary['churn_rate'] * 100, 2)

summary.to_csv("monthly_churn_report.csv")

print("Monthly churn report generated")
