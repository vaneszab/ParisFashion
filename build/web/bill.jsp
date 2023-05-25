<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="css/bill.css">
<script src="https://kit.fontawesome.com/d19bd3324e.js" crossorigin="anonymous"></script>
<title>Faktur Pembelian</title>
<style>
     @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;500;600;700&display=swap');
        body {
   font-family: 'Poppins', sans-serif;
   font-weight:700;
  line-height: 1.25;
  color:#003049;
  background-color: #edf2f4 ;
}

/*footer*/
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#ccc;
   color:#f2ebe9;
   text-align: center;
}





.input-style {
  width: 90%;
  padding: 12px 20px;
  margin-left:5%;
  box-sizing: border-box;
  border: none;
  background-color:white;
  color: black;
  font-size: 16px;
}

input[type=text]:focus, textarea:focus,button:focus{
  outline: 4px solid orange;
  background-color:rgb(224, 255, 219);     /* oranges! yey */
}

.button {
  background-color: aqua;
  border: none;
  color: black;
  padding: 12px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 14px;
  margin: 4px 2px;
  transition-duration: 0.4s;
  cursor: pointer;
  font-size: 16px;
  width: 40%;
   border-radius: 25px;
}

.button:hover {
  background-color: pink;
  color: black;
}

hr
{
	width: 100%
}
h3
{
	text-align: center;
	color: black;
}
.alert
{
	color:yellow;
}

.profile-style
{
	border-style: dotted;
	
}

.left-button
{
	width: 48%;
	display:inline-block;
}

.right-button
{
	float:right;
	width: 48%;
	display:inline-block;
}

.left-div
{
	width: 33.33%;
	display:inline-block;
}

.right-div
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
.right-div-right
{
	float:right;
	width: 33.33%;
	display:inline-block;
}
#customers {
 font-family: 'Poppins', sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #edf2f4;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: white;
  color: black;
}
h3{
    color:#f2ebe9;
    font-weight:600;
}
h2{
    color:#264143;
    text-align: center;
    padding-top: 5px;
}
#customers2 {
    margin-left: 20px;
    margin-top:50px;
  font-family: 'Poppins', sans-serif;
  border-collapse: collapse;
  width: 50%;
  table-layout: fixed;
  background-color: #edf2f4;
  border-radius: 5px;
  overflow:hidden;
  color:#264143;
}

#customers2 td, #customers2 th {
  border: 3px solid #d62828;
  padding: 8px;
}

#customers2 tr:nth-child(even){background-color: #edf2f4;}

#customers2 tr:hover {background-color: #ddd;}

#customers2 th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #edf2f4;
  color: white;
}
table {
    border:none;
  border-collapse: collapse;
  margin-top: -300px;
  margin-left: 40px;
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
  background-color: #edf2f4;
  border-bottom: 1px solid #d62828;
  border-top:none;
  padding: .35em;
  border-radius: 10px;
  overflow:hidden;
  color:#003049;
}

table th,
table td {
  padding: .625em;
  text-align: center;
  font-size: 1.1em;
}

element.style{
    background-color:white;
}
table th {
  font-size: 1.1em;
  letter-spacing: .1em;
  text-transform: uppercase;
  background-color: white;
  
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.1em;
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
    background-color: #edf2f4;
    font-size: 1.5em;
  }
  
  table tr {
    border-bottom: 2px solid #ddd;
    display: block;
    margin-bottom: .625em;
    font-size: 1.1em;
    
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
     background-color: #edf2f4;
     font-size: 1.1em;
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
    font-size: 1.5em;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}
</style>
</head>
<body>
<%
String email=session.getAttribute("email").toString();
try
{
    int total=0;
    int sno=0;
    Connection con= KoneksiDatabase.getCon();
    Statement st=con.createStatement();
    ResultSet rs=st.executeQuery("select sum(total) from cart where email='"+email+"' and status='bill'");
    while(rs.next())
    {
        total=rs.getInt(1);
    }
    ResultSet rs2=st.executeQuery("select * from users inner join cart where cart.email='"+email+"' and cart.status='bill'");
    while(rs2.next())
    {
 
%>
<h2>Faktur Pesanan ParisFashion</h2>
<table id="customers2">
  <tr>
    <td>Nama</td>
    <td><%=rs2.getString(1) %></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><%out.println(email); %></td>
  </tr>
  <tr>
    <td>Nomor Handphone</td>
    <td><%=rs2.getString(20)%></td>
  </tr>
  <tr>
    <td>Tanggal Pesan</td>
    <td><%=rs2.getString(21)%></td>
  </tr>
  <tr>
    <td>Metode Pembayaran</td>
    <td> <%=rs2.getString(23) %></td>
  </tr>
  <tr>
    <td>Tanggal Perkiraan Pengiriman</td>
    <td><%=rs2.getString(22)%></td>
  </tr>
  <tr>
    <td>ID Transaksi</td>
    <td><%=rs2.getString(24)%></td>
  </tr>
  <tr>
    <td>Kota</td>
    <td><%=rs2.getString(17)%></td>
  </tr>
  <tr>
    <td>Alamat</td>
    <td> <%=rs2.getString(16)%></td>
  </tr>
  <tr>
    <td>Provinsi</td>
    <td> <%=rs2.getString(18)%></td>
  </tr>
   <tr>
    <td>Negara</td>
    <td> <%=rs2.getString(19)%></td>
  </tr>
</table>
    <img alt="bill" src="img/bill.svg" style="width:550px; transform: translateX(900px) translateY(-400px)">
<%break;}

%>
	
<table>
<h2 style="transform:translateY(-300px);">Detail Produk</h2>
  <tr>
    <th>No</th>
    <th>Nama Produk</th>
    <th>Harga</th>
    <th>Jumlah</th>
     <th>Sub Total</th>
  </tr>
  <%
  ResultSet rs1=st.executeQuery("select *from cart inner join product where cart.product_id=product.id and cart.email='"+email+"' and cart.status='bill'");
  while(rs1.next())
  {
      sno=sno+1;
%>
  <tr>
    <td><%out.println(sno);%></td>
    <td><%=rs1.getString(17)%></td>
    <td><%=rs1.getString(18)%></td>
    <td><%=rs1.getString(3)%></td>
     <td><%=rs1.getString(5)%></td>
  </tr>
  <tr>
<%} %>
</table>
<h2 style="color:  #d62828;">Total: <i class="fa fa-money"></i> <%out.println(total);%> </h2>
<a href="continueShopping.jsp"><button class="button left-button" style="background-color:#d62828; color:#fff ;font-family:'Poppins', sans-serif; font-weight:700;">Lanjut Belanja</button></a>
<a onclick="window.print();"><button class="button right-button" style="background-color:#d62828; color:#fff ;font-family:'Poppins', sans-serif; font-weight:700;">Cetak</button></a>
<br><br><br><br>
<%
}
catch(Exception e)
{
    System.out.println(e);
}%>
</body>
</html>