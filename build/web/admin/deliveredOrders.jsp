<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp" %>
<%@include file="../footer.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="../css/ordersReceived-style.css">
<title>Pesanan Diantar</title>
<style>
.th-style
{ width: 25%;}
@import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;600;700&display=swap');
      *{
          font-family: 'Poppins', sans-serif;
      }
.th-style
{ width: 25%;}
h3
{
	color: #de5499;
	text-align: center;
}
table {
    border:none;
  border-collapse: collapse;
  margin-top: 20px;
  padding: 10px;
  width: 75%;
  /*margin-left: 5%;*/
  table-layout:auto;
  border-radius: 10px;
  overflow:hidden;
  font-size: 15px;
  font-family: 'Poppins', sans-serif;
  
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
<div style="color: #264143; text-align: center; font-size: 30px; font-weight: 700;">Pesanan Diantar <i class='fas fa-dolly'></i></div>

<table id="customers">
          <tr>
          <th>Nomor HP</th>
            <th scope="col">Nama Produk</th>
            <th scope="col"><i class="fa fa-money"></i>Jumlah</th>
            <th scope="col"><i class="fa fa-money"></i> Sub Total</th>
            <th>Alamat</th>
            <th scope="col">Tanggal Pesan</th>
             <th scope="col">Perkiraan Pengiriman</th>
             <th scope="col">Metode Pembayaran</th>
              <th scope="col">Status</th>
          </tr>
        <%
        try
        {
            Connection con = KoneksiDatabase.getCon();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from cart inner join product where cart.product_id=product.id and cart.orderDate is not NULL and cart.status='Delivered'");
            while(rs.next())
            {

        %>
        
          <tr>
          <td><%=rs.getString(10)%></td>
            <td><%=rs.getString(17)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(5)%></td>
                <td><%=rs.getString(6)%></td>
               <td><%=rs.getString(7)%></td>
                <td><%=rs.getString(8)%></td>
                 <td><%=rs.getString(9)%></td>
             <td><%=rs.getString(11)%></td>
              <td><%=rs.getString(12)%></td>
               <td><%=rs.getString(13)%></td>
               <td><%=rs.getString(14)%></td>
               <td><%=rs.getString(15)%></td>
              </tr>
         <%
         }}
         catch(Exception e)    
        {
        System.out.println(e);
}%>
        </table>
      <br>
      <br>
      <br>

</body>
</html>