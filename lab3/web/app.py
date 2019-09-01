"""
flask 網頁測試
"""

from flask import Flask, request, abort
app = Flask(__name__)

@app.route('/',methods=['GET'])
def hello_world():
    return '程式碼打包成功'

if __name__ == "__main__":
    app.run(host='0.0.0.0',port=5000)
