<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>

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
    padding-top: 10rem;
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

.header .icons div{
    height: 100rem;
    width: 4.5rem;
    line-height: 4.5rem;
    border-radius: .5rem;
    background: #eee;
    color:var(--black);
    font-size: 2rem;
    margin-left: .3rem;
    cursor: pointer;
    text-align: center;
}

.header .icons div:hover{
    background: var(--orange);
    color:#fff;
}

#menu-btn{
    display: none;
}

.header .search-form{
    position: absolute;
    top:110%; right:-110%;
    width: 50rem;
    height:5rem;
    background: #fff;
    border-radius: .5rem;
    overflow: hidden;
    display: flex;
    align-items: center;
    box-shadow: var(--box-shadow);
}

.header .search-form.active{
    right:2rem;
    transition: .4s linear;
}

.header .search-form input{
    height:100%;
    width:100%;
    background: none;
    text-transform: none;
    font-size: 1.6rem;
    color:var(--black);
    padding:0 1.5rem;
}

.header .search-form label{
    font-size: 2.2rem;
    padding-right: 1.5rem;
    color:var(--black);
    cursor: pointer;
}

.header .search-form label:hover{
    color:var(--orange);
}

.header .shopping-cart{
    position: absolute;
    top:110%; right:-110%;
    padding:1rem;
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    width:35rem;
    background: #fff;
}

.header .shopping-cart.active{
    right:2rem;
    transition: .4s linear;
}

.header .shopping-cart .box{
    display: flex;
    align-items: center;
    gap:1rem;
    position: relative;
    margin:1rem 0;
}

.header .shopping-cart .box img{
    height:10rem;
}

.header .shopping-cart .box .fa-trash{
    font-size: 2rem;
    position: absolute;
    top:50%; right:2rem;
    cursor: pointer;
    color:var(--light-color);
    transform: translateY(-50%);
}

.alert {
  padding: 20px;
  background-color: #15CD72;
  color: white;
  border-radius:10px;
  font-size: 15px;
}

.closebtn {
  margin-left: 13px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 30px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}

.header .shopping-cart .box .fa-trash:hover{
    color:var(--orange);
}

.header .shopping-cart .box .content h3{
    color:var(--black);
    font-size: 1.7rem;
    padding-bottom: 1rem;
}

.header .shopping-cart .box .content span{
    color:var(--light-color);
    font-size: 1.6rem;
}

.header .shopping-cart .box .content .quantity{
    padding-left: 1rem;
}

.header .shopping-cart .total{
    font-size: 2.5rem;
    padding:1rem 0;
    text-align: center;
    color:var(--black);
}

.header .shopping-cart .btn{
    display: block;
    text-align: center;
    margin:1rem;
}

.header .login-form{
    position: absolute;
    top:110%; right:-110%;
    width:35rem;
    box-shadow: var(--box-shadow);
    padding:2rem;
    border-radius: .5rem;
    background: #fff;
    text-align: center;
}

.header .login-form.active{
    right:2rem;
    transition: .4s linear;
}

.header .login-form h3{
    font-size: 2.5rem;
    color: var(--black);
}

.header .login-form .box{
    width: 100%;
    margin:.7rem 0;
    background:#eee;
    border-radius: .5rem;
    padding:1rem;
    font-size: 1.6rem;
    color:var(--black);
    text-transform: none;
}

.header .login-form p{
    font-size: 1.4rem;
    padding:.5rem 0;
    color:var(--light-color);
}

.header .login-form p a{
    color:var(--orange);
    text-decoration: underline;
}

.home{
    display: flex;
    align-items: center;
    justify-content: center;
    background: url(img/header1.jpg) no-repeat;
    background-position: center;
    background-size: cover;
    padding-top: 17rem;
    padding-bottom: 10rem;
}

.home .content{
    text-align: center;
    width:60rem;
}

.home .content h3{
    color:var(--black);
    font-size: 3rem;
}

.home .content h3 span{
    color:var(--orange);
}

.home .content p{
    color:var(--light-color);
    font-size: 1.7rem;
    padding:1rem 0;
    line-height: 1.8;
}

.features .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:1.5rem;
}

