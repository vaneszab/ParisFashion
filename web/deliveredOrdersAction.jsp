<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
String product_id=request.getParameter("id");
String email = request.getParameter("email");
String status="Delivered";
String stoktes=request.getParameter("stok");
int stok=0;
try
{
    Connection con = KoneksiDatabase.getCon();
    Statement st = con.createStatement();
    st.executeUpdate("update cart set status='"+status+"' where product_id='"+product_id+"' and email='"+email+"' and address is not NULL");
    response.sendRedirect("adminpesanandiantar.jsp?msg=delivered");
    ResultSet rs=st.executeQuery("select * from product where id='"+product_id+"'");
    while(rs.next())
    {
        stok=rs.getInt(5);
    }
    if(stoktes.equals("kurang"))
    {
        stok = stok-1;
        st.executeUpdate("update product set stok='"+stok+"' where id='"+product_id+"'");
    }
    }

catch(Exception e)
{
    System.out.println(e);
    response.sendRedirect("adminpesanandiantar.jsp?msg=wrong");}
%>