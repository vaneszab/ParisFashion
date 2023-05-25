<%-- 
    Document   : editProductAction
    Created on : Jan 13, 2022, 3:29:23 PM
    Author     : ASUS
--%>

<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String price=request.getParameter("price");
    String stok=request.getParameter("stok");
    String active=request.getParameter("active");
    try{
        Connection con = KoneksiDatabase.getCon();
        Statement st = con.createStatement();
        st.executeUpdate("update product set name='"+name+"',price='"+price+"',stok='"+stok+"',active='"+active+"' where id='"+id+"'");
        if(active.equals("No")){
            st.executeUpdate("delete from cart where product_id='"+id+"' and address is NULL");
        }
        response.sendRedirect("adminproduk.jsp?msg=done");
    }
    catch(Exception e){
        System.out.println(e);
        response.sendRedirect("adminproduk.jsp?msg=wrong");
    }
    %>