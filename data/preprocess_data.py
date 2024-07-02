import pandas as pd
from sklearn.model_selection import train_test_split

data = pd.read_csv('data/raw_data.csv')

data['precio'] = data['precio'].fillna(data['precio'].mean())
data['stock'] = data['stock'].fillna(0)

data.to_csv('data/processed_data.csv', index=False)
