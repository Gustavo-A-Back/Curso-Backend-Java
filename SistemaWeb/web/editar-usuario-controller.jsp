<%@page import="java.sql.*"%>
<%@page import="config.SistemaWebDb"%>

<%

    String nome = request.getParameter("nome");
    String nivel = request.getParameter("nivel");
    String email = request.getParameter("email");
    String senha = request.getParameter("senha");
    String idUsuario = request.getParameter("idUsuario");

    
    try{
     Connection connection = SistemaWebDb.getconnection();
     Statement statement = connection.createStatement();
     
     statement.execute("UPDATE usuario SET nome='" + nome + "', nivel = '"+ nivel + "', email = '" + email +"', senha = '"+ senha + "'" + " WHERE id= '" + idUsuario + "'");
     response.sendRedirect("listar-usuarios.jsp");
    } catch (Exception ex){
        System.out.println("Erro ao atualizar usuario.");
        ex.printStackTrace();
    }
    
    %>