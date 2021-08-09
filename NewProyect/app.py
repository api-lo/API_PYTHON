from flask import Flask
from flask.globals import request
from flask.json import jsonify
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['CORS_HEADERS'] = 'Content-Type'
from users import users

@cross_origin()

@app.route('/test')
def test():
    return jsonify({'response': 'exito'})
     
     
@app.route('/users')
def getUsers():
    return jsonify(users)

@app.route('/users/<string:idUsuario>')
def getUser(idUsuario):
    retorno = [user for user in users if user['idUsuario']== idUsuario]
    return jsonify(retorno)

@app.route('/users', methods=['POST'])
def addUser():
    newUser = {
         'idUsuario': request.json['idUsuario'], 
         'Nombre': request.json['Nombre'], 
         'Genero': request.json['Genero'],
         'Telefono': request.json['Telefono'],
         'contrasenia': request.json['contrasenia'],
         'Correo': request.json['Correo'],
    }
    users.append(newUser)
    return jsonify(users)

if __name__ == '__main__':
    app.run(debug=True, port=5000)