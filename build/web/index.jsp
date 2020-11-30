<%-- 
    Document   : index.jsp
    Created on : 05/10/2020, 14:45:22
    Author     : maria
--%>

<%@page import="disciplina.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/componentes/menu.jspf" %>
        
        <div>
            <p>Nome: Maria Carolina Martins</p>
            <p>RA: 1290482013028</p>
            <p>Quantidade de disciplinas matriculadas: <%= Disciplina.getList().size() %> </p>
        </div>
    </body>
</html>
