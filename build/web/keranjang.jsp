<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ParisFashion</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">

    <!-- custom css file link  -->
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;300;400;500;600&display=swap');

:root{
    --orange:#d62828;
    --black:#003049;
    --light-color:#d62828;
    --box-shadow:0 .5rem 1.5rem rgba(0,0,0,.1);
    --border:.2rem solid rgba(0,0,0,.1);
    --outline:.1rem solid rgba(0,0,0,.1);
    --outline-hover:.2rem solid var(--black);
}

*{
    font-family: 'Poppins', sans-serif;
    margin:0; padding:0;
    box-sizing: border-box;
    outline: none; border:none;
    text-decoration: none;
    transition: all .2s linear;
}

html{
    font-size: 62.5%;
    overflow-x: hidden;
    scroll-behavior: smooth;
    scroll-padding-top: 7rem;
}

body{
    background:#edf2f4;
}

section{
    padding:2rem 9%;
}

.heading{
    text-align: center;
    padding:2rem 0;
    padding-bottom: 3rem;
    padding-top: 13rem;
    font-size: 3.5rem;
    color:var(--black);
}

.heading span{
    background: var(--orange);
    color:#fff;
    display: inline-block;
    padding:.5rem 3rem;
    clip-path: polygon(100% 0, 93% 50%, 100% 99%, 0% 100%, 7% 50%, 0% 0%);
}

.btnex{
    margin-top: 0.8rem;
    padding:.7rem 3rem;
    font-size: 1.7rem;
    border-radius: .5rem;
    border:.2rem solid var(--black);
    color:var(--black);
    cursor: pointer;
    background: none;
    display: inline-block;
}
.btnex:hover{
    background: var(--orange);
    color:#fff;
}
.btn{
    margin-top: 1rem;
    display: inline-block;
    padding:.8rem 3rem;
    font-size: 1.7rem;
    border-radius: .5rem;
    border:.2rem solid var(--black);
    color:var(--black);
    cursor: pointer;
    background: none;
}

.btn:hover{
    background: var(--orange);
    color:#fff;
}

.header{
    position: fixed;
    top:0; left:0; right: 0;
    z-index: 1000;
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding:2rem 5%;
    background:#fff;
    box-shadow: var(--box-shadow);
}
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;
  border-radius:10px;
  font-size: 15px;
  width : 1520px;
  margin-bottom :-30px;
  margin-top : 40px;
  margin-left: 40px;
}
.closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

/* When moving the mouse over the close button */
.closebtn:hover {
  color: black;
}
.header .logo{
    font-size: 2.5rem;
    font-weight: bolder;
    color:var(--black);
}

.header .logo i{
    color:var(--orange);
}


.header .navbar a{
    font-size: 1.7rem;
    margin:0 2rem;
    color:var(--black);
}

.header .navbar a:hover{
    color:var(--orange);
}

h3
{
	color: #de5499;
	text-align: center;
}
table {
    border:none;
  border-collapse: collapse;
  margin-top: 50px;
  margin-left: 40px;
  padding: 10px;
  width: 95%;
  /*margin-left: 5%;*/
  table-layout: fixed;
  border-radius: 10px;
  overflow:hidden;
  
}

table caption {
  font-size: 2em;
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
  font-size: 1.5em;
}

element.style{
    background-color:white;
}
table th {
  font-size: 1.5em;
  letter-spacing: .1em;
  text-transform: uppercase;
  background-color: white;
  
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.5em;
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
    font-size: 1.5em;
    
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
     background-color: #edf2f4;
     font-size: 1.5em;
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







/* media queries  */

@media (max-width:991px){

    html{
        font-size: 55%;
    }

    .header{
        padding:2rem;
    }

    section{
        padding:2rem;
    }

}

@media (max-width:768px){

    #menu-btn{
        display: inline-block;
    }

    .header .search-form{
        width:90%;
    }

    .header .navbar{
        position: absolute;
        top:110%; right:-110%;
        width:30rem;
        box-shadow: var(--box-shadow);
        border-radius: .5rem;
        background: #fff;
    }

    .header .navbar.active{
        right:2rem;
        transition: .4s linear;
    }

    .header .navbar a{
        font-size: 2rem;
        margin:2rem 2.5rem;
        display: block;
    }

}

@media (max-width:450px){

    html{
        font-size: 50%;
    }

    .heading{
        font-size: 2.5rem;
    }

    .footer{
        text-align: center;
    }

    .footer .box-container .box .payment-img{
        margin: 2rem auto;
    }

}
    </style>

</head>
<body>
    
<!-- header section starts  -->
<h1 class="heading"><span>Keranjang</span> Anda</h1>

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-tshirt"></i> ParisFashion </a>

    <nav class="navbar">
  
        <a href="hometes.jsp">Home</a>
        <a href="pesanan.jsp">Pesanan</a>
        <a href="logout.jsp">Logout</a>
              <%
            String email=session.getAttribute("email").toString();%>
       <a href="" class="logo"><i class="fas fa-user-alt"></i><%out.println(email);%> </a>
    </nav>

</header>


<%
 String msg = request.getParameter("msg");
 if("notPossible".equals(msg))
 {
%>
<h3 class="alert">Barang Hanya ada 1, klik Hapus Barang</h3>
<%} %>
<%
if("inc".equals(msg))
{
%>
<h3 class="alert">Jumlah Barang Berhasil Ditambahkan</h3>
<%} %>
<%
if("dec".equals(msg))
{
%>
<h3 class="alert">Jumlah Barang Berhasil Dikurangi</h3>
<%} %>
<%
if("removed".equals(msg))
{
%>
<div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sukses!</strong> Produk Berhasil Dihapus.
</div>
<%} %>
<table>
<thead>
<%
int total =0;
int sno=0;
try 
{
 Connection con=KoneksiDatabase.getCon();
 Statement st = con.createStatement();
 ResultSet rs1=st.executeQuery("select sum(total) from cart where email='"+email+"' and address is NULL");
 while(rs1.next())
 {
     total=rs1.getInt(1);
 }  
%>
          <tr>
            <th scope="col" style="background-color: #d62828; color:#fff;">Total: <i class="fa fa-money"></i><%out.println(total);%> </th>
            <%if(total>0){%><th scope="col"><a href="addressPaymentForOrder.jsp" style="color:#d62828;">Proses Order</a></th><%}%>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">No</th>
            <th scope="col">Nama Produk</th>
            <th scope="col"><i class="fa fa-money"></i> Harga</th>
            <th scope="col">Jumlah</th>
            <th scope="col">Sub Total</th>
            <th scope="col">Hapus <i class='fas fa-trash-alt'></i></th>
          </tr>
        </thead>
        <tbody>
      <%
          ResultSet rs= st.executeQuery("select * from product inner join cart on product.id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
          while(rs.next())
          {
      %>
          <tr>
           <%sno=sno+1; %>
           <td><%out.println(sno);%></td>
            <td><%=rs.getString(2) %></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(3) %> </td>
            <td><%=rs.getString(8) %></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(9) %></td>
            <td><a href="removeFromCart.jsp?id=<%=rs.getString(1)%>">Hapus <i class='fas fa-trash-alt'></i></a></td>
          </tr>
          <%          
    }
}
catch(Exception e)
{}
          %>

        </tbody>
      </table>
      <br>
      <br>
      <br>

</body>
</html>
