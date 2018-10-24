<%-- 
    Document   : product
    Created on : Oct 24, 2018, 2:55:34 PM
    Author     : DBGI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin</title>
    </head>
    <body>
        <%@include file="header.jsp" %>
        
        <div class="container">
            <h1>Product  </h1>
            <form class="form-signin" method="post" action="authenticate.jsp">
                
                <label for="pid">ID</label>
                <input type="text" id="pid" name="id" class="form-control" placeholder="Product ID" required autofocus>
                <br>
                
                <label for="pname">Product Name</label>
                <input type="text" id="pname" name="name" class="form-control" placeholder="Product Name" required>
                <br>
                
                <label for="pdesc">Product Description</label>
                <input type="text" id="pdesc" name="desc" class="form-control" placeholder="Product Description" required>
                <br>
                
                <label for="pprice">Product Price</label>
                <input type="text" id="pprice" name="price" class="form-control" placeholder="Product Price" required>
                <br>
                
                <button class="btn btn-lg btn-info btn-block" type="submit">Submit</button>
            </form>
            
        </div>       
    </body>
</html>
