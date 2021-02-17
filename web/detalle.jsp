<%-- 
    Document   : detalle
    Created on : 16-feb-2021, 22:45:28
    Author     : z3rh10
--%>

<%@page import="java.time.Period"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalles famoso</title>

        <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
        <!-- Scripts Bootstrap -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
    </head>
    <body style="background-color: cyan;">
        <%!
            String f;

            String[] data;
            String[] dataFecha;

            String nombreCompleto;
            String fechaNac;
            String profesion;

            int dia;
            int mes;

            String edad;
            String signo;
        %>
        <%
            f = request.getParameter("f");
            data = f.split(",");
            nombreCompleto = data[0];
            fechaNac = data[1];
            profesion = data[2];

            DateTimeFormatter fmt = DateTimeFormatter.ofPattern("yyyy/MM/dd");
            LocalDate fechaNacimiento = LocalDate.parse(fechaNac, fmt);
            LocalDate ahora = LocalDate.now();

            Period periodo = Period.between(fechaNacimiento, ahora);

            edad = String.valueOf(periodo.getYears());

            dataFecha = fechaNac.split("/");

            mes = Integer.parseInt(dataFecha[1]);
            dia = Integer.parseInt(dataFecha[2]);

            switch (mes) {
                case 1:
                    if (dia > 21) {
                        signo = "ACUARIO";
                    } else {
                        signo = "CAPRICORNIO";
                    }
                    break;
                case 2:
                    if (dia > 19) {
                        signo = "PISCIS";
                    } else {
                        signo = "ACUARIO";
                    }
                    break;
                case 3:
                    if (dia > 20) {
                        signo = "ARIES";
                    } else {
                        signo = "PISCIS";
                    }
                    break;
                case 4:
                    if (dia > 20) {
                        signo = "TAURO";
                    } else {
                        signo = "ARIES";
                    }
                    break;
                case 5:
                    if (dia > 21) {
                        signo = "GEMINIS";
                    } else {
                        signo = "TAURO";
                    }
                    break;
                case 6:
                    if (dia > 20) {
                        signo = "CANCER";
                    } else {
                        signo = "GEMINIS";
                    }
                    break;
                case 7:
                    if (dia > 22) {
                        signo = "LEO";
                    } else {
                        signo = "CANCER";
                    }
                    break;
                case 8:
                    if (dia > 21) {
                        signo = "VIRGO";
                    } else {
                        signo = "LEO";
                    }
                    break;
                case 9:
                    if (dia > 22) {
                        signo = "LIBRA";
                    } else {
                        signo = "VIRGO";
                    }
                    break;
                case 10:
                    if (dia > 22) {
                        signo = "ESCORPION";
                    } else {
                        signo = "LIBRA";
                    }
                    break;
                case 11:
                    if (dia > 21) {
                        signo = "SAGITARIO";
                    } else {
                        signo = "ESCORPION";
                    }
                    break;
                case 12:
                    if (dia > 21) {
                        signo = "CAPRICORNIO";
                    } else {
                        signo = "SAGITARIO";
                    }
                    break;
            }

        %>

        <div class="pt-5">
            <table class="table table-dark" style="background-color: black;">
                <thead>
                    <tr>
                        <th scope="col">Nombre Completo</th>
                        <th scope="col">Fecha de Nacimiento</th>
                        <th scope="col">Edad</th>
                        <th scope="col">Signo Zodiacal</th>
                        <th scope="col">Profesión</th>     
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <th scope="row"><%= nombreCompleto%></th>
                        <td><%= fechaNac%></td>
                        <td><%= edad%></td>
                        <td><%= signo%></td>
                        <td><%= profesion%></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <br>
            <a href="listar.jsp" class="text-center">Volver al listado de famosos</a>
        </div>

    </body>
</html>
