
<%@page import="java.util.ArrayList" %>
<%@page import="model.CategoriaModelo" %>

<% ArrayList<CategoriaModelo> lista = (ArrayList<CategoriaModelo>)request.getAttribute("listaCategorias"); %>

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
                            <a class="collapsible-header waves-effect waves-yellow">Productos<i class="material-icons">arrow_drop_down</i></a>
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
                            <a class="collapsible-header waves-effect waves-yellow active">Categorías<i class="material-icons">arrow_drop_down</i></a>
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

            <h3 class="cyan-text text-darken-3">Lista de Categorias</h3>

            <div class="row">
                <table class="highlight centered">
                    <thead>
                        <tr>
                           
                            <th>Nombre</th>
                             <th>Detalle</th>
                           <th>ID</th>
                            <th>Opciones</th>
                        </tr>
                    </thead>

                    <tbody>

                        <% for (CategoriaModelo categoria : lista) {


                        %>
                        <tr>
                           
                            <td><% out.print(categoria.getNombre()); %></td>
                            <td><% out.print(categoria.getDetalle()); %></td>
                             <td><% out.print(categoria.getIdCategoria()); %></td>
                            <td>                                            

                             <a class="btn-floating yellow darken-1 z-depth-5 btnVerDetalle" href="#verDetalleModal" ><i class="material-icons">search</i></a>
                                <a class="btn-floating green z-depth-5 btnModificar" href="#modificarModal"><i class="material-icons">mode_edit</i></a>
                                <a class="btn-floating red z-depth-5 btnEliminar" href="#eliminarModal"><i class="material-icons">delete</i></a>
                            </td>

                        </tr>

                        <% } %>

                    </tbody>
                </table>
            </div>


        </div>

        <div class="col s12 m8 l9"> <!-- Note that "m8 l9" was added -->
            <!-- Teal page content      alert(idCategoria);

                  This content will be:
              9-columns-wide on large screens,
              8-columns-wide on medium screens,
              12-columns-wide on small screens  -->

        </div>

    </div>

     <div id="verDetalleModal" class="modal modal-fixed-footer">
         <div class="modal-content">
             <h4>Detalle Categoria</h4>
             <div class="divider"></div>

             <div class="section">
                 <h5>Nombre Categoria</h5>
                 <p id="pNombre"></p>
             </div>

         <div class ="section">
             <h5>Detalle Categoria</h5>
             <p id="pDetalle"></p>
         </div>
     </div>

                        <div class="modal-footer">
                            <a href="#!" class ="modal-acction modal-close waves-effect waves-green btn-flat">Agree</a>
                        </div>
        </div>

                 <div id="modificarModal" class="modal modal-fixed-footer">
                    <div class="modal-content">
                                <h4>Modificar Categoria</h4>
                                <div class="divider"></div>

                           <form class="col s12" action="editarcategoria.do" method="POST">
                               <div class = "row hide">
                                        <div class="input-field col s12">
                                       <input id="txtID" name="txtID" type="text" class="validate">
                                       <label for="txtID"> ID Categoria</label>
                                        </div>
                                    </div>     
                               <div class = "row">
                                        <div class="input-field col s12">
                                       <input id="txtnombre" name="txtnombre" type="text" class="validate">
                                       <label for="txtnombre"> Nombre  Categoria</label>
                                        </div>
                                    </div>
                               <div class="row">
                                   <div class="input-field col s12"> 
                                       <input id="txtdetalle" name="txtdetalle" type="text" class="validate">
                                       <label for="txtdetalle"> Detalle  Categoria</label>
                                   </div>
                               </div>
                               <div class="row">
                                   <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
 <i class="material-icons right">send</i>
    </button>
                               </div>

                              </form>           
                            </div>


                        <div class="modal-footer">
                            <a herf="#!" class="modal-acction modal-close waves-effect waves-green btn-flat">Agree</a>
                        </div>
                        </div> 



                         <div id="eliminarModal" class="modal modal-fixed-footer">
                            <div class="modal-content">
                                <h4>Eliminar Categoria</h4>
                                <div class="divider"></div>

   <form class="col s12" action="eliminarcategoria.do" method="POST">
                               <div class = "row hide">
                                        <div class="input-field col s5">
                                       <input id="etxtID" name="etxtID" type="text" class="validate">
                                       <label for="txtID"> ID Categoria</label>
                                        </div>
                                    </div>     
                                <div class="section">
                 <h5>Nombre Categoria</h5>
                 <p id="peNombre"></p>
             </div>

         <div class ="section">
             <h5>Detalle Categoria</h5>
             <p id="peDetalle"></p>
         </div>
                               <div class="row">
 <button class="btn waves-effect waves-light" type="submit" name="action">Guardar
 <i class="material-icons right">send</i>
    </button>
                               </div>

                              </form>           
                            </div>


                        <div class="modal-footer">
                            <a herf="#!" class="modal-acction modal-close waves-effect waves-green btn-flat">Agree</a>
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

            $('.modal').modal();

            $('.btnVerDetalle').click(function(){
                var nombre = $(this).parents('tr').find('td')[0].innerHTML;
                var detalle = $(this).parents('tr').find('td')[1].innerHTML;

               $('#pNombre').text(nombre); 
               $('#pDetalle').text(detalle);
});
            $('.btnModificar').click(function(){
                var nombre = $(this).parents('tr').find('td')[0].innerHTML;
                var detalle = $(this).parents('tr').find('td')[1].innerHTML;
                var idCategoria = $(this).parents('tr').find('td')[2].innerHTML;
                

               $('#txtID').val(idCategoria); 
               $('#txtnombre').val(nombre);
               $('#txtdetalle').val(detalle);

         });   
            $('.btnEliminar').click(function(){
                var nombre = $(this).parents('tr').find('td')[0].innerHTML;
                var detalle = $(this).parents('tr').find('td')[1].innerHTML;
                var idCategoria = $(this).parents('tr').find('td')[2].innerHTML;
               
               $('#etxtID').val(idCategoria); 
               $('#peNombre').text(nombre);
               $('#peDetalle').text(detalle); 


               Materialize.updateTextFields();
               });

    });

    </script>

</body>
</html>
