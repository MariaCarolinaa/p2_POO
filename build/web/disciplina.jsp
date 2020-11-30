<%-- 
    Document   : disciplina
    Created on : 05/10/2020, 15:05:27
    Author     : maria
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="disciplina.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
    Exception err = null;
    
    try{
       if(request.getParameter("redefinir")!= null) {
           int index = Integer.parseInt(request.getParameter("index"));
           int nota = Integer.parseInt(request.getParameter("novaNota"));
 
           Disciplina.update(nota, index);
           response.sendRedirect(request.getRequestURI());
          
       }
       
       if(request.getParameter("insert")!=null) {
           String nome = request.getParameter("nome");
           String ementa = request.getParameter("ementa");
           int ciclo = Integer.parseInt(request.getParameter("ciclo"));
           
           Disciplina.insert(nome, ementa, ciclo);
           response.sendRedirect(request.getRequestURI());
       }
       
       if(request.getParameter("delete")!=null){
           int index = Integer.parseInt(request.getParameter("index"));
           
           Disciplina.delete(index);
           response.sendRedirect(request.getRequestURI());
       }
    } catch (Exception ex) {
        err = ex;
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
        
        <form>
            <input type="text" placeholder="Disciplina" name="nome">
            <input type="text" placeholder="Ementa" name="ementa">
            <input type="text" placeholder="Ciclo" name="ciclo">
            <input type="submit" name="insert" value="Inserir">
        </form>
        <br>
        <table border="1">
            <tr>
                <th>Nome</th>
                <th>Ementa</th>
                <th>Ciclo</th>
                <th>Nota</th>
                <th>Redefinir Nota</th>
                <th>Deletar</th>
            </tr>
            <%for(int i=0; i<Disciplina.getList().size(); i++){%>
                <% Disciplina info = Disciplina.getList().get(i); %>
                <tr>
                    <td><%= info.getNome() %></td>
                    <td><%= info.getEmenta() %></td>
                    <td><%= info.getCiclo() %></td>
                    <td><%= info.getNota() %></td>
                    <td>
                        <form>
                            <input type="text" name="novaNota" value="">
                            <input type="submit" name="redefinir" value="Redefinir"/>
                            <input type="hidden" name="index" value="<%= info.getId() %>"/>
                        </form>
                    </td>
                    <td>
                        <form>
                            <input type="submit" name="delete" value="delete"/>
                            <input type="hidden" name="index" value="<%= info.getId() %>"/>
                        </form>
                    </td>
                </tr>
            <%}%>
        </table>
    </body>
</html>
