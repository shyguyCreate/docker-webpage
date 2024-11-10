from flask import Flask, render_template
from waitress import serve

app = Flask(__name__)


@app.route("/")
def index():
    return render_template("index.html")


# Run app
if __name__ == "__main__":
    serve(app, port="8080")
