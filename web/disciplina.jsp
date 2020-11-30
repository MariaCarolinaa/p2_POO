<%-- 
    Document   : disciplina
    Created on : 05/10/2020, 15:05:27
    Author     : maria
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="disciplina.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 

    ArrayList<Disciplina> disciplina = (ArrayList<Disciplina>) application.getAttribute("disciplina");

    if(disciplina == null) {
        disciplina = Disciplina.getList();
        application.setAttribute("disciplina", disciplina);
    }
    
    if(request.getParameter("redefinir")!= null){
         int i = Integer.parseInt(request.getParameter("i"));
         double novaNota = Double.parseDouble(request.getParameter("novaNota"));
         disciplina.get(i).setNota(novaNota);
         response.sendRedirect(request.getRequestURI());
     }

%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/componentes/menu.jspf" %>
        
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Redefinir Nota</th>
            </tr>
            <%for(int i=0; i<disciplina.size(); i++){%>
                <% Disciplina info = disciplina.get(i); %>
                <tr>
                    <td><%= info.getNome() %></td>
                    <td><%= info.getEmenta() %></td>
                    <td><%= info.getCiclo() %></td>
                    <td><%= info.getNota() %></td>
                    <td>
                        <form>
                            <input type="text" name="novaNota" value="">
                            <input type="submit" name="redefinir" value="Redefinir"/>
                            <input type="hidden" name="i" value="<%= i %>"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>
