<%-- 
    Document   : index.jsp
    Created on : 05/10/2020, 14:45:22
    Author     : maria
--%>

<%@page import="disciplina.Disciplina"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 

    ArrayList<Disciplina> disciplina = (ArrayList<Disciplina>) application.getAttribute("disciplina");

    if(disciplina == null) {
        disciplina = new ArrayList<>();
        
        disciplina.add(new Disciplina ("Programação Orientada Objeto","Conceitos de orientação objeto",4));
        disciplina.add(new Disciplina ("Gestão de Projetos","Conceito e melhores práticas de gestão de projetos",5));
        disciplina.add(new Disciplina ("Laboratório de Banco de Dado","Implementar soluções de Banco de Dados",5));
        disciplina.add(new Disciplina ("Laboratório de Engenharia De Software","Desenvolvimento de um software",5));
        disciplina.add(new Disciplina ("Programação de Dispositivos Móveis","Ambiente de Programação mobile",5));
        disciplina.add(new Disciplina ("Segurança da Informação","Requisitos de segurança",5));
        disciplina.add(new Disciplina ("Inglês V","Aprofundamento da compreensão e produção oral",5));
        disciplina.add(new Disciplina ("Trabalho de Graduação I","Elaborar um trabalho de graduação",5));
        
        application.setAttribute("disciplina", disciplina);
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
        
        <div>
            <p>Nome: Maria Carolina Martins</p>
            <p>RA: 1290482013028</p>
            <p>Quantidade de disciplinas matriculadas: <%= Disciplina.getList(disciplina).size() %> </p>
        </div>
    </body>
</html>
