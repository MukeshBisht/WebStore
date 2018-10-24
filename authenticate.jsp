<%-- 
    Document   : authenticate
    Created on : Oct 18, 2018, 10:28:18 AM
    Author     : DBGI
--%>

<%@page import="model.User"%>
<%@page import="dao.UserManager"%>

<%
    UserManager manager = new UserManager();
    String id = request.getParameter("id");
    String pass = request.getParameter("pass");
    User user = manager.validate(id, pass);
    if(user != null){
        session.setAttribute("uid", user.name);
        response.sendRedirect("/WebStore/store.jsp");
        return;
    }
    
    response.sendRedirect("/WebStore/login.html");
%>
