<%-- 
    Document   : product.jsp
    Created on : Oct 17, 2018, 3:01:46 PM
    Author     : DBGI
--%>

<%@page import="Store.Product"%>
<%@page import="Store.DataManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%
        String pid = request.getParameter("pid");
        DataManager manager = new DataManager();
        Product p = null;
        if(pid != null){
            p = manager.getProductInfo(pid);
        }
    %>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><%=p.getName()%></title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <h1><%=p.getName()%></h1>
            <div class="row">
                <div class="col-lg-6 col-md-6 mb-4">
                    <img class="card-img-top" src="http://localhost:8080/WebStore/images/<%=p.getImg()%>" alt="">
                </div>
                <div class="col-lg-6 col-md-6 mb-4">
                    <%=p.getName()%><br>
                    <%=p.getDesc()%><br>
                    <%=p.getPrice()%><br><br>                   
                    <button class="primary">Buy Now</button>                 
                </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
