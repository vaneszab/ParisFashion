<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
    String product_id=request.getParameter("id");
    try
    {
        Connection con = KoneksiDatabase.getCon();
        Statement st=con.createStatement();
        st.executeUpdate("delete from product where id ='"+product_id+"'");
        response.sendRedirect("adminproduk.jsp?msg=removed");
    }
    catch(Exception e)
    {
        System.out.println(e);
    }
    %>