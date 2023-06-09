import os
from flask import Flask, jsonify, request,render_template
import requests
import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
import matplotlib.pyplot as plt
app = Flask(__name__)
import os

current_directory = os.getcwd()
print("Current project directory:", current_directory)

@app.route('/topEvents', methods=['GET'])
def get_topevents():
    # inisialisasi
    top_events=[];

    url = 'http://localhost:8080/API/conserts'
    response = requests.get(url)
    if response.status_code == 200:
        data = response.json()
        df = pd.DataFrame.from_dict(data['values'])
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
            tf.keras.layers.Dense(32, activation='relu'),
            tf.keras.layers.Dense(100, activation='relu'),
            tf.keras.layers.Dense(10),
            tf.keras.layers.Flatten(),
            tf.keras.layers.Dense(len(event_ids),activation='relu')

        ])
        model.compile(loss='mean_squared_error', optimizer=tf.keras.optimizers.Adam(learning_rate=0.1), metrics=["mse"])
        model.fit(X_train, y_train, epochs=100, batch_size=32, verbose=1)
        predictions = model.predict(X_test)
        sorted_indices = predictions.argsort(axis=0)[::-1].flatten()
        count_dict = {}
        for num in sorted_indices:
            if num in count_dict:
                count_dict[num] += 1
            else:
                count_dict[num] = 1
        top_event = event_ids[sorted_indices]
        top_events = list(dict.fromkeys(top_event))
    else:
        print("Error: Failed to retrieve data from the API")
    return jsonify(top_events[:5])
@app.route('/vip', methods=['GET'])
def get_vip():

    url = 'http://localhost:8080/API/tickets/VIP'
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()
        df = pd.DataFrame.from_dict(data['values'])
        i = int(request.args.get('i'))
        event_names = []    
        std = df.iloc[i]['quantity']
        sisa_std = df.iloc[i]['availableQuantity']
        print(std-sisa_std)
        total_jual=std - sisa_std
        event_names=df.iloc[i]['event_name']
        labels = ['Tiket VIP yang tersedia', 'Total Jual']

        plt.figure()
        plt.pie([std, total_jual], labels=labels, autopct='%1.1f%%')
        plt.title(f'Comparison for {event_names}')

        current_dir = os.getcwd()
        if not os.path.exists('static'):
            os.makedirs('static')
        plot_path = os.path.join(current_dir,"static", f'vip{i}.png')
        plt.savefig(plot_path)
        return render_template('vip.html', plot_path=""f'static/vip{i}.png')

    else:
        print("Error: Failed to retrieve data from the API")
        return jsonify([])

@app.route('/standard', methods=['GET'])
def get_standard():

    url = 'http://localhost:8080/API/tickets/Standard'
    response = requests.get(url)

    if response.status_code == 200:
        data = response.json()
        df = pd.DataFrame.from_dict(data['values'])
        i = int(request.args.get('i')) #code id   
        std = df.iloc[i]['quantity']
        sisa_std = df.iloc[i]['availableQuantity']
        print(std-sisa_std)
        total_jual=std - sisa_std
        event_names=df.iloc[i]['event_name']
        labels = ['Tiket Standard yang tersedia', 'Total Jual']
        plt.figure()
        plt.pie([std, total_jual], labels=labels, autopct='%1.1f%%')
        plt.title(f'Comparison for {event_names}')
        current_dir = os.getcwd()
        if not os.path.exists('static'):
            os.makedirs('static')
        plot_path = os.path.join(current_dir,"static", f'standard{i}.png')
        plt.savefig(plot_path)

        return render_template('vip.html', plot_path=""f'static/standard{i}.png')

    else:
        print("Error: Failed to retrieve data from the API")
        return jsonify([])

if __name__ == '__main__':
    app.run(debug=True)