.features .box-container .box{
    padding:5rem 2rem;
    background: #fff;
    outline: var(--outline);
    outline-offset: -1rem;
    text-align: center;
    box-shadow: var(--box-shadow);
}

.features .box-container .box:hover{
    outline: var(--outline-hover);
    outline-offset: 0rem;
}

.features .box-container .box img{
    margin:1rem 0;
    height: 15rem;
}

.features .box-container .box h3{
    font-size: 2.5rem;
    line-height: 1.8;
    color:var(--black);
}

.features .box-container .box p{
    font-size: 1.5rem;
    line-height: 1.8;
    color:var(--light-color);
    padding:1rem 0;
}

.products .product-slider{
    padding:1rem;
}

.products .product-slider:first-child{
    margin-bottom: 2rem;
}

.products .product-slider .box{
    background: #fff;
    border-radius: .5rem;
    text-align: center;
    padding:3rem 2rem;
    outline-offset: -1rem;
    outline: var(--outline);
    box-shadow: var(--box-shadow);
    transition: .2s linear;
}

.products .product-slider .box:hover{
    outline-offset: 0rem;
    outline: var(--outline-hover);
}

.products .product-slider .box img{
    height:20rem;
}

.products .product-slider .box h3{
    font-size: 2.5rem;
    color:var(--black);
}

.products .product-slider .box .price{
    font-size: 2rem;
    color:var(--light-color);
    padding:.5rem 0;
}

.products .product-slider .box .stars i{
    font-size: 1.7rem;
    color:var(--orange);
    padding:.5rem 0;
}

.categories .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(26rem, 1fr));
    gap:1.5rem;
}

.categories .box-container .box{
    padding:3rem 2rem;
    border-radius: .5rem;
    background:#fff;
    box-shadow: var(--box-shadow);
    outline:var(--outline);
    outline-offset: -1rem;
    text-align: center;
}

.categories .box-container .box:hover{
    outline:var(--outline-hover);
    outline-offset: 0rem;
}

.categories .box-container .box img{
    margin:1rem 0;
    height:30rem;
}

.categories .box-container .box h3{
   font-size: 2rem;
   color:var(--black);
   line-height: 1.8;
}

.categories .box-container .box p{
    font-size: 1.7rem;
    color:var(--light-color);
    line-height: 1.8;
    padding:1rem 0;
}

.review .review-slider{
    padding:1rem;
}

.review .review-slider .box{
    background: #fff;
    border-radius: .5rem;
    text-align: center;
    padding:3rem 2rem;
    outline-offset: -1rem;
    outline: var(--outline);
    box-shadow: var(--box-shadow);
    transition: .2s linear;
}

.review .review-slider .box:hover{
    outline:var(--outline-hover);
    outline-offset: 0rem;
}

.review .review-slider .box img{
    height:10rem;
    width:10rem;
    border-radius: 50%;
}

.review .review-slider .box p{
    padding:1rem 0;
    line-height: 1.8;
    color:var(--light-color);
    font-size: 1.5rem;
}

.review .review-slider .box h3{
    padding-bottom: .5rem;
    color:var(--black);
    font-size: 2.2rem;
}

.review .review-slider .box .stars i{
    color:var(--orange);
    font-size: 1.7rem;
}

.blogs .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(30rem, 1fr));
    gap:1.5rem;
}

.blogs .box-container .box{
    overflow: hidden;
    border-radius: .5rem;
    box-shadow: var(--box-shadow);
    background:#fff;
}

.blogs .box-container .box img{
    height:25rem;
    width:100%;
    object-fit: cover;
}

.blogs .box-container .box .content{
    padding:2rem;
}

.blogs .box-container .box .content .icons{
    display: flex;
    align-items: center;
    justify-content: space-between;
    padding-bottom: 1.5rem;
    margin-bottom: 1rem;
    border-bottom: var(--border);
}

.blogs .box-container .box .content .icons a{
    color:var(--light-color);
    font-size: 1.5rem;
}

.blogs .box-container .box .content .icons a:hover{
    color:var(--black);
}

.blogs .box-container .box .content .icons a i{
    color:var(--orange);
    padding-right: .5rem;
}

