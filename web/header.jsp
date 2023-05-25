<%@page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/home-style.css">
<script src="https://kit.fontawesome.com/d19bd3324e.js" crossorigin="anonymous"></script>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@200;300;600;700&display=swap');
        body {
  font-family: 'Poppins', sans-serif;
  line-height: 1.25;
  background-color: #eddcd9;
}
a
{
	text-decoration: none;
}
.sticky {
  position: -webkit-sticky;
  position: sticky;
  top: 0;
}

/*Header Css*/
* {box-sizing: border-box;}
    
    body {
      margin: 0;
      font-family:'Poppins', sans-serif;
    }
    
    .topnav {
       overflow: hidden;
      background-color: #de5499;
      transform: translateY(-20px);
     
    }
    .topnav a {
      float: left;
      display: block;
      color: #f2ebe9;
      text-align: center;
      padding: 20px 16px;
      margin-top: -20px;
      text-decoration: none;
      font-size: 17px;
    }
    
    .topnav a:hover {
      background-color: #eddcd9;
      color: #de5499;
    }
    
    .topnav a.active {
      background-color: #2196F3;
      color: white;
    }
    
    .search-container {
      float: right;
    }
    
    .topnav input[type=text] {
      padding: 6px;
      margin-top: 8px;
      font-size: 17px;
      border: none;
    }
    
    .search-container button {
      float: right;
      padding: 6px 10px;
      margin-top: 8px;
      margin-right: 16px;
      background: #ddd;
      font-size: 17px;
      border: none;
      cursor: pointer;
    }
    
    .search-container button:hover {
      background: #ccc;
    }
    
    @media screen and (max-width: 600px) {
      .search-container {
        float: none;
      }
      .topnav a, .topnav input[type=text], .search-container button {
        float: none;
        display: block;
        text-align: left;
        width: 100%;
        margin: 0;
        padding: 14px;
      }
      .topnav input[type=text] {
        border: 1px solid #ccc;  
      }
      
    }
/*footer*/
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color:#ccc;
   color:black;
   text-align: center;
}

.h2222 {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  box-sizing: border-box;
  border: none;
  background-color: #3CBC8D;
  color: white;
}
.gpd-navbar{
  width:100%;
}
#ikqk{
  padding:0;
  max-width:1202px;
  width:800px;
  display:none;
}
#c1263{
  font-family: 'Poppins', sans-serif;
  height:40px;
  background-color:#f2ebe9;
  font-weight:700;
  color:#de5499;
}
#ime3y{
  padding:100px 0 100px 0;
  border:1px solid #EBEBEB;
}
#iuvhp{
  text-align:center;
  font-family:'Poppins', sans-serif;
  margin:-103px -0.6041999999999987px 0 -1.6041999999999987px;
  width:1837px;
  height:600px;
  padding:3px 0 1px 0;
  background-color:#eddcd9 ;
  max-width:1871px;
}
.gpd-navbar{
  width:100%;
}
.gpd-navbar{
  width:100%;
}
.gpd-navbar{
  width:100%;
}
body{
  font-family: 'Poppins', sans-serif;
}
.gpd-navbar{
  width:100%;
}
.gpd-navbar{
  width:100%;
}
#i5osuf{
  color:black;
  position:absolute;
  width:78px;
  height:37px;
  transform: translateX(0px) translateY(0px);
  top:2px;
  left:20px;
  padding:0 0 0 0;
  margin:1px 0 0 -1px;
}
#irioyd{
  text-align:center;
  position:absolute;
  top:4px;
  z-index:1;
  padding:5px 10px 10px 10px;
  margin:0 0 0 541px;
}
#ii5cst{
  position:absolute;
  width:31px;
  color: pink;
  height:31px;
  color:#de5499;
  left:758px;
  transform: translateX(-311px) translateY(3px);
  margin:0 0 0 688px;
}
#i3a34f{
  position:absolute;
  width:31px;
  height:31px;
  color:#de5499;
  left:755px;
  transform: translateX(-270px) translateY(3px);
  margin:0 0 0 693px;
}
#ic49bk{
  position:absolute;
  width:31px;
  height:31px;
  color:#de5499;
  left:750px;
  transform: translateX(-228.5px) translateY(3px);
  margin:0 0 0 697px;
}

.swiper-slider .swiper-pagination-bullet-active{
  background:currentColor !important;
}
.swiper-slider .swiper-pagination-progressbar-fill{
  background-color:currentColor !important;
}

@keyframes fadeEffect{
  from{
    opacity:0;
  }
  to{
    opacity:1;
  }
}
</style>
</head>
    <!--Header-->
<div id="c1263" class="gpd-navbar">
  <img id="i5osuf" src="img/logo.png"/>
  <div id="irioyd" class="gpd-text">Toko Online Manasye
  </div>
  <span id="ic49bk" class="gpd-icon"><i class="fab fa-whatsapp fa-2x"></i>
    </span>
  <span id="i3a34f" class="gpd-icon"><i class="fab fa-instagram fa-2x"></i>
    </span>
  <span id="ii5cst" class="gpd-icon"><i class="fab fa-facebook-square fa-2x"></i>
    </span>
</div>
    <br>
    <div class="topnav sticky">
        <%
            String email=session.getAttribute("email").toString();%>
            <h2><a href=""><%out.println(email);%> <i class='fas fa-user-alt'></i></a></h2>
            <a href="home.jsp">Beranda <i class="fas fa-home"></i></i></a>
            <a href="myCart.jsp">Keranjang <i class='fas fa-cart-arrow-down'></i></a>
            <a href="myOrders.jsp">Pesanan <i class='fab fa-elementor'></i></a>
            <a href="changeDetails.jsp">Ganti Info <i class="fa fa-edit"></i></a>
            <a href="messageUs.jsp">Kirim Pesan <i class='fas fa-comment-alt'></i></a>
            <a href="about.jsp">Tentang Kami <i class="fa fa-address-book"></i></a>
            <a href="logout.jsp">Logout <i class='fas fa-share-square'></i></a>
          </div>
           
           <br>
           <!--table-->
