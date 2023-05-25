<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%
String product_id=request.getParameter("id");
int stok=0;
try
{
    Connection con = KoneksiDatabase.getCon();
    Statement st = con.createStatement();
    ResultSet rs1=st.executeQuery("select * from product where id='"+product_id+"'");
    while(rs1.next())
    {
        stok=rs1.getInt(5);
        product_id=rs1.getString(1);
    }
    if(product_id.equals(1) && stok == 44)
    {
        response.sendRedirect("adminproduk.jsp?msg=capaibatas");
    }
    else if(product_id.equals(2) && stok == 44){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas1");
    }
    else if(product_id.equals(3) && stok == 43){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas2");
    }
    else if(product_id.equals(4) && stok == 43){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas3");
    }
    else if(product_id.equals(5) && stok == 42){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas4");
    }
    else if(product_id.equals(6) && stok == 42){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas5");
    }
    else if(product_id.equals(7) && stok == 42){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas6");
    }
    else if(product_id.equals(8) && stok == 42){
        response.sendRedirect("adminproduk.jsp?msg=capaibatas7");
    }
    else if (product_id.equals(1) && stok > 44){
        response.sendRedirect("adminproduk.jsp?msg=masihada");
    }
    
}
catch(Exception e)
{
    System.out.println(e);
}
%>