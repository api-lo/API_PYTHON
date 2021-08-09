<%-- 
    Document   : principal
    Created on : 08-ago-2021, 3:25:24
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <title>Principal</title>
    </head>
    <body class="container">
        
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Consultas Onlinea-Administrador</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link active" href="#">Doctores</a>
                    <a class="nav-item nav-link" href="#">Citas medicas</a>
                    <a class="nav-item nav-link" href="#">Usuarios</a>
                    <a class="nav-item nav-link disabled" href="#">Consultas</a>
                </div>
            </div>            
        </nav>
        
        <div class="row" style="margin-top: 10px">
            <div class="col-12">
                <div class="row">
                    <div class="col-4" style="padding: 20px">
                        <form>
                            <div class="form-group">
                                <label for="exampleFormControlInput1">Nombre y apellido</label>
                                <input type="text" class="form-control" id="exampleFormControlInput1" placeholder="Nombre y apellido">
                            </div>                         
                            <div class="form-group">
                                <label for="exampleFormControlSelect2">Especialidad del doctor</label>
                                <select  class="form-control" id="exampleFormControlSelect2">
                                    <option>Familiar</option>
                                    <option>Otorrinolaringolo</option>
                                    <option>Cirujano</option>
                                    <option>Anestesiología</option>
                                    <option>Pediátrica</option>
                                    <option>Intensivos Pediátricos</option>
                                    <option>Imagenología</option>
                                    <option>Ortopedia y Traumatología</option>
                                    <option>Ortopedia y Traumatología</option>
                                    <option>Médica en Neonatología</option>
                                    <option>Neurocirugía</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label for="oferta">Oferta</label>
                                <textarea name="oferta" class="form-control" id="oferta" rows="5"></textarea>
                            </div>
                            <div class="form-group">
                                <label for="contactos">Contactos</label>
                                <textarea name="contactos" class="form-control" id="contactos" rows="5"></textarea>
                            </div>
                        </form>
                    </div>
                    <div class="col-8">                      
               
                        <div class="row">
                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Nombres y apellidos</th>
                                        <th scope="col">Espicialidad del docto</th>
                                        <th scope="col">Oferta</th>
                                        <th scope="col">Contacto</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">1</th>
                                        <td>Mark</td>
                                        <td>Otto</td>
                                        <td>@mdo</td>
                                    </tr>
                                </tbody>
                            </table>                
                        </div>                      
                    </div>
                </div>
            </div>

        </div>
    </body>
    <script src="jquery.js" type="text/javascript"></script>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
</html>
