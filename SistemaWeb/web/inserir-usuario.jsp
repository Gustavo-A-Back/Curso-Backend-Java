<%-- 
    Document   : inserir-usuario
    Created on : 9 de nov. de 2023, 20:43:34
    Author     : guilherme.walter
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="assets/comum.css" rel="stylesheet" >

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
        <div class="container px-5 my-5">
            <div class="row justify-content-center">
                <div class="col-lg-8">
                    <div class="card border-0 rounded-3 shadow-lg">
                        <div class="card-body p-4">
                            <div class="text-center">
                                <div class="h1 fw-light">Novo usuário</div>
                            </div>
                            <form action="inserir-usuario-controller.jsp" method="post">
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="nome" name="nome" type="text" placeholder="Nome" />
                                    <label for="nome">Nome</label>
                                </div>
                                
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="nivel" name="nivel" type="text" placeholder="Nivel" />
                                    <label for="nivel">Nivel</label>
                                </div>
                                
                                <div class="form-floating mb-3">
                                    <input class="form-control" id="email" name="email" type="text" placeholder="Email" />
                                    <label for="email">Email</label>
                                </div>

                                <div class="form-floating mb-3">
                                    <input class="form-control" id="senha" name="senha" type="text" placeholder="Senha" />
                                    <label for="senha">Senha</label>
                                </div>

                                <div class="d-grid">
                                    <button class="btn btn-primary btn-lg" id="submitButton" type="submit">Cadastrar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>