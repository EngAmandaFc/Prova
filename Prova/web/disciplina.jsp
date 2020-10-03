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
        disciplinaList.add(new Disciplina("BD","Conceitos de Base de Dados.Modelos de Dados: Relacional,  Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.",4,0.0));
        disciplinaList.add(new Disciplina("POO","Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.",4,0.0));
        disciplinaList.add(new Disciplina("LP IV","Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.",4,0.0));
        disciplinaList.add(new Disciplina("SO II","Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.",4,0.0));
        disciplinaList.add(new Disciplina("Inglês IV","Aprofundamento da compreensão e produção oral e escrita por meio funções sociais e estruturas mais complexas da língua. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa",5,0.0));
        disciplinaList.add(new Disciplina("Inglês V","Aprofundamento da compreensão e produção oral e escrita por meio funções sociais e estruturas mais complexas da língua. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa",4,0.0));
        disciplinaList.add(new Disciplina("ENG SOFT III","Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.",4,0.0));
        disciplinaList.add(new Disciplina("SEG DA INF","Requisitos de segurança de aplicações, de base de dados e de comunicações. Segurança de dispositivos móveis. Políticas de segurança. Criptografia. Firewalls. Vulnerabilidades e principais tecnologias de segurança.",5,0.0));
      
        
        application.setAttribute("disciplinaList", disciplinaList);
    }
     if(request.getParameter("red")!=null){
        int i = Integer.parseInt(request.getParameter("i"));
        Disciplina alt = disciplinaList.get(i);
        
        try{
            alt.setNota(Double.parseDouble(request.getParameter("nota")));
        } catch (Exception ex){
            alt.setNota(0.0);
        }
     
        response.sendRedirect(request.getRequestURI());
    }
    
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Disciplinas Cursadas</title>
    </head>
    <body>
        
        <%@include file="WEB-INF/jspf/menu.jspf" %>
        
        <hr/>
        <table border="1">
            <tr>
                                
                <th align="center" style="background-color: #C0C0C0">Disciplina</th>
                <th align="center" style="background-color: #C0C0C0">Ementa</th>
                <th align="center" style="background-color: #C0C0C0">Ciclo</th>
                <th align="center" style="background-color: #C0C0C0">Nota</th>
                <th align="center" style="background-color: #C0C0C0">Redefinir Nota</th>
                
            </tr>
             
                <%for(int i=0; i<disciplinaList.size(); i++){%>
            <tr>
                
                <% Disciplina u = disciplinaList.get(i); %>
               
                
                
               <td align="center"><%= u.getName() %></td>
               <td align="center"><%= u.getEmenta() %></td>
               <td align="center"><%= u.getCiclo() %></td>
               <td align="center"><%= u.getNota() %></td>
             
                       <td><form>
                               <input type="hidden" name="i" value="<%= i %>"/>
                               <input type="number" step="0.01" min="0" name="nota" style="width:50px"/>
                               <input type="submit" name="red" value="Redefinir nota"/>
                   </form>
                    
                    
               </td>                   
            </tr>
            

              <%}%>
            
            
        </table>
                 </br>
                    </br>
                        </br>
                             </br>
                       
                
            <p><a href="index.jsp">Voltar</a></p>
    </body>
</html>
