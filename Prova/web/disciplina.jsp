<%-- 
    Document   : disciplina
    Created on : 3 de out de 2020, 09:22:52
    Author     : mandi
--%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.poo.fatecpg.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    ArrayList<Disciplina> disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    if(disciplinaList == null){
        disciplinaList = new ArrayList<>();
        disciplinaList.add(new Disciplina("POO", "admin@domain.com",4,0.0));
        disciplinaList.add(new Disciplina("ENG SOF III", "fulano@domain.com",4, 0.0));
        disciplinaList.add(new Disciplina("BD", "beltrano@domain.com",4,0.0));
        disciplinaList.add(new Disciplina("Inglês IV", "cicrano@domain.com",4, 0.0));
        disciplinaList.add(new Disciplina("Inglês V", "admin@domain.com",4,0.0));
        disciplinaList.add(new Disciplina("LP IV", "fulano@domain.com",4, 0.0));
        disciplinaList.add(new Disciplina("SEG INF", "beltrano@domain.com",4,0.0));
        disciplinaList.add(new Disciplina("SO II", "cicrano@domain.com",4, 0.0));
        application.setAttribute("disciplinaList", disciplinaList);
    }
    if(request.getParameter("red")!=null){
        int i = Integer.parseInt(request.getParameter)("i");
        Disciplina alt = disciplinaList.get(i);
       
        response.sendRedirect(request.getRequestURI());
   
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas cursadas</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>

        <div class="container-fluid">
            <h1 style="color:lightslategray;">Home</h1>
            <hr>
        </div>
         <hr/>
         <table border="1">
             <tr>
                 <th align="center" style="color:lightslategray;">Disciplina</th>
                <th align="center" style="color:lightslategray;">Ementa</th>
                <th align="center" style="color:lightslategray;">Ciclo</th>
                <th align="center" style="color:lightslategray;">Nota</th>
                <th align="center" style="color:lightslategray;">Redefinir Nota</th>

             </tr>
             <%for(int i=0; i<disciplinaList.size(); i++){%>
            <tr>
              
                <% Disciplina u = disciplinaList.get(i); %>
                <td><%= u.getName() %></td>
                <td><%= u.getEmenta() %></td>
                <td><%= u.getCiclo() %></td>
                <td><%= u.getNota() %></td>
                <td>
                    <form>
                        <input type="hidden" name="i" value="<%= i %>"/>
                        <input type=""number" step="0.01" min="0" name="nota" style="width:50px">
                        <input type="submit" name="red" value="Redefinir"/>
                    </form>
                </td>
            </tr>
            <%}%>
        </table>
        <br>
        <h4><a href="index.jsp">Voltar</>a></h4>
    </body>
</html>
