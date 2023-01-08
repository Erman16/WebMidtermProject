﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebMidtermProject.MyPages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Page</title>
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
    
    <link href="../Css/signin.css" rel="stylesheet"/>
</head>
<body class="text-center">
    <main class="form-signin w-100 m-auto">
        <form id="loginForm" runat="server">
            <h1 class="h3 mb-3 fw-normal">Please login</h1>
            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" ForeColor="Red" Font-Underline="False"></asp:LinkButton>

            <div class="form-floating">
                <input class="form-control" id="companyUsername" placeholder=" " runat="server"/>
                <label for="company">Company Username</label>
                <asp:RequiredFieldValidator ID="usernameValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="companyUsername"></asp:RequiredFieldValidator>
            </div>
            <div class="form-floating">
                <input type="password" class="form-control" id="uPassword" placeholder=" " runat="server"/>
                <label for="floatingPassword">Password</label>
                <asp:RequiredFieldValidator ID="passwordValidator" runat="server" ErrorMessage="Required" ForeColor="Red" ControlToValidate="uPassword"></asp:RequiredFieldValidator>
            </div>

            <div class="checkbox mb-3">
                <label>
                <input type="checkbox" id="rMe" runat="server"/> Remember me
                </label>
            </div>
            <asp:Button class="w-100 btn btn-lg btn-primary" ID="loginButton" runat="server" Text="Login" OnClick="MyLoginButton"/>
            <p> </p>
            <asp:Button ID="registerButton" runat="server" Text="Register" OnClick="registerButton_Click" class="w-100 btn btn-lg" Font-Underline="true" CausesValidation="false"/>
            <p class="mt-5 mb-3 text-muted">&copy; 2022</p>
        </form>
    </main>
</body>
</html>
