<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Services.aspx.cs" Inherits="WebApplication1.Services" %>

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
        <div>
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
            <!-- services section-->
            <section class="bg-light py-5">
                <div class="container px-5 my-5">
                    <div class="text-center mb-5">
                        <h1 class="fw-bolder">Pay on pool size</h1>
                        <p class="lead fw-normal text-muted mb-0">With our no hassle services plans</p>
                    </div>
                    <div class="row gx-5 justify-content-center">
                        <!-- services card free-->
                        <div class="col-lg-6 col-xl-5">
                            <div class="card mb-5 mb-xl-0">
                                <div class="card-body p-5">
                                    <div class="text-uppercase display-4 fw-bold text-muted">Services</div>
                                    <div class="mb-3">
                                        <span class="h-25 fw-bold text-muted">Prices vary on size.</span>
                                        <br />
                                        <span class="text-muted">Payment frequency varies due to requests.</span>
                                    </div>
                                    <div class="position-relative ">
                                        <img  src="PinClipart.com_pool-clip-art_5241347" alt="..."/>
                                    </div>
                                    <div>
                                        <strong>
                                            Weekly Pool Maintenance<br />
                                            Repairs and Renovations<br />
                                            New Pools: Fibreglass and Marbilite<br />
                                            Heat Pumps and Solar Heating<br />
                                            Water features and Koi Ponds
                                        </strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- services card pro-->
                        <div class="col-lg-6 col-xl-5">
                            <div class="card mb-5 mb-xl-0">
                                <div class="card-body p-5">
                                    <div class="text-uppercase display-4 fw-bold text-muted">Operating hours</div>
                                    
                                    <div class="position-relative ">
                                        <img src="PinClipart.com_clock-face-clipart_149694" alt="..." />
                                    </div>
                                    <div>
                                        <strong>
                                            Working hours: 08h00 - 17h00
                                        </strong>
                                    </div>
                                </div>
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
        </div>
    </form>
</body>
</html>
