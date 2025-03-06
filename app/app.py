from flask import Flask

app = Flask(__name__)

@app.route("/")
def welcome():
    print('Root route requested!')
    return "Welcome",200

@app.route("/health")
def health():
    print('Health route requested!')
    return { "health":True }, 200

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port=5001)