<%-- 
    Document   : index
    Created on : 3 de out de 2020, 09:18:58
    Author     : mandi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.poo.fatecpg.Disciplina"%>
<%
    ArrayList<Disciplina> disciplinaList = (ArrayList)application.getAttribute("disciplinaList");
    if(disciplinaList == null){
        disciplinaList = new ArrayList<>();
        disciplinaList.add(new Disciplina("POO", "Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.",4,0.0));
        disciplinaList.add(new Disciplina("ENG SOF III", "Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.",4, 0.0));
        disciplinaList.add(new Disciplina("BD", "Conceitos de Base de Dados.Modelos de Dados: Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.",4,0.0));
        disciplinaList.add(new Disciplina("Inglês IV", "Aprofundamento da compreensão e produção oral e escrita por meio funções sociais e estruturas mais complexas da língua. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa",4, 0.0));
        disciplinaList.add(new Disciplina("Inglês V", "Aprofundamento da compreensão e produção oral e escrita por meio funções sociais e estruturas mais complexas da língua. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos sócio-culturais da língua inglesa",4,0.0));
        disciplinaList.add(new Disciplina("LP IV", "Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmi­cas e interativas. Definição de layouts e formatação em geral. Adição de algorítmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.",4, 0.0));
        disciplinaList.add(new Disciplina("SEG INF", "Requisitos de segurança de aplicações, de base de dados e de comunicações. Segurança de dispositivos móveis. Políticas de segurança. Criptografia. Firewalls. Vulnerabilidades e principais tecnologias de segurança.",5,0.0));
        disciplinaList.add(new Disciplina("SO II", "Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado. Elaboração de projetos de seleção e implantação de um sistema operacional.",4, 0.0));
        application.setAttribute("disciplinaList", disciplinaList);
    }
    %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="WEB-INF/jspf/menu.jspf" %>
<div class="container-fluid">
            <h1 style="color:lightslategray;">Home</h1>
            <hr>
        </div>
         <br>
         <br>
        <h1>Aluno: Amanda Fernandez Caetano</h1>
        <h2 style="color:lightslategray;"> Seu RA: 1290481912050 </h2>
        <br>
        <h2 style="color:lightslategray;"><a href="disciplina.jsp">Disciplinas Matriculadas:<%= disciplinaList.size()%></a></h2>
         <br>
          <br>
    </body>
</html>
