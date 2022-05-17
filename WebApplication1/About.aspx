<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="WebApplication1.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>PoolPros</title>
            <!-- Favicon-->
            <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
            <!-- Bootstrap icons-->
            <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="css/styles.css" rel="stylesheet" />
    </head>
<body class="d-flex flex-column">
    <form id="form1" runat="server">
        
        <main class="flex-shrink-0">
        <!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-poolprostheme">
            <div class="container px-5">
                <a class="navbar-brand" href="index.html">PoolPros</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><asp:LinkButton class="nav-link" ID="btnIndex" runat="server" OnClick="btnIndex_Click">Index</asp:LinkButton></li>
                            <li class="nav-item"><asp:LinkButton class="nav-link" ID="btnAbout" runat="server" OnClick="btnAbout_Click">About</asp:LinkButton></li>
                            <li class="nav-item"><asp:LinkButton class="nav-link" ID="btnContact" runat="server" OnClick="btnContact_Click">Contact</asp:LinkButton></li>
                            <li class="nav-item"><asp:LinkButton class="nav-link" ID="btnServices" runat="server" OnClick="btnServices_Click">Services</asp:LinkButton></li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" id="navbarDropdownPortfolio" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Portfolio</a>
                            <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdownPortfolio">
                                <li><a class="dropdown-item" href="portfolio-overview.html">Portfolio Overview</a></li>
                                <li><a class="dropdown-item" href="portfolio-item.html">Portfolio Item</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header-->
        <header class="py-5">
            <div class="container px-5">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xxl-6">
                        <div class="text-center my-5">
                            <h1 class="fw-bolder mb-3">Our mission is to keep your pools sparkling clean all year long.</h1>
                            <p class="lead fw-normal text-muted mb-4">To get an idea of the services we offer please navigate to our 'services' page. In the mean time, find out who we are.</p>
                            <a class="btn btn-primary btn-lg" href="#scroll-target">Read our story</a>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- About section one-->
        <section class="py-5 bg-poolprosthemelight" id="scroll-target">
            <div class="container px-5 my-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                    <div class="col-lg-6">
                        <h2 class="fw-bolder">Our founding</h2>
                        <p class="lead fw-normal text-muted mb-0">We are primarily a pool cleaning and maintenance company,but offer a wide range of other services as well. </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- About section two-->
        <section class="py-5 bg-light">
            <div class="container px-5 my-5">
                <div class="row gx-5 align-items-center">
                    <div class="col-lg-6 order-first order-lg-last"><img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                    <div class="col-lg-6">
                        <h2 class="fw-bolder">Our mission</h2>
                        <p class="lead fw-normal text-muted mb-0">We strive to keep your pools in the best condition all year long. We mainly operate in northern Johannesburg, but also operate in the south, east and west of Johannesburg. Being a family run business we unfortunately only operaate in these areas. We may be willing to work in other places in gauteng provided it is not too far from our base of operations.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Team members section-->
        <section class="py-5 bg-poolprosthemelight">
            <div class="container px-5 my-5">
                <div class="text-center">
                    <h2 class="fw-bolder">Our Owner</h2>
                    <p class="lead fw-normal text-muted mb-5">Dedicated to quality and your success</p>
                </div>
                <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                    <div class="col mb-5 mb-5 mb-xl-0">
                        <div class="text-center">
                            <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                            <h5 class="fw-bolder">Samson Nyirongo</h5>
                            <div class="fst-italic text-muted">Owner</div>
                        </div>
                    </div>
                       
                </div>
            </div>
        </section>
    </main>
    <!-- Footer-->
    <footer class="bg-dark py-4 mt-auto">
        <div class="container px-5">
            <div class="row align-items-center justify-content-between flex-column flex-sm-row">
                <div class="col-auto"><div class="small m-0 text-white">Copyright &copy; PoolPros 2022</div></div>
                <div class="col-auto">
                    <a class="link-light small" href="#!">Privacy</a>
                    <span class="text-white mx-1">&middot;</span>
                    <a class="link-light small" href="#!">Terms</a>
                    <span class="text-white mx-1">&middot;</span>
                    <a class="link-light small" href="contact.html">Contact</a>
                </div>
            </div>
        </div>
    </footer>
    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <!-- Core theme JS-->
    <script src="js/scripts.js"></script>
    </form>
</body>
</html>
