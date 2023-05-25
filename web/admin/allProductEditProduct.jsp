<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Produk</title>
<style>

h3
{
	color: #de5499;
	text-align: center;
}
table {
    border:none;
  border-collapse: collapse;
  margin-top: 20px;
  margin-left: 30px;
  padding: 10px;
  width: 95%;
  /*margin-left: 5%;*/
  table-layout: fixed;
  border-radius: 10px;
  overflow:hidden;
  
}

table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}

table tr {
  background-color: #f2ebe9;
  border-bottom: 1px solid #de5499;
  border-top:none;
  padding: .35em;
  border-radius: 10px;
  overflow:hidden;
  color: #264143;
}

table th,
table td {
  padding: .625em;
  text-align: center;
  
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
  
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: auto;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 1px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}

</style>
</head>
<body>
<div style="color: #264143; text-align: center; font-size: 30px; font-weight: 700;">Semua Produk dan Edit Produk <i class='fab fa-elementor'></i></div>
<%
    String msg=request.getParameter("msg");
    if("done".equals(msg)){
 %>
<h3 class="alert">Produk Berhasil Diperbarui!</h3>
<%}%>
<%
    if("wrong".equals(msg)){
 %>
<h3 class="alert">Ada Kesalahan, Silahkan Ulangi!</h3>
<%}%>
<%
 if("removed".equals(msg))
 {
%>
<h3 class="alert">Barang Berhasil Dihapus</h3>
<%} %>
<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Nama</th>
            <th scope="col">Kategori</th>
            <th scope="col"><i class="fa fa-money"></i> Harga</th>
            <th>Status</th>
            <th scope="col">Edit <i class='fas fa-pen-fancy'></i></th>
            <th scope="col">Hapus <i class="fas fa-trash"></i></th>
          </tr>
        </thead>
        <tbody>
            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product");
                    while(rs.next())
                    {
             %>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(4)%> </i></td>
            <td><%=rs.getString(5)%></td>
            <td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit <i class='fas fa-pen-fancy'></i></a></td>
            <td><a href="removeFromProduct.jsp?id=<%=rs.getString(1)%>">Hapus <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          <%
              }
             }
             catch(Exception e){
                System.out.println(e);
}
          %>
        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>