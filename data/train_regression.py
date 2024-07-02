import pandas as pd
from sklearn.linear_model import LinearRegression
import pickle

data = pd.read_csv('data/processed_data.csv')

X = data[['precio', 'stock']] 
y = data['total_ventas'] 

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

regression_model = LinearRegression()
regression_model.fit(X_train, y_train)

with open('models/regression_model.pkl', 'wb') as file:
    pickle.dump(regression_model, file)
