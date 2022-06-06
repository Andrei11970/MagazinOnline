<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RecuperareParola.aspx.cs" Inherits="MagazinOnline.RecuperareParola" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reseta parola sau recăpatare parola</title>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">  
    <link href="css/Custome.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle " data-toggle="collapse" data-target=".navbar-collapse">
                            <span class="sr-only">Toggle Navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="WebForm1.aspx" ><span ><img src="Poze/safeIcons.png" alt="MagazinulMeu" height="30" /></span>MagazinulMeu </a>
                    </div>
                    <div class="navbar-collapse collapse">
                        <ul class="nav navbar-nav navbar-right">
                            <li ><a href="WebForm1.aspx">Acasa</a> </li>
                            <li ><a href="#">Despre noi</a> </li>
                            <li ><a href="#">Contactează-ne</a> </li>
                            <li ><a href="#">Blog-</a> </li>
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Produse<b class="caret"></b></a>
                                <ul class="dropdown-menu">
                                    <li class="dropdown-header ">Bărbați</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Cămăși</a></li>
                                    <li><a href="#">Pantaloni</a></li>
                                    <li><a href="#">Blugi</a></li>
                                    
                                    <li role="separator" class="divider"></li>
                                    
                                    <li class="dropdown-header ">Femei</li>
                                    <li role="separator" class="divider"></li>
                                    <li><a href="#">Top</a></li>
                                    <li><a href="#">Colanți</a></li>
                                    <li><a href="#">Blugi</a></li>
                                </ul>
                            </li>
                           
                            <li ><a href="Logare.aspx">Conectare</a> </li>
                        </ul>
                    </div>

                </div>
               </div>



        </div>


        <div class="container">
            <div class="form-horizontal">
                <br />
                <br />
                <br />

                <h2>Reset Parola</h2>
                <hr />
                <h3></h3>
                <div class="form-group">
                    <asp:Label ID="lblmsg" CssClass="col-md-2 control-label" runat="server" Visible="False" Font-Bold="True" Font-Size="X-Large"></asp:Label>

                </div>

                <div class="form-group">
                    <asp:Label ID="lblNewPassword" CssClass="col-md-2 control-label" runat="server" Text="Parola Noua" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtNewPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorNewPass" CssClass="Text-danger" runat="server" ErrorMessage="Inrodu noua parola" ControlToValidate="txtNewPass" ForeColor="Red"></asp:RequiredFieldValidator>
                    
                    </div>
                </div>

                <div class="form-group">
                    <asp:Label ID="lblConfirmPass" CssClass="col-md-2 control-label" runat="server" Text="Confirm noua parola" Visible="False"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtConfirmPass" CssClass="form-control" TextMode="Password" runat="server" Visible="False"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorConfirmPass" CssClass="Text-danger" runat="server" ErrorMessage="Confirma noua parola" ControlToValidate="txtConfirmPass" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidatorPass" runat="server" ErrorMessage="Confirmarea parolei nu se potrivește...încearca din nou" ControlToCompare="txtNewPass" ForeColor="Red" ControlToValidate="txtConfirmPass"></asp:CompareValidator>

                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">  </div>

                    <div class="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Reset" Visible="False" OnClick="btnResetPass_Click"  />
                        

                    </div>
                </div>

            </div>
        </div>

    </form>

    <hr />
         <footer>
            <div class="container">
                <p class="pull-right "><a href="#">Întoarcete la început</a></p>
                <p>&copy;2022MagazinulMeu.in &middot; <a href="WebForm1.aspx">Acasa</a>&middot;<a href="#">Despre noi</a>&middot; <a href="#">Contactează-ne</a>&middot;<a href="#">Produse</a></p>
            </div>
        </footer>

</body>
</html>
