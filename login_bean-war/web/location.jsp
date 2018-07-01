<%-- 
    Document   : location
    Created on : 2018.06.26., 16:43:11
    Author     : Dávid
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.http.HttpSession" %>
<!DOCTYPE html>

<html>
    <head>
        <title></title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"></script>
        <link rel="stylesheet" type="text/css" href="login.css">
    </head>
    <body>
        <div class="bg-info p-5 keret">
            <div class="text-center">
                <%
                     try {
                        String v=(String)request.getSession(false).getAttribute("reg");
                        if(!v.isEmpty()){
                            out.println(v);   
                            request.getSession(false).removeAttribute("reg");
                        }
                    } catch (Exception e) {
                    }
                %>
            </div>
            <form action="login">
                <div class="form-group">
                    <div class="text-center">LOGIN</div>
                </div>
                <div class="d-flex justify-content-center form-group">
                    <input type="text" name="nev" >
                    <input type="text" name="jelszo">
                </div>
                <div class="d-flex justify-content-center">
                    <input type="submit" class="bg-secondary">
                </div>
            </form>
            <div class="d-flex justify-content-center form-group">
                <a href="regisztral.html" class="text-dark">reg</a>
            </div>
            
        </div>
        

    </body>
</html>