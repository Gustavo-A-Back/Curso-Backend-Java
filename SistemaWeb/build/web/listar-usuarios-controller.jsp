<%@page import="java.util.List"%>
<%@page import="model.Usuario"%>
<%@page import="Service.UsuarioService"%>
<%
    RequestDispatcher rd = request.getRequestDispatcher("listar-usuarios.jsp");
    
    String filtroUsuario = request.getParameter("filtro-usuario");
    
    UsuarioService usuarioService = new UsuarioService();
    List<Usuario> usuarios = usuarioService.listarUsuarios(filtroUsuario);
    request.setAttribute("usuarios", usuarios);
    rd.forward(request, response);
%>