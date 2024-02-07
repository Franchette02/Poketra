
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Components / Accordion - NiceAdmin Bootstrap Template</title>
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

   

    <section class="section">
      <div class="row">
        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Liste Look</h5>

              <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">
                    Choisissez un look
                  </button>
                </h2>
                <div id="collapseOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <form action="">
                        <fieldset class=" mb-3">
                            <table class="table table-bordered">
                                <tr>
                                    <td class="col-4 text-capitalize">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                            <label class="form-check-label" for="gridRadios1">
                                            First radio
                                            </label>
                                        </div>
                                    </td>  
                                    <td class="text-center">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim distinctio fuga vel esse numquam unde, libero, atque odio consectetur recusandae eaque quas? Ab eligendi inventore et debitis consequatur eius maxime.
                                    </td>  
                                </tr>
                                <tr>
                                    <td class="text-capitalize">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                            <label class="form-check-label" for="gridRadios2">
                                            Second radio
                                            </label>
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo alias reiciendis voluptatibus neque quia dignissimos adipisci ab pariatur labore, libero eveniet quisquam quaerat, iste magnam laborum excepturi saepe! Libero, enim.
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary  "> With Text <i class="bi bi-chevron-right me-1"></i></button>
                        </div>
                    </form>
                    </div>
                </div>
              </div>
              </div>

            </div>
          </div>

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Liste Matiere Premiere</h5>

              <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOneTwo" aria-expanded="false" aria-controls="collapseOneTwo">
                    Choix de matiere premiere
                  </button>
                </h2>
                <div id="collapseOneTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <form action="">
                        <fieldset class=" mb-3">
                            <table class="table table-bordered">
                                <tr>
                                    <td class="col-4 text-capitalize">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
                                            <label class="form-check-label" for="gridRadios1">
                                            First radio
                                            </label>
                                        </div>
                                    </td>  
                                    <td class="text-center">
                                        Lorem ipsum dolor sit amet consectetur adipisicing elit. Enim distinctio fuga vel esse numquam unde, libero, atque odio consectetur recusandae eaque quas? Ab eligendi inventore et debitis consequatur eius maxime.
                                    </td>  
                                </tr>
                                <tr>
                                    <td class="text-capitalize">
                                        <div class="form-check">
                                            <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
                                            <label class="form-check-label" for="gridRadios2">
                                            Second radio
                                            </label>
                                        </div>
                                    </td>
                                    <td class="text-center">
                                        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Quo alias reiciendis voluptatibus neque quia dignissimos adipisci ab pariatur labore, libero eveniet quisquam quaerat, iste magnam laborum excepturi saepe! Libero, enim.
                                    </td>
                                </tr>
                            </table>
                        </fieldset>
                        <div class="d-flex justify-content-end">
                            <button type="submit" class="btn btn-primary  "> With Text <i class="bi bi-chevron-right me-1"></i></button>
                        </div>
                    </form>
                    </div>
                </div>
              </div>
              </div>

            </div>
          </div>
            <!-- liste matiere premiere -->

        </div>

        <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Ajout Look</h5>

              <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoOne" aria-expanded="false" aria-controls="collapseTwoOne">
                    Ajouter un look
                  </button>
                </h2>
                <div id="collapseTwoOne" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <form action="AjoutLook">
                      <div class="col-md-12 mb-3">
                        <div class="form-floating">
                          <input name="nom" type="text" class="form-control" id="floatingName" placeholder="Look">
                          <label for="floatingName">The Look</label>
                        </div>
                      </div>
                      <div class="text-center">
                          <button type="submit" class="btn btn-primary">Valider</button>
                          <button type="reset" class="btn btn-primary">Reset</button>
                      </div>
                    </form>
                    </div>
                </div>
              </div>
              </div>

            </div>
          </div>

        

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Ajouter Matiere Premiere</h5>

              <div class="accordion" id="accordionExample">
              <div class="accordion-item">
                <h2 class="accordion-header" id="headingOne">
                  <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwoTwo" aria-expanded="false" aria-controls="collapseTwoTwo">
                    Ajout de Matiere Premiere
                  </button>
                </h2>
                <div id="collapseTwoTwo" class="accordion-collapse collapse" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
                  <div class="accordion-body">
                    <form action="AjoutMatierePremiere">
                      <div class="col-md-12 mb-3">
                        <div class="form-floating">
                          <input name="nom" type="text" class="form-control" id="floatingName" placeholder="Matiere Premiere ">
                          <label for="floatingName">Matiere Premiere</label>
                        </div>
                      </div>
                      <div class="text-center">
                          <button type="submit" class="btn btn-primary">Valider</button>
                          <button type="reset" class="btn btn-primary">Reset</button>
                      </div>
                    </form>
                    </div>
                </div>
              </div>
              </div>

            </div>
          </div>

        </div>
        <!-- <div class="col-lg-6">

          <div class="card">
            <div class="card-body">
              <h5 class="card-title">Example Card</h5>
              <p>This is an examle page with no contrnt. You can use it as a starter for your custom pages.</p>
            </div>
          </div>

        </div> -->
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