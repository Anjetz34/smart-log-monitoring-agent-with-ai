from sklearn.ensemble import IsolationForest
import pandas as pd

# Example dummy log data
data = pd.DataFrame({'response_time': [100, 102, 99, 250, 101, 98, 600]})

# Anomaly Detection Model
model = IsolationForest(contamination=0.1, random_state=42)
data['anomaly'] = model.fit_predict(data[['response_time']])

print("Anomaly Detection Results:")
print(data)
