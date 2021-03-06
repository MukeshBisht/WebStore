<%-- 
    Document   : header.jsp
    Created on : Oct 17, 2018, 2:56:38 PM
    Author     : DBGI
--%>
<!-- Bootstrap core CSS -->
<link href="/WebStore/src/css/bootstrap.css" rel="stylesheet" >

<!-- Custom styles for this template -->
<link href="/WebStore/shop-homepage.css" rel="stylesheet">
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="/WebStore/store.jsp">WebStore</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active"><a class="nav-link" href="#"><span class="glyphicon shopping-cart">Cart</span></a></li>
            
            <%if(session.getAttribute("uid")!=null){%>
            <li class="nav-item">
                <a class="nav-link">Hello, <%=session.getAttribute("uid")%></a>
            </li>
            
            <li class="nav-item active">
             <a class="nav-link" href="/WebStore/logout.jsp">logout</a>
            </li>
            <%} else {%>
                <li class="nav-item active">
                    <a class="nav-link" href="/WebStore/login.html">Login</a>
                </li>
            <%}%>
          </ul>
        </div>
      </div>
</nav>
