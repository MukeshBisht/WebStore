<%-- 
    Document   : logout
    Created on : Oct 25, 2018, 10:04:13 AM
    Author     : DBGI
--%>

<%
    session.removeAttribute("uid");
    response.sendRedirect("/WebStore/store.jsp");
%>
