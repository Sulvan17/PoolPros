﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="WebApplication1.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content />
    <meta name="author" content />
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
        <!-- Page content-->
        <section class="py-5">
            <div class="container px-5">
                <!-- Contact form-->
                <div class="bg-poolprosthemelight rounded-3 py-5 px-4 px-md-5 mb-5">
                    <div class="text-center mb-5">
                        <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-person"></i></div>
                        <h1 class="fw-bolder">Sign up</h1>
                        <p class="lead fw-normal text-muted mb-0">Get access to more features.</p>
                    </div>
                    <div class="row gx-5 justify-content-center">
                        <div class="col-lg-8 col-xl-6">
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- * * SB Forms Contact Form * *-->
                            <!-- * * * * * * * * * * * * * * *-->
                            <!-- This form is pre-integrated with SB Forms.-->
                            <!-- To make this form functional, sign up at-->
                            <!-- https://startbootstrap.com/solution/contact-forms-->
                            <!-- to get an API token!-->
                            <form id="contactForm" data-sb-form-api-token="API_TOKEN">
                                <!-- Name input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtFName" placeholder="Enter your first name" runat="server"></asp:TextBox>
                                    <label for="name">Name</label>
                                    <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>
                                </div>
                                <!-- Surname input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtLName" placeholder="Enter your Last name" runat="server"></asp:TextBox>
                                    <label for="surname">Surname</label>
                                    <div class="invalid-feedback" data-sb-feedback="name:required">A surname is required.</div>
                                </div>
                                <!-- Email address input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtEmail" placeholder="Enter your email" runat="server"></asp:TextBox>
                                    <label for="email">Email address</label>
                                    <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>
                                    <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>
                                </div>
                                <!-- Phone number input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtPhoneNumber" placeholder="Enter your phone number" runat="server"></asp:TextBox>
                                    <label for="phone">Phone number</label>
                                    <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>
                                </div>
                                <!-- Password input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtPassword" placeholder="Enter your password" runat="server"></asp:TextBox>
                                    <label for="password">Password</label>
                                    <div class="invalid-feedback" data-sb-feedback="password:required">A password is required.</div>
                                </div>
                                <!-- Pyhsical address input-->
                                <div class="form-floating mb-3">
                                    <asp:TextBox class="form-control" ID="txtAddress" placeholder="Enter your first name" runat="server"></asp:TextBox>
                                    <label for="address">Address</label>
                                    <div class="invalid-feedback" data-sb-feedback="address:required">An address is required.</div>
                                </div>
                                <!-- Submit success message-->
                                <!---->
                                <!-- This is what your users will see when the form-->
                                <!-- has successfully submitted-->
                                <div class="d-none" id="signupSuccessMessage">
                                    <div class="text-center mb-3">
                                        <div class="fw-bolder">Form submission successful!</div>
                                        To activate this form, sign up at
                                        <br />
                                        <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>
                                    </div>
                                </div>
                                <!-- Submit error message-->
                                <!---->
                                <!-- This is what your users will see when there is-->
                                <!-- an error submitting the form-->
                                <div class="d-none" id="signupErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>
                                <!-- Submit Button-->
                                <div class="d-grid">
                                    <%--<button class="btn btn-primary btn-lg disabled" id="btnSignup" type="submit">Sign up</button>--%>
                                    <asp:Button class="btn btn-primary btn-lg disabled" ID="btnSignUp" runat="server" Text="Sign up" OnClick="btnSignUp_Click" />
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Contact cards-->
                <div class="row gx-5 row-cols-1 row-cols-lg-4 justify-content-center py-5">
                    <div class="col  mb-5 mb-5 mb-xl-0">
                        <div class="text-center">
                            <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                            <div class="h5">Call us</div>
                            <p class="text-muted mb-0">Call us during normal business hours at (081) 450-2208.</p>
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
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <!-- * *                               SB Forms JS                               * *-->
    <!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
    <!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
    <script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
        </div>
    </form>
</body>
</html>
