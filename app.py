import datetime

from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return f"[{datetime.datetime.utcnow()} UTC] Running python/flask inside Docker. 🙌"


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
