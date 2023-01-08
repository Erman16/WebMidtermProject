<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebMidtermProject.MyPages.Home"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home Page</title>
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

      .myData{
          border: 2px black solid;
          table-layout: fixed;
          width: 100%;
      }
      .myData td:nth-child(odd){
          border: 2px black solid;
          word-wrap: break-word;
      }
      .myData td:nth-child(even){
          border: 2px black solid;
          padding: 10px;
          word-wrap: break-word;
      }
    </style>

    <link href="../Css/grid.css" rel="stylesheet"/>
    <link href="../Css/pricing.css" rel="stylesheet"/>
    <link href="../Css/headers.css" rel="stylesheet"/>

</head>
<body>
    <form id="form1" runat="server">
        
        <header class="p-3 text-bg-dark">
            <div class="container">
                <div class="collapse bg-dark" id="navbarHeader">
                    <div class="container">
                        <div class="row">
                            <div class="col-sm-8 col-md-7 py-4">
                                <h4 class="text-white">About Mitra</h4>
                                <p class="text-muted">MITRE is a non-profit organization. MITRE ATT&CK, on ​​the other hand, is a framework that started to be used free of charge in 2013 and models the attacker behavior in 
                                    cyber attacks that have been made or may be made. Due to the need to "categorize" these attacks and the behavior of the attackers, the Matrix structure has been developed.
                                    <br><br>This structure is a structure that shows the attacks that the attackers can make, how they infiltrate the systems and the tactics and techniques they follow while performing the 
                                    infiltration operations. (We will refer to the matrix structure under the heading 2.3)<br><br>MITRE ATT&CK is supported and developed not only by MITRE but also by other organizations. 
                                    For this reason, it has become a worldwide appreciated and exemplary platform<br></p>
                            </div>
                            <div class="col-sm-4 offset-md-1 py-4">
                                <h4 class="text-white">Usefull Webpages</h4>
                                <ul class="list-unstyled">
                                    <li><a href="https://attack.mitre.org/" class="text-white">Official Mitre Page</a></li>
                                    <li><a href="https://www.linkedin.com/in/ermanyalcin/" class="text-white">Erman Yalçın Linkedln</a></li>
                                    <li><a href="https://www.linkedin.com/in/ilayda-g%C3%BClasar-3b8b30215/" class="text-white">İlayda Dilay Gülasar Linkedln</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
              <div class="d-flex flex-wrap align-items-center justify-content-center justify-content-lg-start">
                  <a href="#" class="d-flex align-items-center mb-2 mb-lg-0 text-white text-decoration-none">
                    <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" aria-hidden="true" class="me-2" viewBox="0 0 24 24"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"/><circle cx="12" cy="13" r="4"/></svg>
                    <strong id="companyNamePlace" runat="server"></strong>
                  </a>

                <ul class="nav col-12 col-lg-auto me-lg-auto mb-2 justify-content-center mb-md-0">
                </ul>

                <div class="text-end">
                    <button type="button" class="btn btn-outline-light me-2" onclick="gotoEdit()">Update User Information</button><script>function gotoEdit() { window.location.href = "EditUser.aspx"; }</script>
                    <button type="button" class="btn btn-outline-light me-2" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-arrow-bar-down" viewBox="0 0 16 16">
                          <path fill-rule="evenodd" d="M1 3.5a.5.5 0 0 1 .5-.5h13a.5.5 0 0 1 0 1h-13a.5.5 0 0 1-.5-.5zM8 6a.5.5 0 0 1 .5.5v5.793l2.146-2.147a.5.5 0 0 1 .708.708l-3 3a.5.5 0 0 1-.708 0l-3-3a.5.5 0 0 1 .708-.708L7.5 12.293V6.5A.5.5 0 0 1 8 6z"/>
                        </svg>
                    </button>
                    <button type="button" class="btn btn-outline-light me-2" onclick="gotoLogin()">Exit</button><script>function gotoLogin() { window.location.href = "Login.aspx"; }</script>
                </div>
              </div>
            </div>
            </header>

        <div class="container py-3">
          <header>
            <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
              <h2 class="display-4 fw-normal">Selection Of Mitre Att&ck</h2>
              <p class="fs-5 text-muted  border-bottom" id="yazdir" runat="server">Please Select one of the following Mitre Att&cks</p>

                <div runat="server" style="margin: 0 5% 0 5%;" id="successMessage">
                    <asp:LinkButton CssClass="btn btn-outline-success" ID="LinkButton9" runat="server" Font-Underline="False" href="#buttons">Go to The Buttons For another Try! or seeing the all results.</asp:LinkButton>
                    <hr />
                    <div class="alert alert-success" role="alert" style="width: 100%">
                        <h4 class="alert-heading">Success!</h4>
                        <p>Attack is succesfully maded. Your result saved in database. You can reach All results on All Results page</p>
                        <h6 class="alert-heading">Results:</h6>
                        <hr/>
                        <div class="mb-0" id="AttacksResults" runat="server"></div> 
                    </div>
                </div>
                <div runat="server" style="margin: 0 5% 0 5%;" id="errorMessage">
                    <div class="alert alert-warning" role="alert">
                        <h4 class="alert-heading">Attack is cancelled.</h4>
                        <p>Your system may interrupt the attack.</p>
                        <hr/>
                        <p class="mb-0"></p>
                    </div>
                </div>
                <div id="buttons">
                    <br/>
                    <br/>
                    <asp:Button class="w-80 btn btn-lg btn-warning" ID="ResultsButton" runat="server" Text="Applied Attacks" OnClick="ResultsButton_Click"/>
                </div>
            </div>
          </header>

          <main>
            <h3 class="fs-3 text-muted text-center" runat="server">Attacks that return a result </h3>
            <h6 class="fs-5 text-muted text-center">The result will be saved in the database to be displayed on the <b>Applied Attacks.</b></h6>
            <br/>

            <div class="row row-cols-1 row-cols-md-2 mb-3 text-center">
              <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1010</h4>
                  </div>
                  <div class="card-body">
                        <h4>Application Window Discovery</h4>
                        <p style="color:white; margin-top: -16px">.</p>
                        <p>Adversaries may attempt to get a listing of open application windows. Window listings could convey information about how the system is used or give context to information collected by a keylogger.</p>
                        <p style="color:white; margin-top: -11px">.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li><strong>Tactic:</strong> Discovery</li>
                            <li><strong>Platforms:</strong> Linux, Windows, macOS</li>
                            <li><strong>Version:</strong> 1.2</li>
                            <li><asp:LinkButton ID="LinkButton1" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1010/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test1" runat="server" Text="Test My System" OnClick="Test1_ButtonClick"/>
                  </div>
                </div>
              </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1047</h4>
                  </div>
                  <div class="card-body">
                        <h4>Windows Management Instrumentation</h4>
                        <p>Adversaries may abuse Windows Management Instrumentation (WMI) to execute malicious commands and payloads. WMI is an administration feature that provides a uniform environment to access Windows system components.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                          <li><strong>Tactic:</strong> Execution</li>
                            <li><strong>Platforms:</strong> Windows </li>
                            <li><strong>Supports Remote:</strong> Yes </li>
                            <li><asp:LinkButton ID="LinkButton2" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1047/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                        <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test2" runat="server" Text="Test My System"  OnClick="Test2_ButtonClick"/>
                  </div>
                </div>
              </div>
                <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1016</h4>
                  </div>
                  <div class="card-body">
                        <h4>System Network Configuration Discovery</h4>
                        <p>Adversaries may look for details about the network configuration and settings, such as IP and/or MAC addresses, of systems they access or through information discovery of remote systems.</p>
                        <p style="color:white; margin-top: -16px">.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                            <li><strong>Tactic:</strong> Discovery</li>
                            <li><strong>Platforms:</strong> Linux, Network, Windows, macOS</li>
                            <li><strong>Version:</strong> 1.5</li>
                            <li><asp:LinkButton ID="LinkButton3" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1016/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test3" runat="server" Text="Test My System" OnClick="Test3_ButtonClick"/>
                  </div>
                </div>
              </div>
            <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1049</h4>
                  </div>
                  <div class="card-body">
                        <h4>System Network Connections Discovery</h4>
                        <p>Adversaries may attempt to get a listing of network connections to or from the compromised system they are currently accessing or from remote systems by querying for information over the network.</p>
                        <p style="color:white; margin-top: -16px">.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                          <li><strong>Tactic:</strong> Discovery</li>
                            <li><strong>Platforms:</strong> IaaS, Linux, Network, Windows, macOS </li>
                            <li><strong>Version:</strong> 2.4 </li>
                            <li><asp:LinkButton ID="LinkButton4" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1049/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test4" runat="server" Text="Test My System"  OnClick="Test4_ButtonClick"/>
                  </div>
                </div>
              </div>
                <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1057</h4>
                  </div>
                  <div class="card-body">
                        <h4>Process Discovery</h4>
                        <p>Adversaries may attempt to get information about running processes on a system. Information obtained could be used to gain an understanding of common software/applications running on systems within the network.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                          <li><strong>Tactic:</strong> Discovery</li>
                            <li><strong>Platforms:</strong> Linux, Windows, macOS </li>
                            <li><strong>Version:</strong> 1.2 </li>
                            <li><asp:LinkButton ID="LinkButton5" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1057/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test5" runat="server" Text="Test My System"  OnClick="Test5_ButtonClick"/>
                  </div>
                </div>
              </div>
              <div class="col">
                <div class="card mb-4 rounded-3 shadow-sm">
                  <div class="card-header py-3">
                    <h4 class="my-0 fw-normal">T1518</h4>
                  </div>
                  <div class="card-body">
                        <h4>Software Discovery</h4>
                        <p>Adversaries may attempt to get a listing of software and software versions that are installed on a system or in a cloud environment.</p>
                        <ul class="list-unstyled mt-3 mb-4">
                          <li><strong>Tactic:</strong> Discovery</li>
                            <li><strong>Platforms:</strong> Azure AD, Google Workspace, IaaS, Linux, Office 365, SaaS, Windows, macOS </li>
                            <li><strong>Version:</strong> 1.3 </li>
                            <li><asp:LinkButton ID="LinkButton6" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1518/">Click and refresh for Mitra Att&ck page</asp:LinkButton></li>
                        </ul>
                    <asp:Button class="w-100 btn btn-lg btn-primary" ID="Test6" runat="server" Text="Test My System"  OnClick="Test6_ButtonClick"/>
                  </div>
                </div>
              </div>
            </div>
            <br />
            <h3 class="fs-3 text-muted text-center" runat="server">Attacks that trigers only.</h3>
            <h6 class="fs-5 text-muted text-center">results are not saved.</h6>
                <div class="row mb-3 text-center">
                    <div class="col-md-3 themed-grid-col">T1003 - OS Credential Dumping</div>
                    <div class="col-md-6 themed-grid-col"><asp:LinkButton ID="LinkButton7" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1003/">Click and refresh for Mitra Att&ck page</asp:LinkButton></div>
                    <div class="col-md-3 themed-grid-col"> <asp:Button class="btn btn-outline-primary" ID="Test7" runat="server" Text="Test My System"  OnClick="Test7_ButtonClick"/></div>
                </div>
                <div class="row mb-3 text-center">
                    <div class="col-md-3 themed-grid-col">T1529 - System Shutdown/Reboot</div>
                    <div class="col-md-6 themed-grid-col"><asp:LinkButton ID="LinkButton8" runat="server" Font-Underline="False" PostBackUrl="https://attack.mitre.org/techniques/T1529/">Click and refresh for Mitra Att&ck page</asp:LinkButton></div>
                    <div class="col-md-3 themed-grid-col"> <asp:Button class="btn btn-outline-primary" ID="Test8" runat="server" Text="Test My System"  OnClick="Test8_ButtonClick"/></div>
                </div>
          </main>

          <footer class="pt-4 my-md-5 pt-md-5 border-top">
            <div class="row" style="text-align:center">
                <small class="mb-3 text-muted">&copy; 2022</small>
            </div>
          </footer>
        </div>
    </form>

    <script src="../MyScripts/bootstrap.bundle.min.js"></script>
</body>
</html>
