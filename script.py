import os

from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    app_name = os.environ.get("APP_NAME", "My App")
    return f"<h1>Hello from {app_name}!<h1>"


if __name__ == "__main__":
    hport = int(os.environ.get('PORT', 17995))
    app.run(debug=True, port={hport})
