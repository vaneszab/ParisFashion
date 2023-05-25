<%-- 
    Document   : loginAction
    Created on : Jan 11, 2022, 3:35:49 PM
    Author     : Vanessa
--%>

<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
    if("admin@gmail.com".equals(email)&& "admin".equals(password)){
    session.setAttribute("email", email);
    response.sendRedirect("adminproduk.jsp");
}
    else if("supplier@gmail.com".equals(email)&& "supplier".equals(password)){
    session.setAttribute("email", email);
    response.sendRedirect("supplierproduk.jsp");
    }
    else{
        int z=0;
        try{
        Connection con=KoneksiDatabase.getCon();
        Statement st=con.createStatement();
        ResultSet rs= st.executeQuery("select * from users email where email='"+email+"' and password='"+password+"'");
        while(rs.next()){
            z =1;
            session.setAttribute("email", email);
            response.sendRedirect("hometes.jsp");
        }
        if(z==0)
            response.sendRedirect("login.jsp?msg=notexist");
        }
        catch(Exception e){
            System.out.println(e);
         response.sendRedirect("login.jsp?msg=invalid");
       
        }
    }
    %>
