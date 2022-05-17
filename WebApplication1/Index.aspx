<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="WebApplication1.Index" EnableEventValidation="false" %>

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
<body class="d-flex flex-column h-100">
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
            <!-- Header-->
            <header class="bg-poolprostheme py-5">
                <div class="container px-5">
                    <div class="row gx-5 align-items-center justify-content-center">
                        <div class="col-lg-8 col-xl-7 col-xxl-6">
                            <div class="my-5 text-center text-xl-start">
                                <h1 class="display-5 fw-bolder text-white mb-2">Welcome! </h1>
                                <p class="lead fw-normal text-white-50 mb-4">Please feel free to browse our site. We're sure you'll find something you like. If you do feel free to visit our 'Services' page.</p>
                                <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                    <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                                    <a class="btn btn-outline-light btn-lg px-4 me-sm-3" href="#Login">Login</a>
                                    <asp:LinkButton class="btn btn-outline-light btn-lg px-4" ID="btnSignup" runat="server" OnClick="btnSignup_Click">Sign up</asp:LinkButton>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center"><img class="img-fluid rounded-3 my-5" src="C:\Users\sulva\OneDrive\Pictures\Professional PoolCare Services CC.jpg" alt="..." /></div>
                    </div>
                </div>
            </header>
            <!-- Features section-->
            <section class="py-5" id="features">
                <div class="container px-5 my-5">
                    <div class="row gx-5">
                        <div class="col-lg-4 mb-5 mb-lg-0"><h2 class="fw-bolder mb-0">Great pools start here.</h2></div>
                        <div class="col-lg-8">
                            <div class="row gx-5 row-cols-1 row-cols-md-2">
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-collection"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div>
                                <div class="col mb-5 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-building"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div>
                                <div class="col mb-5 mb-md-0 h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div>
                                <div class="col h-100">
                                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-toggles2"></i></div>
                                    <h2 class="h5">Featured title</h2>
                                    <p class="mb-0">Paragraph of text beneath the heading to explain the heading. Here is just a bit more text.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            
                    <!-- Call to action-->
                    <aside class="bg-poolprosthemelight bg-gradient rounded-3 p-4 p-sm-5 mt-5" id="Login">
                        <div class="d-flex align-items-center justify-content-between flex-column flex-xl-row text-center text-xl-start">
                            <div class="mb-4 mb-xl-0">
                                <div class="fs-3 fw-bold ">Our services at your doorstep.</div>
                                <div class="text-muted">Login to your account.</div>
                            </div>
                            <div class="ms-xl-4">
                                <div class="input-group ">
                                    <%--<input class="form-control" type="text" placeholder="Email address..." aria-label="Email address..." aria-describedby="button-newsletter" />--%>
                                    <asp:TextBox class="form-control" ID="txtEmail" runat="server" placeholder="Email address..." aria-label="Email address..." aria-describedby="button-newsletter"></asp:TextBox>
                                </div>
                                <div>
                                    <%--<input class="form-control" type="text" placeholder="Password..." aria-label="Password..." aria-describedby="button-newsletter" />--%>
                                    <asp:TextBox class="form-control" ID="txtPassword" runat="server" placeholder="Password..." aria-label="Password..." aria-describedby="button-newsletter"></asp:TextBox>
                                </div>
                                <div>
                                    <asp:Button class="btn btn-outline-dark btn-lg" ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                    <%--<button class="btn btn-outline-dark btn-lg" id="button-newsletter" type="button">Login</button>--%>
                                </div>
                                <div class="small text-muted">We care about privacy, and will never share your data.</div>
                            </div>
                        </div>
                    </aside>
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
