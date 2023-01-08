<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Results.aspx.cs" Inherits="WebMidtermProject.MyPages.Results" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Results Page</title>

    <link href="../Css/bootstrap.min.css" rel="stylesheet"/>

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    <link href="../Css/dashboard.css" rel="stylesheet"/>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <header class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0 shadow">
                <a class="navbar-brand col-md-3 col-lg-2 me-0 px-3 fs-6" href="#"><p id="companyN" runat="server"></p></a>
                <button class="navbar-toggler position-absolute d-md-none collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu" aria-controls="sidebarMenu" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="navbar-nav">
                    <div class="nav-item text-nowrap">
                        <a class="nav-link px-3" href="Home.aspx">Home Page</a>
                    </div>
                </div>
            </header>

            <div class="container-fluid">
                <div class="row">
                    <nav id="sidebarMenu" class="col-md-3 col-lg-2 d-md-block bg-light sidebar collapse">
                        <div class="position-sticky pt-3 sidebar-sticky">
                            <ul class="nav flex-column mb-2">
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1010" runat="server" OnClick="getT1010"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1010</asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1016" runat="server" OnClick="getT1016"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1016</asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1047" runat="server" OnClick="getT1047"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1047</asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1049" runat="server" OnClick="getT1049"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1049</asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1057" runat="server" OnClick="getT1057"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1057</asp:LinkButton>
                                </li>
                                <li class="nav-item">
                                    <asp:LinkButton CssClass="nav-link" ID="RT1518" runat="server" OnClick="getT1518"><span data-feather="file-text" class="align-text-bottom"></span> Get Results For T1518</asp:LinkButton>
                                </li>
                            </ul>
                        </div>
                    </nav>

                    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                        
                        <h2>
                            <span id="testN" runat="server"></span> Test Results
                        </h2>
                        <div class="table-responsive">
                            <asp:GridView ID="MyResults" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="2" RowStyle-BorderColor="Black" RowStyle-BorderStyle="Solid" RowStyle-BorderWidth="2"></asp:GridView>
                        </div>
                    </main>
                </div>
            </div>

            <script src="../MyScripts/bootstrap.bundle.min.js"></script>
            <script src="https://cdn.jsdelivr.net/npm/feather-icons@4.28.0/dist/feather.min.js" integrity="sha384-uO3SXW5IuS1ZpFPKugNNWqTZRRglnUJK6UAZ/gxOX80nxEkN9NcGZTftn6RzhGWE" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/chart.js@2.9.4/dist/Chart.min.js" integrity="sha384-zNy6FEbO50N+Cg5wap8IKA4M/ZnLJgzc6w2NqACZaK0u0FXfOWRRJOnQtpZun8ha" crossorigin="anonymous"></script>
            <script src="../MyScripts/dashboard.js"></script>
        </div>
    </form>
</body>
</html>
