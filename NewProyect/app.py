from flask import Flask
from flask.globals import request
from flask.json import jsonify
from flask_cors import CORS, cross_origin

app = Flask(__name__)
cors = CORS(app)
app.config['CORS_HEADERS'] = 'Content-Type'
app.config['CORS_HEADERS'] = 'Content-Type'
from users import users
from doctores import doctores

@cross_origin()

@app.route('/test')
def test():
    return jsonify({'response': 'exito'})
     
     
@app.route('/users')
def getUsers():
    return jsonify(users)

@app.route('/users/<string:Correo>')
def getUser(Correo):
    retorno = [user for user in users if user['Correo']== Correo]
    return jsonify(retorno)

@app.route('/clave/<string:contrasenia>')
def getContrasenia(contrasenia):
    retorno = [user for user in users if user['contrasenia']== contrasenia]
    return jsonify(retorno)

@app.route('/doctores', methods=['POST'])
def addDoctor():
    newDoctor = {
         'idDoctor': request.json['idDoctor'], 
         'Nombre': request.json['Nombre'], 
         'contacto': request.json['contacto'],
         'Especialidad': request.json['Especialidad']
    }
    doctores.append(newDoctor)
    return jsonify(doctores)

if __name__ == '__main__':
    app.run(debug=True, port=5000)