.blogs .box-container .box .content h3{
    line-height: 1.8;
    color:var(--black);
    font-size: 2.2rem;
    padding:.5rem 0;
}

.blogs .box-container .box .content p{
    line-height: 1.8;
    color:var(--light-color);
    font-size: 1.5rem;
    padding:.5rem 0;
}

.footer{
    background: #fff;
}

.footer .box-container{
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
    gap:1.5rem;
}

.footer .box-container .box h3{
    font-size: 2.5rem;
    color:var(--black);
    padding:1rem 0;
}

.footer .box-container .box h3 i{
    color:var(--orange);
}

.footer .box-container .box .links{
    display: block;
    font-size: 1.5rem;
    color:var(--light-color);
    padding:1rem 0;
}

.footer .box-container .box .links i{
    color:var(--orange);
    padding-right: .5rem;
}

.footer .box-container .box .links:hover i{
    padding-right: 2rem;
}


.footer .box-container .box p{
    line-height: 1.8;
    font-size: 1.5rem;
    color:var(--light-color);
    padding:1rem 0;
}

.footer .box-container .box .share a{
    height:4rem;
    width:4rem;
    line-height:4rem;
    border-radius: .5rem;
    font-size: 2rem;
    color:var(--black);
    margin-right: .2rem;
    background: #eee;
    text-align: center;
}

.footer .box-container .box .share a:hover{
    background: var(--orange);
    color: #fff;
}

.footer .box-container .box .email{
    width: 100%;
    margin:.7rem 0;
    padding:1rem;
    border-radius: .5rem;
    background: #eee;
    font-size: 1.6rem;
    color:var(--black);
    text-transform: none;
}

.footer .box-container .box .payment-img{
    margin-top: 2rem;
    height: 3rem;
    display: block;
}

.footer .credit{
    text-align: center;
    margin-top: 2rem;
    padding:1rem;
    padding-top: 2.5rem;
    font-size: 2rem;
    color:var(--black);
    border-top: var(--border);
}

