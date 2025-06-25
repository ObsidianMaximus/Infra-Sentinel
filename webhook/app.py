from flask import Flask, request
import subprocess

app = Flask(__name__)

@app.route('/', methods=['POST'])
def webhook():
    # You can add logic here to parse the alert payload and only act on firing/resolved as needed
    subprocess.run(["ansible-playbook", "selfheal.yml"])
    return '', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
