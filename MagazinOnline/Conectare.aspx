<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Conectare.aspx.cs" Inherits="MagazinOnline.Conectare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Conectare</title>
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
            <asp:CheckBox ID="CheckBox1" runat="server" />
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
                             
                             <li class="active"><a href="Logare.aspx">Înregistrare</a> </li>
                             <li ><a href="Logare.aspx">Conectare</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <div class="center-page">
            <label class="col-xs-11">NumeUtilizator:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtNumeUtilizator" runat="server" Class="form-control" placeholder="Introdu numele tau"></asp:TextBox>
        </div>
            
            <label class="col-xs-11">Parola:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtParola" runat="server" TextMode="Password" Class="form-control" placeholder="Parola"></asp:TextBox>
        </div>


            <label class="col-xs-11">Confirmare Parola:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtConfirmareParola" runat="server" TextMode="Password" Class="form-control" placeholder="Confirmare parola"></asp:TextBox>
        </div>

            <label class="col-xs-11">Nume Complet:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtNume" runat="server" Class="form-control" placeholder="Introdu numele tau"></asp:TextBox>
        </div>

            <label class="col-xs-11">E-mail:</label>
            <div class="col-xs-11">
            <asp:TextBox ID="txtEmail" runat="server" Class="form-control" placeholder="Introdu e-mail-ul tau"></asp:TextBox>
        </div>
            <label class="col-xs-11"></label>
            <div class="col-xs-11">
                <asp:Button ID="txtInregistrare" class="btn btn-success" runat="server" Text="Înregistrare" OnClick="txtInregistrare_Click" />
                <asp:Label ID="lblMsg" runat="server" Text="Label"></asp:Label>
        </div>
       </div>

        
        <hr />
        <footer class="footer-pos">
            <div class="container">
                <p class="pull-right "><a href="#">Întoarcete la început</a></p>
                <p>&copy;2022MagazinulMeu.in &middot; <a href="WebForm1.aspx">Acasa</a>&middot;<a href="#">Despre noi</a>&middot; <a href="#">Contactează-ne</a>&middot;<a href="#">Produse</a></p>
            </div>
        </footer>
    
    </form>

</body>
</html>
