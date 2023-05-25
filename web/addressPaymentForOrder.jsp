<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src="https://kit.fontawesome.com/d19bd3324e.js" crossorigin="anonymous"></script>
<title>Proses Order</title>
<script>
    if(window.history.forward(1)!= null)
        window.history.forward(1);</script>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,600;0,700;1,300&display=swap');
    h3{
            color: #264143;
    }
    *{
             font-family: 'Poppins', sans-serif;
    }
    body{
            background-color:  #edf2f4;

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

.input-style{
        border-style: solid;
        border-color:#d62828;
        border-radius: 5px;
        background-color:#edf2f4 ;
        color:#264143;
}
</style>
</head>
<body>
    <div style="color: #d62828; text-align: center; font-size: 30px; font-weight: 700; margin-top: 20px;">Proses Order <i class='fas fa-cart-arrow-down'></i></div>
<br>
<table>
<thead>
<%
    String email = session.getAttribute("email").toString();
    int total=0;
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
          <th scope="col"><a href="keranjang.jsp" style="font-family: 'Poppins', sans-serif;"><i style="color:#d62828;font-family: 'Poppins', sans-serif;"> Kembali</i></a></th>
          <th scope="col" style="background-color: #d62828; color:#fff;">Total: <i class="fa fa-money"></i> <%out.println(total);%> </th>
          </tr>
        </thead>
        <thead>
          <tr>
          <th scope="col">No</th>
            <th scope="col">Nama Produk</th>
            <th scope="col"><i class="fa fa-money"></i> Harga</th>
            <th scope="col">Jumlah</th>
            <th scope="col">Sub Total</th>
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
            <td><i class="fa fa-money"></i> <%=rs.getString(3) %></td>
            <td> <%=rs.getString(8) %></td>
            <td><i class="fa fa-money"></i> <%=rs.getString(10) %></td>
            </tr>
         <% 
             }
         ResultSet rs2 = st.executeQuery("select * from users where email='"+email+"'");
         while(rs2.next())
            {
         %>
        </tbody>
      </table>
      
<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post">
 <div class="left-div">
 <h3>Masukkan Alamat</h3>
 <input class="input-style" type="text" name="address" value="<%=rs2.getString(7)%>" placeholder="Masukkan Alamat" required>
 </div>

<div class="right-div">
<h3>Masukkan Kota</h3>
 <input class="input-style" type="text" name="city" value="<%=rs2.getString(8)%>" placeholder="Masukkan Kota" required>
</div> 

<div class="left-div">
<h3>Masukkan Provinsi</h3>
 <input class="input-style" type="text" name="state" value="<%=rs2.getString(9)%>" placeholder="Masukkan Provinsi" required>
</div>

<div class="right-div">
<h3>Masukkan Negara</h3>
 <input class="input-style" type="text" name="country" value="<%=rs2.getString(10)%>" placeholder="Masukkan Negara" required>
</div>
<hr style="width: 100%">
<div class="left-div">
<h3>Metode Pembayaran</h3>
    <select class="input-style" name="paymentMethod">
        <option value="Cash On Delivery(COD)">Cash On Delivery(COD)</option>
        <option value="Online Payment">Pembayaran Online</option>
</select>
</div>

<div class="right-div">
<h3>Bayar Online di Website Ini</h3>
<input class="input-style" type="text" name="transactionId" placeholder="Masukkan ID Transaksi">
<h3 style="color: #264143; font-style: italic; font-size: 15px; margin-left: 30px;margin-top:20px; font-weight:400;">*Jika anda memilih Pembayaran Online, Harap masukkan ID Transaksi. Jika Tidak, biarkan kosong.</h3>
</div>
<hr style="width: 100%">

<div class="left-div">
<h3>Nomor Handphone</h3>
<input class="input-style" type="text" name="mobileNumber" value="<%=rs2.getString(3)%>" placeholder="Masukkan Nomor Handphone" required>
</div>
<div class="right-div">
<h3 style="color: #264143; font-style: italic; font-size: 15px; margin-left: 30px;margin-top:20px; font-weight:400;">*Jika anda memasukkan ID Transaksi yang salah, maka pesanan akan kami cancel</h3>
<button class="button" type="submit" style="background-color: #d62828;">Simpan dan Proses Faktur <i class='far fa-arrow-alt-circle-right'></i></button>
</div>
</form>
<%
    }
}
  catch(Exception e)
   {
     System.out.println(e);
   }
%>
      <br>
      <br>
      <br>

</body>
</html>