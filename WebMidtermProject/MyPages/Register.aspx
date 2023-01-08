<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="WebMidtermProject.MyPages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register Page</title>
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
    </style>

    <link href="../Css/form-validation.css" rel="stylesheet"/>

</head>
<body class="bg-light">
    <div runat="server" style="margin: 0 5% 0 5%;" id="successMessage">
        <div class="alert alert-success" role="alert">
            <h4 class="alert-heading">Success!</h4>
            <p>Your registration has been successfully completed.</p>
            <hr/>
            <p class="mb-0">You will be redirected to Login page in 10 second.</p> 
        </div>
    </div>
    <div runat="server" style="margin: 0 5% 0 5%;" id="errorMessage">
        <div class="alert alert-warning" role="alert">
            <h4 class="alert-heading">Username is already Taken!!!</h4>
            <p>The username that you try to take is already taken. Please try to take different username!</p>
            <hr/>
            <p class="mb-0"></p>
        </div>
    </div>

    <form id="registerForm" runat="server">
        <div class="container">
            <main>
                <div class="py-5 text-center">
                    <h2 runat="server">Register Form</h2>
                </div>

                <div class="row g-5">
                    <div>
                        <div class="row g-3">
                            <div class="col-sm-6">
                                <label for="firstName" class="form-label">First Name <span class="text-muted">*</span></label>
                                <input type="text" class="form-control" id="firstName" placeholder="" value="" runat="server"/>
                                <asp:RequiredFieldValidator ID="firstNameRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="firstName"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-sm-6">
                                <label for="lastName" class="form-label">Last Name <span class="text-muted">*</span></label>
                                <input type="text" class="form-control" id="lastName" placeholder="" value="" runat="server"/>
                                <asp:RequiredFieldValidator ID="lastNameRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="lastName"></asp:RequiredFieldValidator>
                            </div>

                            <div class="col-12">
                                <label for="company" class="form-label">Company <span class="text-muted">*</span></label>
                                <div class="input-group">
                                    <input type="text" class="form-control" id="company" placeholder="Company" runat="server"/>
                                    <asp:RequiredFieldValidator ID="companyRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="company"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="username" class="form-label">Username For Company <span class="text-muted">* (This username will be used for Login)</span></label>
                                <div class="input-group">
                                    <span class="input-group-text">@</span>
                                    <input type="text" class="form-control" id="username" placeholder="Username" runat="server"/>
                                    <asp:RequiredFieldValidator ID="usernameRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="username"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-12">
                                <label for="password" class="form-label">Password <span class="text-muted">*</span></label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="password" placeholder="password" runat="server"/>
                                    <asp:RequiredFieldValidator ID="passwordRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="password"></asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <hr class="my-4"/>

                            <div class="col-12">
                                <label for="email" class="form-label">Email <span class="text-muted">(Optional)</span></label>
                                <input type="email" class="form-control" id="email" placeholder="you@example.com" runat="server" value=""/>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid Email" controltovalidate="email"  ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col-12">
                                <label for="companyEmail" class="form-label">Company Email <span class="text-muted">(Optional)</span></label>
                                <input type="email" class="form-control" id="companyEmail" placeholder="you@example.com" runat="server" value=""/>
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please Enter Valid Email" controltovalidate="companyEmail"  ForeColor="Red" ValidationExpression="^([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$"></asp:RegularExpressionValidator>
                            </div>

                            <div class="col-12">
                                <label for="foundingDate" class="form-label">Founding Date <span class="text-muted">(Optional)</span></label>
                                <input type="date" class="form-control" id="foundingDate" runat="server" value=""/>
                            </div>

                            <hr class="my-4"/>

                            <div class="col-md-5">
                                <label for="country" class="form-label">Country</label>
                                <asp:DropDownList class="form-select"  ID="country" runat="server"></asp:DropDownList>
                                <asp:RequiredFieldValidator ID="countryRequiredFieldValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="country"></asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <hr class="my-4"/>
                        <asp:Button class="w-100 btn btn-primary btn-lg" ID="Button1" runat="server" Text="Continue to register" OnClick="MyRegisterButton_Click"/>
                        <p> </p>
                        <asp:Button ID="Button2" runat="server" Text="Login" OnClick="MyreturnLoginButton_Click" class="w-100 btn btn-lg" Font-Underline="true" CausesValidation="false"/>
                    </div>
                </div>
            </main>

            <footer class="my-5 pt-5 text-muted text-center text-small">
                <p class="mb-1">&copy; 2022</p>
            </footer>
        </div>
    </form>

    <script src="../MyScripts/bootstrap.bundle.min.js"></script>
    <script src="../MyScripts/form-validation.js"></script>
</body>
</html>
