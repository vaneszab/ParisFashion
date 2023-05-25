<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%@include file="adminHeader.jsp"%>
<%@include file="../footer.jsp"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Tambah Produk</title>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,300;0,600;0,700;1,300&display=swap');
    h3{
            color: #264143;
    }
    *{
             font-family: 'Poppins', sans-serif;
    }
    body{
            background-color:  #eddcd9;

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
.input-style{
        border-style: solid;
        border-color:#de5499;
        border-radius: 5px;
        background-color:#eddcd9 ;
        color:#264143;
}
.alert{
    color:#de5499;
    
}
</style>
</head>
<body>
      <div style="color: #264143; text-align: center; font-size: 30px; font-weight: 700;">Tambah Produk <i class="fas fa-plus-square"></i></div>
<%
    String msg=request.getParameter("msg");
    if("done".equals(msg)){
        %> 
<h3 class="alert">Produk Berhasil Ditambahkan</h3>
<%}%>
<% if("wrong".equals(msg)){
    %>
<h3 class="alert">Ada Kesalahan, coba Ulangi</h3>
<%}%>
<%
    int id=1;
try {
    Connection con = KoneksiDatabase.getCon();
    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("select max(id) from product");
    while(rs.next()){
        id=rs.getInt(1);
        id=id+1;
    }
}
catch(Exception e){}
%>
<form action="addNewProductAction.jsp" method="post">
<h3 style="color: #de5499;">Product ID:<%out.println(id);%> </h3>
<input type="hidden" name="id" value="<%out.println(id);%>">

<div class="left-div">
 <h3>Masukkan Nama</h3>
 <input class="input-style" type="text" name="name" placeholder="Masukkan Nama" required>
<hr>
</div>

<div class="right-div">
<h3>Masukkan Kategori</h3>
 <input class="input-style" type="number" name="price" placeholder="Masukkan Kategori" required>
<hr>
</div>

<div class="left-div">
<h3>Masukkan Harga</h3>
 <input class="input-style" type="number" name="stok" placeholder="Masukkan Harga" required>
<hr>
</div>

<div class="right-div">
<h3>Status Aktif</h3>
<select class="input-style" name="active">
    <option value="Yes">Ya</option>
    <option value="No">Tidak</option>
</select> 
<hr>
</div>
<button class="button" style="background-color: #e99f4c; font-weight: 700; color:#264143;">Simpan <i class='far fa-arrow-alt-circle-right'></i></button>
</form>
</body>
<br><br><br>
</body>
</html>