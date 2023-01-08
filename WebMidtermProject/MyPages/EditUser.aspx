<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="WebMidtermProject.MyPages.EditUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Edit User Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous"/>

    <link href="../Css/bootstrap.min.css" rel="stylesheet" />
    <link href="../Css/StyleSheet.css" rel="stylesheet"/>

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

      .myDataTable{
          border: 2px #DFDFDF solid;
          border-radius: 10px;
          font-size: 18px;
      }
          .myDataTable td{
              padding: 7px 40px 7px 20px;
          }
    </style>

    <link href="../Css/form-validation.css" rel="stylesheet"/>

</head>
<body>
    <div runat="server" style="margin: 0 5% 0 5%;" id="successMessage">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Success!</h4>
            <p>Your informations is succesfully updated.</p>
            <hr/>
            <p class="mb-0"></p> 
        </div>
    </div>
    <div runat="server" style="margin: 0 5% 0 5%;" id="errorMessage">
        <div class="alert alert-warning" role="alert">
            <h4 class="alert-heading">Error!!!</h4>
            <p>Please try again.</p>
            <hr/>
            <p class="mb-0"></p>
        </div>
    </div>

    <form runat="server">
    <div class="container">
        <main>
            <div class="py-5 text-center">
                <h2>Edit User Information</h2>
            </div>

            <div class="row g-5">
                <div class="col-md-5 col-lg-4 order-md-last">
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Username</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Name</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button1" runat="server" Text="Edit" OnClick="Button1_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Surname</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button2" runat="server" Text="Edit" OnClick="Button2_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Password</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button4" runat="server" Text="Edit" OnClick="Button4_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Email</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button5" runat="server" Text="Edit" OnClick="Button5_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Email</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button6" runat="server" Text="Edit" OnClick="Button6_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Founding Date</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button7" runat="server" Text="Edit" OnClick="Button7_Click" CausesValidation="false"/>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Country</h6>
                            </div>
                            <asp:Button class="btn btn-outline-secondary btn-sm" ID="Button8" runat="server" Text="Edit" OnClick="Button8_Click" CausesValidation="false"/>
                        </li>
                    </ul>
                </div>
                <div class="col-md-7 col-lg-8" id="inputField" style="display:none" runat="server">
                    <h2 class="h3 mb-3 fw-normal">New <span id="whichField" runat="server"></span></h2>
                    <div class="form-floating">
                        <input type="text" class="form-control" id="uInput" placeholder=" " runat="server"/>
                        <label for="uInput" id="inputText" runat="server"></label>
                        <asp:RequiredFieldValidator ID="inputValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="uInput"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="inputRegularExpressionValidator" runat="server" ErrorMessage="Invalid Email" ControlToValidate="uInput" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$" Enabled="False" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>

                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="saveButton" runat="server" Text="Save" OnClick="saveButton_Click"/>
                    <p> </p>
                    <asp:Button ID="returnButton" runat="server" Text="Return" class="w-100 btn btn-lg" Font-Underline="true" CausesValidation="false" OnClick="returnButton_Click"/>
                </div>
                <div class="col-md-5 col-lg-8" id="infoTable" style="display:block" runat="server">
                    <ul class="list-group mb-3">
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Username</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="companyUsernameData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Name</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="nameData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Surname</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="surnameData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Password</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="passwordData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Email</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="emailData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Email</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="companyEmailData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company Founding Date</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="companyFoundingDateData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Country</h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="countryData" runat="server"></h6>
                            </div>
                        </li>
                        <li class="list-group-item d-flex justify-content-between lh-sm">
                            <div>
                                <h6 class="my-0">Company<span class="text-muted">(Unchangeable)</span></h6>
                            </div>
                            <div>
                                <h6 class="my-0 text-muted" id="companyData" runat="server"></h6>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
        <asp:Button ID="homeButton" runat="server" Text="Home Page" class="w-100 btn btn-lg" Font-Underline="true" CausesValidation="false" OnClick="homeButton_Click"/>
        <footer class="my-5 pt-5 text-muted text-center text-small">
            <p class="mb-1">&copy; 2022</p>
        </footer>
    </div>
    </form>
    <script src="../assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="form-validation.js"></script>
</body>
</html>
