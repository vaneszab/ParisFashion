<%-- 
    Document   : addNewProductAction
    Created on : Jan 13, 2022, 2:34:58 PM
    Author     : ASUS
--%>

<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String stok=request.getParameter("stok");
    String price=request.getParameter("price");
    String active=request.getParameter("active");
    try{
        Connection con = KoneksiDatabase.getCon();
        PreparedStatement ps = con.prepareStatement("insert into product values(?,?,?,?,?)");
        ps.setString(1, id);
        ps.setString(2, name);
        ps.setString(3, price);
        ps.setString(4, active);
        ps.setString(5, stok);
        ps.executeUpdate();
        response.sendRedirect("addNewProduct.jsp?msg=done");
    }
    catch(Exception e){
        response.sendRedirect("addNewProduct.jsp?msg=wrong");
    }
    %>