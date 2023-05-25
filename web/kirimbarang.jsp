<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
String product_id=request.getParameter("id");
String stoktes=request.getParameter("stok");
int stok=0;
try
{
    Connection con = KoneksiDatabase.getCon();
    Statement st = con.createStatement();
    ResultSet rs=st.executeQuery("select * from product where id='"+product_id+"'");
    while(rs.next())
    {
        stok=rs.getInt(5);
    }
    if(stoktes.equals("abis1"))
    {
        stok=stok+663;
        st.executeUpdate("update product set stok='"+stok+"' where id=1");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis2"))
    {
        stok=stok+663;
        st.executeUpdate("update product set stok='"+stok+"' where id=2");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis3"))
    {
        stok=stok+642;
        st.executeUpdate("update product set stok='"+stok+"' where id=3");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis4"))
    {
        stok=stok+642;
        st.executeUpdate("update product set stok='"+stok+"' where id=4");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis5"))
    {
        stok=stok+636;
        st.executeUpdate("update product set stok='"+stok+"' where id=5");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis6"))
    {
        stok=stok+636;
        st.executeUpdate("update product set stok='"+stok+"' where id=6");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis7"))
    {
        stok=stok+628;
        st.executeUpdate("update product set stok='"+stok+"' where id=7");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    else if(stoktes.equals("abis8"))
    {
        stok=stok+628;
        st.executeUpdate("update product set stok='"+stok+"' where id=8");
        response.sendRedirect("supplierproduk.jsp?msg=bisa");
    }
    }

catch(Exception e)
{
    System.out.println(e);
    }
%>