.footer .credit span{
    color:var(--orange);
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

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-tshirt"></i> ParisFashion </a>

    <nav class="navbar">
  
        <a href="hometes.jsp">Home</a>
        <a href="keranjang.jsp">Pesanan</a>
        <a href="logout.jsp">Logout</a>
              <%
            String email=session.getAttribute("email").toString();%>
       <a href="" class="logo"><i class="fas fa-user-alt"></i><%out.println(email);%> </a>
    </nav>

</header>


<!-- products section starts  -->

<section class="products" id="products">

    <h1 class="heading"><span>Produk</span> Kami</h1>
     <%
            String msg=request.getParameter("msg");
            if("added".equals(msg)){
                
          %>
  <div class="alert">
  <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
  <strong>Sukses!</strong> Produk Berhasil Ditambahkan.
</div>
<%}%>
<%
       
            if("exist".equals(msg)){            
          %>
<h3 class="alert">Produk Sudah Ada di Keranjang Kamu, Jumlah Bertambah</h3>
<%}%>
<%
       
            if("invalid".equals(msg)){            
          %>
<h3 class="alert">Ada Kesalahan, Coba Ulangi </h3>

<%}%>
        <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=1");
                    while(rs.next())
                    {
                  %>
    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="img/blus1.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>
 <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=2");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/blus2.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=3");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/celana3.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=4");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/celana2.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

        </div>

    </div>

     <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=5");
                    while(rs.next())
                    {
                  %>
    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="img/rok1.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=6");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/rok2.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=7");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/tunik1.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

            <%
                try{
                    Connection con = KoneksiDatabase.getCon();
                    Statement st = con.createStatement();
                    ResultSet rs = st.executeQuery("select * from product where id=8");
                    while(rs.next())
                    {
                  %>


            <div class="swiper-slide box">
                <img src="img/tunik2.png" alt="">
                <h3><%=rs.getString(2)%></h3>
                <p class="price">Harga : Rp <%=rs.getString(3)%></p>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <a href="addToCartAction.jsp?id=<%=rs.getString(1)%>" class="btn">Tambah Ke Keranjang</a>
            </div>
        <%
              }
            }   
            catch(Exception e)
            {
                System.out.println(e);
            }
        %>

        </div>

    </div>


</section>

<!-- products section ends -->

<!-- categories section starts  -->

<section class="categories" id="categories">

    <h1 class="heading"><span>Kategori</span> Produk</h1>

    <div class="box-container">

        <div class="box">
            <img src="img/blouse.png" alt="">
            <h3>Blouse</h3>
            <p>upto 15% off</p>
            <a href="#products" class="btn">Lihat Produk</a>
        </div>

        <div class="box">
            <img src="img/tunik.png" alt="">
            <h3>Tunik</h3>
            <p>upto 45% off</p>
            <a href="#products" class="btn">Lihat Produk</a>
        </div>

        <div class="box">
            <img src="img/rok.png" alt="">
            <h3>Rok</h3>
            <p>upto 35% off</p>
            <a href="#products" class="btn">Lihat Produk</a>
        </div>

        <div class="box">
            <img src="img/celana.png" alt="">
            <h3>Celana</h3>
            <p>upto 50% off</p>
            <a href="#products" class="btn">Lihat Produk</a>
        </div>
        

    </div>

</section>

<!-- categories section ends -->

<!-- review section starts  -->

<section class="review" id="review">

    <h1 class="heading">  <span>Review</span> Customer</h1>

    <div class="swiper review-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="img/Vanessa Balqis.jpg" alt="">
                <p>Sangat suka berbelanja disini, sistemnya mudah digunakan dan sangat banyak pilihan pakaiannnya</p>
                <h3>Vanessa Balqis</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="img/eca2.JPG" alt="">
                <p>Sangat suka berbelanja disini, sistemnya mudah digunakan dan sangat banyak pilihan pakaiannnya</p>
                <h3>Kinan Jui</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="img/uul1.jpg" alt="">
                <p>Sangat suka dengan sistem nya, rapi dan menarik. Barang-barangnya juga tersedia dalam berbagai macam bentuk</p>
                <h3>Nurul Putri</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

            <div class="swiper-slide box">
                <img src="img/uul2.jpg" alt="">
                <p>Semuanya tersedia disini, tidak perlu datang ke toko lagi. Dan pengirimannya juga gratis jadi suka belanja disini</p>
                <h3>Andini Aisyah</h3>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
            </div>

        </div>

    </div>

</section>

<!-- review section ends -->

<!-- footer section starts  -->

<section class="footer">

    <div class="box-container">

        <div class="box">
            <h3> ParisFashion <i class="fas fa-tshirt"></i> </h3>
            <p>Ikuti update terbaru di sosial media kami</p>
            <div class="share">
                <a href="#" class="fab fa-facebook-f"></a>
                <a href="#" class="fab fa-twitter"></a>
                <a href="#" class="fab fa-instagram"></a>
                <a href="#" class="fab fa-linkedin"></a>
            </div>
        </div>

        <div class="box">
            <h3>Info Kontak</h3>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +628-5376-5667-75 </a>
            <a href="#" class="links"> <i class="fas fa-phone"></i> +628-1111-2222-33 </a>
            <a href="#" class="links"> <i class="fas fa-envelope"></i> vanesul@gmail.com </a>
            <a href="#" class="links"> <i class="fas fa-map-marker-alt"></i> Rumbai, Pekanbaru - 28725 </a>
        </div>

        <div class="box">
            <h3>Link Cepat</h3>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Fitur </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Produk </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Kategori </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Review </a>
        </div>

        <div class="box">
            <h3>E-Koran</h3>
            <p>Berlangganan untuk mendapatkan update terbaru</p>
            <input type="email" placeholder="Email Anda" class="email">
            <input type="submit" value="Berlangganan" class="btn">
            <img src="img/payment.png" class="payment-img" alt="">
        </div>

    </div>

    <div class="credit"> created by <span> Vanessa n Nurul </span> | all rights reserved </div>

</section>

<!-- footer section ends -->















<script src="https://unpkg.com/swiper@7/swiper-bundle.min.js"></script>

<!-- custom js file link  -->
<script src="js/script.js"></script>

</body>
</html>
