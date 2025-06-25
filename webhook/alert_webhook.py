from flask import Flask, request
import os

app = Flask(__name__)

@app.route('/', methods=['POST'])
def webhook():
    # Call Ansible playbook to recover the microservice
    os.system('ansible-playbook /ansible/selfheal.yml')
    return '', 200

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5001)
