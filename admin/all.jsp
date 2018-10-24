<%-- 
    Document   : all
    Created on : Oct 24, 2018, 2:55:47 PM
    Author     : DBGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Store.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Store.DataManager"%>
<%!
      DataManager manager = new DataManager();
      ArrayList<Product> products = null;
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <table class="table">
                <thead>
                    <th>ID</th>
                    <th>Product</th>
                    <th>Description</th>
                    <th>Price</th>
                </thead>
            <% 
               products = manager.getProductsList(); 
               for (Product p : products) {
            %>           
                <tr>
                    <td><%=p.getId()%></td> 
                    <td><%=p.getName()%></td> 
                    <td><%=p.getDesc()%></td> 
                    <td><%=p.getPrice()%></td> 
                    <td><a href="#">Delete</a></td>
                    <td><a href="#">Edit</a></td>
                </tr>
                <%}%>
            </table>
        </div>
        
    </body>
</html>
