<%-- 
    Document   : nuevoProducto
    Created on : 24-abr-2017, 11:07:00
    Author     : daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.css"  media="screen,projection"/>

        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
    </head>

    <body>

        <nav>
            <div class="nav-wrapper cyan accent-4">

                <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#" class="waves-effect waves-light">Ayuda</a></li>
                    <li><a href="#" class="waves-effect waves-light">Salir</a></li>

                </ul>
                <ul class="side-nav fixed" id="mobile-demo">

                    <li><div class="userView">
                            <div class="background">
                                <img src="images/electro3..jpg" class="responsive-img">
                            </div>
                            <a href="index.html"><img class="circle large" src="images/logo.png"></a>
                            <a href="index.html"><span class="white-text name">Elactro y CIA Ltda.</span></a>
                            <a href="index.html"><span class="white-text email">info@electro.cl</span></a>
                        </div>
                    </li>

                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li>
                                <a class="collapsible-header waves-effect waves-yellow active">Productos<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="nuevoProducto.jsp" class="waves-effect waves-yellow">Nuevo Producto</a></li>
                                        <li><a href="listarProductos.jsp" class="waves-effect waves-yellow">Listar Productos</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>

                    <li class="no-padding">
                        <ul class="collapsible collapsible-accordion">
                            <li>
                                <a class="collapsible-header waves-effect waves-yellow">Categorías<i class="material-icons">arrow_drop_down</i></a>
                                <div class="collapsible-body">
                                    <ul>
                                        <li><a href="nuevaCategoria.jsp" class="waves-effect waves-yellow">Nueva Categoría</a></li>
                                        <li><a href="listacategorias.do" class="waves-effect waves-yellow">Listar Categorías</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                    </li>



                </ul>
            </div>
        </nav>



        <!-- Page Layout here -->
        <div class="row">



            <div class="col s8 m8 l8 xl8 offset-m1 offset-l4 offset-xl3"> <!-- Note that "m8 l9" was added -->

                <h3 class="cyan-text text-darken-3">Nuevo Producto</h3>

                <div class="row">



                    <form class="col s12">
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtnombre" name="txtnombre" type="text" class="validate">
                                <label for="txtnombre">Nombre Producto</label>
                            </div>
                        </div>
                        <div class="row">
                            <div class="input-field col s12">
                                <input id="txtdetalle" name="txtdetalle" type="text" class="validate">
                                <label for="txtdetalle">Detalle Producto</label>
                            </div>
                        </div>

                        <div class="row">
                            <div class="input-field col s6">
                                <input id="txtcantidad" name="txtcantidad" type="text" class="validate">
                                <label for="txtcantidad">Cantidad Producto</label>
                            </div>
                            <div class="input-field col s6">
                                <input id="txtprecio" name="txtprecio" type="text" class="validate">
                                <label for="txtprecio">Precio Producto</label>
                            </div>
                        </div>

                        <div class="row">

                            <div class="input-field col s6">
                                <select>
                                    <option value="" disabled selected>Selecciona una opción</option>
                                    <option value="1">Opción 1</option>
                                    <option value="2">Opción 2</option>
                                    <option value="3">Opción 3</option>
                                </select>
                                <label>Categoría</label>
                            </div>
                                <div class="input-field col s4 offset-s2">

                                    <input type="checkbox" id="disponible" name="disponible" checked="checked" />
                                    <label for="disponible">Visible</label>
                                </div>
                            
                        </div>
                        <div class="row">
                            <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
    <i class="material-icons right">send</i>
  </button>
                            
                        </div>

                    </form>

                </div>
            </div>

        </div>



        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>

        <script>

            $(document).ready(function () {

                $(".button-collapse").sideNav();
                //$(".side-nav").sideNav('show');
                $('.collapsible').collapsible();
                $('select').material_select();

            })

        </script>

    </body>
</html>