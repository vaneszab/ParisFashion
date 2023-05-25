<%@page import="project.KoneksiDatabase"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
     <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>

    <title>Paris Fashion Admin</title>

    <!-- Custom fonts for this template -->
    <link href="css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

    <!-- Custom styles for this page -->
    <link href="css/dataTables.bootstrap4.min.css" rel="stylesheet">
    <style>
        .bg-gradient-primary{background-color:#6d6875;background-image:linear-gradient(180deg,#f2709c 10%,#ff9472 100%);background-size:cover}
        .bg-gradient-secondary{background-color:#d62828;background-image:linear-gradient(180deg,#d62828 10%,#d62828 100%);background-size:cover}
        .text-primary{color:#d62828!important}
        body{margin:0;font-family:Nunito,-apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";font-size:1rem;font-weight:400;line-height:1.5;color:#d62828;text-align:left;background-color:#fff}
        .table{width:100%;margin-bottom:1rem;color:#d62828}
        .table-bordered td,.table-bordered th{border:1px solid #e3e6f0}
        .card{position:relative;display:flex;flex-direction:column;min-width:0;word-wrap:break-word;background-color:white;background-clip:border-box;border:1px solid #e3e6f0;border-radius:.35rem}
    </style>
</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar" style="background-color: #d62828;">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-tshirt"></i>
                </div>
                <div class="sidebar-brand-text mx-3">ParisFashion</div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">


        

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminproduk.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Produk</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminpesanan.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Pesanan</span></a>
            </li>

            <!-- Nav Item - Tables -->
            <li class="nav-item active">
                <a class="nav-link" href="adminpesanandiantar.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Pesanan Diantar</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="adminuser.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>User</span></a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="adminperhitungan.jsp">
                    <i class="fas fa-fw fa-table"></i>
                    <span>Perhitungan</span></a>
            </li>
            <!-- Divider -->
            <hr class="sidebar-divider d-none d-md-block">

            <!-- Sidebar Toggler (Sidebar) -->
            <div class="text-center d-none d-md-inline">
                <button class="rounded-circle border-0" id="sidebarToggle"></button>
            </div>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <form class="form-inline">
                        <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                            <i class="fa fa-bars"></i>
                        </button>
                    </form>

                    <!-- Topbar Search -->
                    

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        <!-- Nav Item - Search Dropdown (Visible Only XS) -->
                        <li class="nav-item dropdown no-arrow d-sm-none">
                            <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <i class="fas fa-search fa-fw"></i>
                            </a>
                            <!-- Dropdown - Messages -->
                            <div class="dropdown-menu dropdown-menu-right p-3 shadow animated--grow-in"
                                aria-labelledby="searchDropdown">
                                <form class="form-inline mr-auto w-100 navbar-search">
                                    <div class="input-group">
                                        <input type="text" class="form-control bg-light border-0 small"
                                            placeholder="Search for..." aria-label="Search"
                                            aria-describedby="basic-addon2">
                                        <div class="input-group-append">
                                            <button class="btn btn-primary" type="button">
                                                <i class="fas fa-search fa-sm"></i>
                                            </button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </li>

                        <!-- Nav Item - Alerts -->
                        

                        <div class="topbar-divider d-none d-sm-block"></div>

                        

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">

                    <!-- Page Heading -->
                
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <h4 class="m-0 font-weight-bold text-primary">  Pesanan Customer </h4>
                        </div>
                        <div class="card-body">
                            <h6 class="card-title"><b>Data History </b></h6>
                             <div class="card" style="width: 50rem;">
                              <img src="img/history.jpg" class="card-img-top" alt="...">
                              <div class="card-body">
                               <!-- <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>-->
                              </div>
                              <h6 class="card-title"><b>Agregate Planning Blus </b></h6>
                              <center><h7>Metode Moving Average  </h7></center>
                            
                              <img src="img/mablus.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                           
                              <img src="img/sesblus.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Tracking Signal Metode Moving Average </h7></center>
                            
                              <img src="img/ts1blus.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                               
                                <img src="img/ts2blus.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Metode Peramalan Terbaik Berdasarkan Error Terkecil </h7></center>
                             
                                <img src="img/tblus.jpg" class="card-img-top" alt="...">
                                <br><br>
                             <h6 class="card-title"><b>Agregate Planning Tunik </b></h6>
                              <center><h7>Metode Moving Average  </h7></center>
                             
                              <img src="img/matunik.jpg" class="card-img-top" alt="...">
                               <br>
                               <center><h7>Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                           
                              <img src="img/sestunik.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Moving Average </h7></center>
                           
                              <img src="img/ts1tunik.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                                
                                <img src="img/ts2tunik.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Peramalan Terbaik Berdasarkan Error Terkecil </h7></center>
                                
                                <img src="img/ttunik.jpg" class="card-img-top" alt="...">
                                <br><br>
                                
                                <h6 class="card-title"><b>Agregate Planning Gamis </b></h6>
                              <center><h7>Metode Moving Average  </h7></center>
                            >
                              <img src="img/magamis.jpg" class="card-img-top" alt="...">
                               <br>
                               <center><h7>Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                             
                              <img src="img/sesgamis.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Moving Average </h7></center>
                            
                              <img src="img/ts1gamis.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                               
                                <img src="img/ts2gamis.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Peramalan Terbaik Berdasarkan Error Terkecil </h7></center>
                               
                                <img src="img/tgamis.jpg" class="card-img-top" alt="...">
                                <br><br>
                                
                                <h6 class="card-title"><b>Agregate Planning Celana </b></h6>
                              <center><h7>Metode Moving Average  </h7></center>
                           
                              <img src="img/macelana.jpg" class="card-img-top" alt="...">
                               <br>
                               <center><h7>Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                            
                              <img src="img/sescelana.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Moving Average </h7></center>
                             
                              <img src="img/ts1celana.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                               
                                <img src="img/ts2celana.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Peramalan Terbaik Berdasarkan Error Terkecil </h7></center>
                                
                                <img src="img/tcelana.jpg" class="card-img-top" alt="...">
                                <br><br>
                              
                                <h6 class="card-title"><b>Agregate Planning Rok </b></h6>
                              <center><h7>Metode Moving Average  </h7></center>
                           
                              <img src="img/marok.jpg" class="card-img-top" alt="...">
                               <br>
                               <center><h7>Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                           
                              <img src="img/sesrok.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Moving Average </h7></center>
                            
                              <img src="img/ts1rok.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Tracking Signal Metode Simple Exponential Smoothing a = 0,1 </h7></center>
                               
                                <img src="img/ts2rok.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Peramalan Terbaik Berdasarkan Error Terkecil </h7></center>
                                <img src="img/trok.jpg" class="card-img-top" alt="...">
                                <br><br>
                                <br>
                                <br>
                                 
                                
                                
                                <h6 class="card-title"><b>LOT SIZING </b></h6>
                              <center><h7> Metode Lot For Lot Blus  </h7></center>
                              <img src="img/m1.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Blus </h7></center>
                              <img src="img/bp1.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Metode Lot For Lot Tunik  </h7></center>
                              <img src="img/m2.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Tunik </h7></center>
                              <img src="img/bp2.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Metode Lot For Gamis  </h7></center>
                              <img src="img/m3.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Gamis </h7></center>
                              <img src="img/bp3.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Metode Lot For Rok  </h7></center>
                              <img src="img/m4.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Rok </h7></center>
                              <img src="img/bp4.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Metode Lot For Celana  </h7></center>
                              <img src="img/m5.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Celana </h7></center>
                              <img src="img/bp5.jpg" class="card-img-top" alt="...">
                              <br>
                              <br>
                               <h6 class="card-title"><b>LOT SIZING </b></h6>
                              <center><h7>Metode Economic Order Quantity  </h7></center>
                              <img src="img/me1.jpg" class="card-img-top" alt="...">
                              <br>
                              <img src="img/me2.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Metode Economic Order Quantity Blus  </h7></center>
                              <img src="img/meb.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Blus </h7></center>
                              <img src="img/meb1.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Metode Economic Order Quantity Tunik  </h7></center>
                              <img src="img/met.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Tunik </h7></center>
                              <img src="img/met1.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Metode Economic Order Quantity Gamis  </h7></center>
                              <img src="img/meg.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Gamis </h7></center>
                              <img src="img/meg1.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Metode Economic Order Quantity Rok  </h7></center>
                              <img src="img/mer.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Rok </h7></center>
                              <img src="img/mer1.jpg" class="card-img-top" alt="...">
                              <br>
                              <center><h7>Metode Economic Order Quantity Celana  </h7></center>
                              <img src="img/mec.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7> Biaya Penyedian Celana </h7></center>
                              <img src="img/mec1.jpg" class="card-img-top" alt="...">
                              <br>
                               <center><h7>Perbandingan Lot-For-Lot dengan EOQ </h7></center>
                              <img src="img/pl.jpg" class="card-img-top" alt="...">
                              <br>
                              
                               <h6 class="card-title"><b>Perhitungan Safety Stock dan ROP </b></h6>
                              <img src="img/rop.jpg" class="card-img-top" alt="...">
                              <div class="card-body">
                              </div>
                            </div>

                        </div>
                        </div>
                    </div>


                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Siap untuk keluar?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Klik button Logout jika ingin mengakhiri sesi</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Batal</button>
                    <a class="btn btn-primary" href="logout.jsp">Logout</a>
                </div>
            </div>
        </div>
    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="jquery.min.js"></script>
    <script src="bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="sb-admin-2.min.js"></script>

    <!-- Page level plugins -->
    <script src="jquery.dataTables.min.js"></script>
    <script src="dataTables.bootstrap4.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="datatables-demo.js"></script>

</body>

</html>
