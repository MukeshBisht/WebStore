<%-- 
    Document   : products.jsp
    Created on : Oct 17, 2018, 2:59:19 PM
    Author     : DBGI
--%>
<%@page import="Store.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Store.DataManager"%>
<%!
      DataManager manager = new DataManager();
      ArrayList<Product> products = null;
%>
<!--<h2>${param.myVar}</h2>-->
        <h2>Products</h2>
          <div class="row">
            <% 
               products = manager.getProductsList(); 
               for (Product p : products) {
            %>
            <div class="col-lg-4 col-md-6 mb-4">
              <div class="card h-100">
                <a href="#"><img class="card-img-top" src="http://localhost:8080/WebStore/images/<%=p.getImg()%>" alt=""></a>
                <div class="card-body">
                  <h4 class="card-title">
                    <a href="/WebStore/product.jsp?pid=<%=p.getId()%>"><%=p.getName()%></a>
                  </h4>
                  <h5>$<%=p.getPrice()%></h5>
                  <p class="card-text"><%=p.getDesc()%></p>
                </div>
                <div class="card-footer">
                  <small class="text-muted">&#9733; &#9733; &#9733; &#9733; &#9734;</small>
                </div>
              </div>
            </div>
            <% } %>
          </div>