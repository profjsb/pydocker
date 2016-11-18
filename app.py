from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "Running python/flask inside Docker. W00t!"


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
