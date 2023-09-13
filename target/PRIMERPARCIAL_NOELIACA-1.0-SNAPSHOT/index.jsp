<%@page import="java.util.ArrayList"%>
<%@page import="com.emergentes.modelado.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listaProducto") == null){
        ArrayList<Producto> lisaux = new ArrayList<Producto>();
        session.setAttribute("listaProducto",lisaux);
    }
    ArrayList<Producto> lista = (ArrayList<Producto>) session.getAttribute("listaProducto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
    </style>
    </head>
    <body>
        <p>
        <label>Primer Parcial TEM-742</label><br>
        <label>Nombre:NOELIA CALLISAYA ARGANA </label><br>
        <label>Carnet:9925756 </label><br>
        </p>

        <h1>Gestión de productos</h1>
        <p><a href="MainServlet?op=nuevo">Nuevo producto</a></p>
        <table border="1" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>Descripción</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th></th>
                <th></th>
            </tr>
            <%
            if (lista != null) {
                for(Producto item : lista){
            %>
            <tr>
                <td><%= item.getId() %></td>
                <td><%= item.getDescripcion() %></td>
                <td><%= item.getCantidad() %></td>
                <td><%= item.getPrecio() %></td>
                <td><%= item.getCategoria() %></td>
                <td><a href="MainServlet?op=editar&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="MainServlet?op=eliminar&id=<%= item.getId() %>">Eliminar</a></td>
            </tr>
            <%
                }
            }
            %>
        </table>
    </body>
</html>