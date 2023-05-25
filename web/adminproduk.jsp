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

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <%
            String email=session.getAttribute("email").toString();%>
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%out.println(email);%> </span>
                                <img class="img-profile rounded-circle"
                                    src="img/profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="logout.jsp" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Logout
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
            <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                                Tambah Barang
                                </button>
                    <!-- Page Heading -->
                
                    <!-- DataTales Example -->
                    <div class="card shadow mb-4">
                        <div class="card-header py-3">
                            <!-- Button to Open the Modal-->
                            
                            <h6 class="m-0 font-weight-bold text-primary">  Produk </h6>
                        </div>
                        <div class="card-body">
                            <div class="table-responsive">
                                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                                    <thead>
                                         <tr>
                                                <th scope="col">No</th>
                                                  <th scope="col">Nama Produk</th>
                                                  <th scope="col"><i class="fa fa-money"></i> Harga</th>
                                                   <th scope="col">Stok</th>
                                                   <th scope="col">Edit</th>
                                                   <th scope="col">Hapus</th>
                                                  <th scope="col">Status Stok <i class="fas fa-trash"></i></th>
                                                </tr>
                                      </thead>
                                    <tbody>
                                    <%
                                        int sno=0;
                                        int stok = 0;
                                        try{
                                        Connection con=KoneksiDatabase.getCon();
                                        Statement st = con.createStatement();
                                        ResultSet rs= st.executeQuery("select * from product");
                                        while(rs.next())
                                        {
                                          stok=rs.getInt(5);
                                    %>
                                        <tr>
                                         <%sno=sno+1; %>
                                         <td><%out.println(sno);%></td>
                                          <td><%=rs.getString(2) %></td>
                                          <td><i class="fa fa-money"></i> <%=rs.getString(3) %> </td>
                                          <td><%=rs.getString(5) %></td>
                                           <td><a href="editProduct.jsp?id=<%=rs.getString(1)%>">Edit <i class='fas fa-pen-fancy'></i></a></td>
                                           <td><a href="removeFromProduct.jsp?id=<%=rs.getString(1)%>">Hapus <i class='fas fa-trash-alt'></i></a></td>
                                          <%
                                              if(rs.getString(2).equals("Mama Blouse") && stok == 44){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                        
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Satin Blouse") && stok == 44){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                        
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Linen Jogger Pants") && stok == 43){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Kulot Pants") && stok == 43){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Pleated Skirt") && stok == 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Satin Skirt") && stok == 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("MAMA Tunik") && stok == 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Crêpe Tunik") && stok == 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#d62828;border-color:#d62828;" type="button" class="btn btn-primary">
                                            Stok Hampir Habis
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Mama Blouse") && stok > 44){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                        
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Satin Blouse") && stok > 44){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                                Stok Masih Ada
                                                </button>
                                          </td>
                                        
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Linen Jogger Pants") && stok > 43){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Kulot Pants") && stok > 43){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Pleated Skirt") && stok > 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Satin Skirt") && stok > 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("MAMA Tunik") && stok > 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                          <%
                                              if(rs.getString(2).equals("Crêpe Tunik") && stok > 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                           <%
                                              if(rs.getString(2).equals("Celana Crinkle") && stok > 42){
                                              %>
                                          <td>
                                              <button style="margin-bottom: 10px;background-color:#92d7ef;border-color:#92d7ef;color:black;" type="button" class="btn btn-primary">
                                            Stok Masih Ada
                                                </button>
                                          </td>
                                          <%}%>
                                        </tr>
                                        <%          
                                        }
}
                                    catch(Exception e)
{}
          %>

                                      </tbody>
                                </table>
                            </div>
                        </div>
                    </div>

                </div>
                <!-- /.container-fluid -->

            </div>
            <!-- End of Main Content -->

            <!-- Footer -->
            <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; VN</span>
                    </div>
                </div>
            </footer>
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
<div class="modal fade" id="myModal">
        <div class="modal-dialog">
        <div class="modal-content">
        
            <!-- Modal Header -->
            <div class="modal-header">
            <h4 class="modal-title">Tambah Barang</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            
            <!-- Modal body -->
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
<h3 style="color: #d62828;margin-left:18px;margin-top:10px;font-weight: bold;">Product ID: <%out.println(id);%> </h3>
<input type="hidden" name="id" value="<%out.println(id);%>">
            
            <div class="modal-body">
            <input type="text" name="name" placeholder="Nama Barang" class="form-control">
            <br>
            <input type="number" name="price" placeholder="Harga" class="form-control">
            <br>
            <input type="number" name="stok" placeholder="Stock" class="form-control">
            <br>
            <select class="form-control" name="active">
                <option value="Yes">Ya</option>
                <option value="No">Tidak</option>
            </select> 
             <button type="submit" class="btn btn-primary" name="submit" style="margin-top:10px;"> Submit</button>
        </div>
    </form>
            
            <!-- Modal footer -->
            <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
            </div>
            
        </div>
        </div>
    </div>
</html>
