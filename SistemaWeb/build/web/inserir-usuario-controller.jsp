<%@page import="java.sql.*"%>
<%@page import="config.SistemaWebDb"%>
<%
    RequestDispatcher rd = request.getRequestDispatcher("listar-usuarios.jsp");

    String nome = request.getParameter("nome");
    String nivel = request.getParameter("nivel");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");

    try {
        Connection connection = SistemaWebDb.getconnection();
        Statement statement = connection.createStatement();
        statement.execute("INSERT INTO usuario (nome, nivel, email, senha) "
                + "VALUES ('" + nome + "', "
                + "'" + nivel + "', "
                + "'" + email + "', "
                + "'" + senha + "')");
                rd.forward(request, response);
    } catch (Exception ex) {
        System.out.println("Erro ao inserir usuario");
        ex.printStackTrace();
    }
%>