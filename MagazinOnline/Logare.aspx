<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Logare.aspx.cs" Inherits="MagazinOnline.Logare" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Logare</title>
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
                            <li ><a href="Conectare.aspx">Înregistrare</a> </li>
                            <li class="active"><a href="Logare.aspx">Conectare</a> </li>
                        </ul>
                    </div>

                </div>
               </div>
            
        </div>
            <br />
            <br />
            <br />

             <div class ="container ">
                <div class ="form-horizontal ">
                    <h2>Intra-ți in cont</h2>
                    <hr />
                    <div class ="form-group">
                        <asp:Label ID="Label1" CssClass ="col-md-2 control-label " runat="server" Text="NumeUtilizator"></asp:Label>
                    <div class ="col-md-3 ">

                            <asp:TextBox ID="txtNumeUtilizator" CssClass="form-control" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorNumeUtilizator" runat="server" CssClass="text-danger" ErrorMessage="Introdu numele de utilizator" ControlToValidate="txtNumeUtilizator" ForeColor="Red"></asp:RequiredFieldValidator>

                        </div>                                  
                    </div>


                     <div class ="form-group">
                    <asp:Label ID="Label2" CssClass ="col-md-2 control-label " runat="server" Text="Parola"></asp:Label>
                    <div class ="col-md-3 ">

                        <asp:TextBox ID="txtParola" CssClass="form-control" runat="server" TextMode="Password" ></asp:TextBox> 
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorParola" runat="server" CssClass="text-danger" ErrorMessage="Introdu o parola valida" ControlToValidate="txtParola" ForeColor="Red"></asp:RequiredFieldValidator>
                    </div>
                </div>


                <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" CssClass =" control-label " runat="server" Text="Ține minte"></asp:Label>
                    </div>
                </div>

                      <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Button ID="btnLogin" CssClass="btn btn-success" runat="server" Text="Login&raquo;" OnClick="btnLogin_Click" />
                        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Conectare.aspx">Fați cont</asp:HyperLink>
                      
                    </div>
                </div>

                     <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">
                        <asp:HyperLink ID="HyParolaUitata" runat="server" NavigateUrl="~/UitatParola.aspx">Ai uitat parola?</asp:HyperLink>                        
                    </div>
                </div>


                    <div class ="form-group">
                    <div class ="col-md-2 "> </div>
                    <div class ="col-md-6 ">

                        <asp:Label ID="lbleror" CssClass="text-danger" runat="server" ></asp:Label>
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
