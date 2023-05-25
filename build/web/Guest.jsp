<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ParisFashion Guest</title>

    <link rel="stylesheet" href="https://unpkg.com/swiper@7/swiper-bundle.min.css" />

    <!-- font awesome cdn link  -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    
    <!-- custom css file link  -->
    <link rel="stylesheet" href="css/style.css">

</head>
<body>
    
<!-- header section starts  -->

<header class="header">

    <a href="#" class="logo"> <i class="fas fa-tshirt"></i> ParisFashion </a>

    <nav class="navbar">
        <a href="#home">Home</a>
        <a href="#features">Fitur</a>
        <a href="#products">Produk</a>
        <a href="#categories">Kategori</a>
        <a href="#review">Review</a>
    </nav>
    <a class="btnex" style="margin-right: -180px;" href="login.jsp">Login </a>
    <a class="btnex" href="signup.jsp">Daftar </a>

</header>

<!-- header section ends -->

<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>Berbagai Macam Pakaian <span>Trendy</span> Untuk meningkatkan style anda</h3>
        <p>Paris Fashion menjual berbagai macam pakaian mulai dari celana dan baju dengan harga yang terjangkau</p>
        <a href="#products" class="btn">Liat Stok Barang</a>
    </div>

</section>

<!-- home section ends -->

<!-- features section starts  -->

<section class="features" id="features">

    <h1 class="heading"> <span>Fitur</span> Kami </h1>

    <div class="box-container">

        <div class="box">
            <img src="img/variatif.png" alt="">
            <h3>Trendy dan Murah</h3>
            <p>Semua produk dijamin mengikuti trend dan tentunya dengan harga yang murah</p>
        </div>

        <div class="box">
            <img src="img/feature-img-2.png" alt="">
            <h3>Free Ongkir</h3>
            <p>Barang-barang yang dibeli akan langsung dikirimkan kerumah anda tanpa biaya</p>
        </div>

        <div class="box">
            <img src="img/feature-img-3.png" alt="">
            <h3>Pembayaran Mudah</h3>
            <p>Anda bisa melakukan pembayaran melalui berbagai macam platform</p>
        </div>

    </div>

</section>

<!-- features section ends -->

<!-- products section starts  -->

<section class="products" id="products">

    <h1 class="heading"><span>Produk</span> Kami</h1>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="img/blus1.png" alt="">
                <h3>Mama Blouse</h3>
                <div class="price"> Rp 150.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                 <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=1");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/blus2.png" alt="">
                <h3>Satin Blouse</h3>
                <div class="price"> Rp 200.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=2");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/celana3.png" alt="">
                <h3>Linen Jogger Pants</h3>
                <div class="price"> Rp 125.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=3");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/celana2.png" alt="">
                <h3>Kulot Pants</h3>
                <div class="price"> Rp 120.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=4");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

        </div>

    </div>

    <div class="swiper product-slider">

        <div class="swiper-wrapper">

            <div class="swiper-slide box">
                <img src="img/rok1.png" alt="">
                <h3>Pleated Skirt</h3>
                <div class="price"> Rp 80.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
               <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=5");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/rok2.png" alt="">
                <h3>Satin Skirt</h3>
                <div class="price"> Rp 150.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
               <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=6");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/tunik1.png" alt="">
                <h3>MAMA Tunik</h3>
                <div class="price"> Rp200.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
                <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=7");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

            <div class="swiper-slide box">
                <img src="img/tunik2.png" alt="">
                <h3>Crêpe Tunik</h3>
                <div class="price"> Rp 220.000 </div>
                <div class="stars">
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star"></i>
                    <i class="fas fa-star-half-alt"></i>
                </div>
               <%
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product where id=8");
                                        while(rs.next())
                                        {
                                    %>
                <a href="#" class="btn">Stok : <%=rs.getString(5) %></a>
                 <%          
                                        }
}
                                    catch(Exception e)
{}
          %>
            </div>

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
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> home </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> Fitur </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> produk </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> kategori </a>
            <a href="#" class="links"> <i class="fas fa-arrow-right"></i> review </a>
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
