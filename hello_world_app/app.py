from flask import Flask
import os
import socket
from time import sleep

app = Flask(__name__)

@app.route("/")
def hello():
    html = """Hello {name}!
    Hostname: {hostname}"""

    # simulate cpu load
    sleep(0.1)
    return html.format(name=os.getenv("NAME", "world"), hostname=socket.gethostname())

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=80)
