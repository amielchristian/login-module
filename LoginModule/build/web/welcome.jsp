<%-- 
    Document   : welcome
    Created on : Nov 17, 2022, 12:01:32 PM
    Author     : chris
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
            response.setHeader("Pragma", "no-cache");
            response.setHeader("Expires", "0");
            
            if (session.getAttribute("username") == null)   {
                response.sendRedirect("login.jsp");
            }
        %>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/cYc3FjhMMzI" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        <form action="Logout">
            <input type="submit" value="Logout">
        </form>
    </body>
</html>
