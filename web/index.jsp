<%@ page import="model.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Dashboard - NiceAdmin Bootstrap Template</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: May 30 2023 with Bootstrap v5.3.0
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

  <!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
      <a href="index.jsp" class="logo d-flex align-items-center">
        <img src="assets/img/logo.png" alt="">
        <span class="d-none d-lg-block">Poketra</span>
      </a>
      <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
      <form class="search-form d-flex align-items-center" method="POST" action="#">
        <input type="text" name="query" placeholder="Search" title="Enter search keyword">
        <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        
      </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">

        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li><!-- End Search Icon-->

  </header><!-- End Header -->

  <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar">
      
    <ul class="sidebar-nav" id="sidebar-nav">  
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-menu-button-wide"></i><span>Ajout</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                  <li class="nav-item">
                  <a  href="Embauche.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Embauche</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a  href="page-ajout-genre.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Ajout genre</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a  href="page-ajout-client.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Ajout client</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a  href="page-ajout-vente.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Ajout vente</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a  href="page-ajout-poketra.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Ajout poketra</span>
                  </a>
                </li><!-- add poketra link -->
                       <li class="nav-item">
                        <a  href="Fabrication.jsp">
                          <i class="bi bi-circle"></i>
                          <span>Fabrications</span>
                        </a>
                      </li><!-- front office -->

                    <li class="nav-item">
                    <a href="Employer.jsp">
                      <i class="bi bi-circle"></i>
                      <span>Ajout Employer</span>
                    </a>
                  </li><!-- front office -->

                    <li class="nav-item">
                      <a  href="page_ajout_commande.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajout Commande</span>
                      </a>
                    </li><!-- front office -->

                    <li class="nav-item">
                      <a  href="page_ajout_stock.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajout Stock</span>
                      </a>
                    </li><!-- front office -->
                    
                    <li class="nav-item">
                      <a href="page-ajout-look.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajouter Look</span>
                      </a>
                    </li><!-- front office -->

                    <li class="nav-item">
                      <a  href="page-ajout-type.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajouter type</span>
                      </a>
                    </li><!-- front office -->
                        
                    <li class="nav-item">
                      <a  href="page-ajout-matierePrem.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajouter matiere premiere</span>
                      </a>
                    </li><!-- front office -->
                      <li class="nav-item">
                      <a  href="page-ajout-taille.jsp">
                        <i class="bi bi-circle"></i>
                        <span>Ajouter Taille</span>
                      </a>
                    </li><!-- front office -->
        </ul>
      </li><!-- End Components Nav1 -->
            <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-journal-text"></i><span>Listes</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="forms-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                             <li >
                              <a  href="ListEmp">
                                <i class="bi bi-circle"></i>
                                <span>Liste Emp</span>
                              </a>
                            </li><!-- front office -->
                            <li >
                              <a  href="page-list-look.jsp">
                                <i class="bi bi-circle"></i>
                                <span>Liste Look</span>
                              </a>
                            </li><!-- front office -->


                            <li>
                              <a href="page-list-matierePrem.jsp">
                                <i class="bi bi-circle"></i>
                                <span>Liste matiere premiere</span>
                              </a>
                            </li><!-- front office -->
                             <li>
                              <a href="StockPrduitFini.jsp">
                                <i class="bi bi-circle"></i>
                                <span>Stock Produit Finie</span>
                              </a>
                            </li><!-- front office -->
        </ul>
      </li><!-- End Forms Nav -->
      <li class="nav-item">
        <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
          <i class="bi bi-layout-text-window-reverse"></i><span>Recherce</span><i class="bi bi-chevron-down ms-auto"></i>
        </a>
        <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
<!--                 <li>
                <a href="testChart.jsp">
                  <i class="bi bi-circle"></i>
                  <span>TestChart</span>
                </a>
              </li> front office -->
                <li>
                <a href="RechercheBenefice.jsp">
                  <i class="bi bi-circle"></i>
                  <span>Benefice</span>
                </a>
              </li><!-- front office -->
              <li >
                <a href="page-recherche-poketra.jsp">
                 <i class="bi bi-circle"></i>
                  <span>Mitady poketra</span>
                </a>
              </li><!-- front office -->
                <li>
               <a  href="FiltreProduitFinie.jsp">
                <i class="bi bi-circle"></i>
                 <span>Filtre  Produit Finie</span>
               </a>
             </li>
             <li class="nav-item">
                  <a  href="getStat.jsp">
                    <i class="bi bi-circle"></i>
                    <span>Statistique</span>
                  </a>
             </li><!-- front office -->
        </ul>
      </li><!-- End Tables Nav -->
    </ul>

  </aside><!-- End Sidebar-->

  <main id="main" class="main">

    

    <section class="section dashboard">
      <div class="row">

        <!-- Left side columns -->
        <div class="col-lg-8">
          <div class="row">

            <!-- Sales Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card sales-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Matiere premiere </h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-cart"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%= MatierePremiere.CompteM() %> Mp</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">12%</span> <span class="text-muted small pt-2 ps-1">increase</span> -->

                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Sales Card -->

            <!-- Revenue Card -->
            <div class="col-xxl-4 col-md-6">
              <div class="card info-card revenue-card">

                <div class="filter">
                  <a class="icon" href="#" data-bs-toggle="dropdown"><i class="bi bi-three-dots"></i></a>
                  <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow">
                    <li class="dropdown-header text-start">
                      <h6>Filter</h6>
                    </li>

                    <li><a class="dropdown-item" href="#">Today</a></li>
                    <li><a class="dropdown-item" href="#">This Month</a></li>
                    <li><a class="dropdown-item" href="#">This Year</a></li>
                  </ul>
                </div>

                <div class="card-body">
                  <h5 class="card-title">Look</h5>

                  <div class="d-flex align-items-center">
                    <div class="card-icon rounded-circle d-flex align-items-center justify-content-center">
                      <i class="bi bi-currency-dollar"></i>
                    </div>
                    <div class="ps-3">
                      <h6><%= Look.CompteL() %> Look</h6>
                      <!-- <span class="text-success small pt-1 fw-bold">8%</span> <span class="text-muted small pt-2 ps-1">increase</span> -->
                    </div>
                  </div>
                </div>

              </div>
            </div><!-- End Revenue Card -->

          </div>
        </div><!-- End Left side columns -->
      </div>
    </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
 

  <a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>