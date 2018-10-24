<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>WebStore</title>
  </head>

  <body>
    <!-- Navigation -->
    <%@include file="header.jsp" %>
    <!-- Page Content -->
    <div class="container">
      <div class="row">
        <div class="col-lg-3">
          <h1 class="my-4">WebStore</h1>
          <div class="list-group">
            <a href="?cat=fashion" class="list-group-item">Fashion</a>
            <a href="?cat=electronics" class="list-group-item">Electronics</a>
            <a href="?cat=books" class="list-group-item">Books</a>
          </div>
        </div>
        <div class="col-lg-9">
        <jsp:include page="products.jsp">
            <jsp:param name="myVar" value="<%=request.getParameter("cat")%>"/>         
        </jsp:include>
        </div>
      </div>
    </div>
    <%@include file="footer.jsp" %>
  </body>
</html>