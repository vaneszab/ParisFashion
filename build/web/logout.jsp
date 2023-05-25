<%-- 
    Document   : logout
    Created on : Jan 13, 2022, 4:45:59 PM
    Author     : ASUS
--%>

<%
    session.invalidate();
    response.sendRedirect("Guest.jsp");
%>
