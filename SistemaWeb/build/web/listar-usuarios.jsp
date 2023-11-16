<%-- 
    Document   : listar-usuarios
    Created on : 26 de out. de 2023, 21:50:02
    Author     : guilherme.walter
--%>

<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="java.sql.*"%>
<%@page import="Service.UsuarioService"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="listar-usuarios.jsp">Lista de usuários</a>
                <div>
                    <span>
                        <%
                            String nomeUsuario = (String) session.getAttribute("nomeUsuario");
                            if (nomeUsuario == null) {
                                response.sendRedirect("index.jsp");
                            } else {
                                out.println("Bem vindo " + nomeUsuario);
                            }
                        %>
                    </span>
                    <a href="logout.jsp">Sair</a>
                </div>
            </div>
        </nav>
        <div class="container">
            <div style="width: 100%" class="d-flex justify-content-between mt-2">
                <a href="inserir-usuario.jsp" class="btn btn-outline-primary">Novo usuário</a>
                <form action="listar-usuarios-controller.jsp" method="post" class="d-flex">
                    <input name="filtro-usuario" class="form-control me-2" placeholder="Nome ou email">
                    <button class="btn btn-primary" type="submit">Buscar</button>
                </form>
            </div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Nivel</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Usuario> usuarios = null;
                        boolean primeiraBusca;
                        primeiraBusca = request.getAttribute("usuarios") == null;

                        UsuarioService usuarioService = new UsuarioService();

                        if (primeiraBusca) {
                            usuarios = usuarioService.listarUsuarios("");
                        } else {
                            usuarios = (List<Usuario>) request.getAttribute("usuarios");
                        }

                        for (Usuario usuario : usuarios) {
                    %>
                    <tr>
                        <td><% out.println(usuario.getId()); %></td>
                        <td><% out.println(usuario.getNome()); %></td>
                        <td><% out.println(usuario.getEmail()); %></td>
                        <td><% out.println(usuario.getNivel()); %></td>
                        <td class="d-flex">
                            <a href="editar-usuario.jsp?id=<% out.println(usuario.getId()); %>">Editar</a>
                            <form action="excluir-usuario-controller.jsp" method="post">
                                <input hidden name="idUsuario" value="<%out.println(usuario.getId());%>"/>
                                <button  class= "btn btn-primary btn-sm" type="submit">Excluir</button>
                                
                            </form>
                        </td>
                    </tr>
                    <% }
                    %>
                </tbody>
            </table>
        </div>
    </body>
</html>