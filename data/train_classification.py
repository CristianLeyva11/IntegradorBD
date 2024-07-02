import pandas as pd
from sklearn.ensemble import RandomForestClassifier
import pickle

data = pd.read_csv('data/processed_data.csv')

X = data[['precio', 'stock']] 
y = data['categoria'] 

X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

classification_model = RandomForestClassifier()
classification_model.fit(X_train, y_train)

with open('models/classification_model.pkl', 'wb') as file:
    pickle.dump(classification_model, file)
