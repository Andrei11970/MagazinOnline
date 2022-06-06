<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UitatParola.aspx.cs" Inherits="MagazinOnline.UitatParola" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Parola Uitata</title>
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
                <h2>Recuperare Parola</h2>
                <hr />
                <h3>Te rog introdu adresa de mail și o sa primești un link cu parola ta!</h3>
                
                <div class="form-group">
                    <asp:Label ID="lblEmail" CssClass="col-md-2 control-label" runat="server" Text="Adresa ta de Email"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtEmailID" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorEmail" CssClass="Text-danger" runat="server" ErrorMessage="Inrodu adresa ta de Email" ControlToValidate="txtEmailID" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-md-2">  </div>

                    <div class="col-md-6">
                        <asp:Button ID="btnResetPass" CssClass="btn btn-default" runat="server" Text="Trimite" OnClick="btnResetPass_Click" />
                        <asp:Label ID="lblResetParolMsg" CssClass="text-success" runat="server" ></asp:Label>

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
