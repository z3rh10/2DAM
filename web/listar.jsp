<%-- 
    Document   : listar
    Created on : 16-feb-2021, 18:53:57
    Author     : z3rh10
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Hashtable"%>
<%@page import="hashmap.Famoso"%>
<%@page import="hashmap.FamosoHashmap"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Listas de famosos</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- Scripts Bootstrap -->

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: cyan;">
        <br>
        <h1 class="text-center">Listado de personajes famosos</h1>
        <br>

        <%
            // Avoid Java Code in JSP - This is only for ease of testing
            Map<String, Famoso> famosos = new HashMap<String, Famoso>();
            famosos.put("Rafael", new Famoso("Nadal", "1987/07/03", "Tenista"));
            famosos.put("Fernando", new Famoso("Alonso", "1981/07/29", "Corredor"));
            famosos.put("Lewis", new Famoso("Hamilton", "1985/01/17", "Corredor"));
            famosos.put("Michael", new Famoso("Jackson", "1958/08/29", "Cantante"));
            famosos.put("Kobe", new Famoso("Vryant", "1978/08/23", "Jugador"));

            // putting hashtable into pageContext variable
            pageContext.setAttribute("info", famosos);
        %>

        <section class="section-content p-3">
            <div class="row text-center">
                <div class="col-md-12">

                    <%! int cont = 1;%>

                    <c:forEach var="entry" items="${pageScope.info}">
                        <%= cont++%>
                        <article>
                            <form action="detalle.jsp" method="POST" id="detalleFamoso<%= cont%>">

                                <a href="#" id="detalles" onclick="document.getElementById('detalleFamoso<%= cont%>').submit();">
                                    <img class="rounded img-fluid" src="img/personaje.png" style="width: 20%;">

                                    <h3>${entry.key} ${entry.value}</h3>

                                    <input type="hidden" name="f" value="${entry.key} ${entry.value}"/>

                                </a>

                            </form>
                        </article>
                    </c:forEach>
                </div>
            </div>
        </section>


    </body>
</html>
