<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<html>
<head>
<link rel="stylesheet" href="../css/addNewProduct-style.css">
<title>Edit Produk</title>
<style>
.back
{
  color: white;
  margin-left: 2.5%
}
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
   
 <%
     String id=request.getParameter("id");
     try{
         Connection con = KoneksiDatabase.getCon();
         Statement st=con.createStatement();
         ResultSet rs = st.executeQuery("select * from product where id='"+id+"'");
         while(rs.next()){      
         
 %>    
 <h1 style="color: #d62828;margin-top:50px;margin-bottom: 50px;" class="heading"> <center>Edit Produk </center></h1>
 <form action="editProductAction.jsp" method="post">
     <input type="hidden" name="id" value="<% out.println(id);%>">
     <div class="left-div"><center>
 <h3 style="margin-bottom:2px;">Edit Nama</h3>
<input class="input-style" type="text" name="name" value="<%=rs.getString(2)%>" style="width:300px;height:40px;font-size:15px;padding: 20px;background-color:#edf2f4;border-color:#d62828;" required>
<hr>
         </center>
</div>

<div class="left-div"><center>
 <h3 style="margin-bottom:2px;">Edit Harga</h3>
<input class="input-style" type="text" name="price" value="<%=rs.getString(3)%>" style="width:300px;height:40px;font-size:15px;padding: 20px;background-color:#edf2f4;border-color:#d62828;" required>
<hr>
         </center>
</div>

<div class="left-div"><center>
 <h3 style="margin-bottom:2px;">Edit Stok</h3>
<input class="input-style" type="text" name="stok" value="<%=rs.getString(5)%>" style="width:300px;height:40px;font-size:15px;padding: 20px;background-color:#edf2f4;border-color:#d62828;" required>
<hr>
         </center>
</div>

<center><button class="button"  style="background-color: #d62828; font-weight: 700; color:white;font-size:15px;width:300px;height:40px; border-color: #d62828;border-radius: 10px;">Simpan <i class='far fa-arrow-alt-circle-right'></i></button></center>
</form>
<%}
}
catch(Exception e){
System.out.println(e);
}
%>

</body>
<br><br><br>
</body>
</html>