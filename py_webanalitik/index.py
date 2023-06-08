from flask import Flask, jsonify, request
import requests
import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
app = Flask(__name__)
# inisialisasi
top_events=[];

url = 'http://localhost:8080/API/conserts'
# print (url)
# Make a GET request to fetch the data
response = requests.get(url)
# print (response)
# Check if the request was successful (status code 200)
if response.status_code == 200:
#     # Retrieve the data from the response
    data = response.json()
    # print(data['values'])
    df = pd.DataFrame.from_dict(data['values'])

#     # Process and work with the data as needed
#     # ...
    df= df.sort_values("rate",ascending=False)
    event_ids = df['name'].unique()
    rating_ids=df['rate'].unique()
    id_map={id: i for i, id in enumerate(event_ids)}
    rating_map={id: i for i, id in enumerate(rating_ids)}
    df['event_index'] = df['name'].map(id_map)
    df['rating_index']=df['rate'].map(rating_map)
    X = df[['event_index','rating_index']].values
    y = df['rate'].values
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)
    model = tf.keras.Sequential([tf.keras.layers.Embedding(len(event_ids), 128, input_length=2),
        # tf.keras.layers.Dense(64),
        # tf.keras.layers.Dense(32),
        tf.keras.layers.Dense(32, activation='relu'),
        tf.keras.layers.Dense(100, activation='relu'),
        tf.keras.layers.Dense(10),
        tf.keras.layers.Flatten(),
        tf.keras.layers.Dense(len(event_ids),activation='relu')

    ])
# model.evaluate(x_test, y_test)
    model.compile(loss='mean_squared_error', optimizer=tf.keras.optimizers.Adam(learning_rate=0.1), metrics=["mse"])
    # predictions = model.predict(x_test)
    model.fit(X_train, y_train, epochs=100, batch_size=32, verbose=1)
    predictions = model.predict(X_test)
    sorted_indices = predictions.argsort(axis=0)[::-1].flatten()
    count_dict = {}
    for num in sorted_indices:
        if num in count_dict:
         count_dict[num] += 1
        else:
         count_dict[num] = 1
    for num, count in count_dict.items():
        event=df.iloc[num,1]
        rating=df.iloc[num,14]
        # print("Angka", num, "muncul sebanyak", count, "kali.",",Event: ",event,",Ratingt: ",rating)
    top_event = event_ids[sorted_indices]
    top_events = list(dict.fromkeys(top_event))
    # print(top_events)
#     # Example: Print the retrieved data
    # print(df)
else:
    # Request was not successful, handle the error
    print("Error: Failed to retrieve data from the API")
# GET /books - Get all books
@app.route('/topEvents', methods=['GET'])
def get_topevents():
    return jsonify(top_events)
if __name__ == '__main__':
    app.run(debug=True)
