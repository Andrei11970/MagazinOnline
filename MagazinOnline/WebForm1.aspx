<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MagazinOnline.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Magazinul online a unei compani de haine</title>
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
                            <li class="active"><a href="WebForm1.aspx">Acasa</a> </li>
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
                            <li ><a href="Logare.aspx">Conectare</a> </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="container">
  <h2>Carousel Example</h2>  
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    
    <div class="carousel-inner">
      <div class="item active">
        <img src="Poze/poza2.jpg" alt="Poza1" style="width:100%;">
          <div class="carousel-caption">
          <h3>Haine Femei</h3>
          <p>Reduceri 30%</p>
          <p><a class="btn btn-lg btn-primary" href="#" role="button">Cumpară Acum</a></p>
        </div>
      </div>

      <div class="item">
        <img src="Poze/poza1.jpg"  alt="Poza2" style="width:100%;">
          <div class="carousel-caption">
          <h3>Haine Bărbați</h3>
          <p>Reduceri 40%</p>
          
        </div>
      </div>
    
      <div class="item">
        <img src="Poze/poza3.jpg"  alt="Poza3" style="width:100%;">
          <div class="carousel-caption">
          <h3>Alte articole</h3>
          <p>Reduceri 20%</p>
        </div>
      </div>
    </div>

    
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
        </div>
            <hr />
            <div class="container center ">
                <div class="row">
                    <div class="col-lg-4">
                        <img class="img-circle" src="Poze/desprenoi.jpg" alt="thumb" width="140" height="140" />
                        <h2>Despre noi</h2>
                        <p>Bun venit pe site-ul nostru. Acest site a fost înfințat in 2014 și ne dorim sa creștem astfel încât sa deschidem un magazin fizic in Constanța.
                            Noi oferim produse de calitate superioara și la prețuri accesibile, astfel clienți noștri sunt foarte multumiți produsele comandate
                            ...
                        </p>
                        <p> <a class="btn btn-default" href="#" role="button">Vezi mai mult &raquo;</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle" src="Poze/adidasi.jpg" alt="thumb" width="140" height="140" />
                        <h2>Încălţăminte</h2>
                        <p> Încălţămintea noastra este confecționată din diverse materiale de înaltă calitate (piele, piele artificială, textil, etc.), diverse forma și
                            marimi pentru toate gusturile, de la copii mici la oameni de afaceri, avem tot ce ți-ai putea dori 
                            ...
                        </p>
                        <p> <a class="btn btn-default" href="#" role="button">Vezi mai mult &raquo;</a></p>
                    </div>
                    <div class="col-lg-4">
                        <img class="img-circle" src="Poze/poza4.jpg" alt="thumb" width="140" height="140" />
                        <h2>Haine</h2>
                        <p> Hainele noastre sunt confecționate din cele mai bune materiale(matasem, satin, material textil, etc.), oferi confort și lejeritate
                            ...
                        </p>
                        <p> <a class="btn btn-default" href="#" role="button">Vezi mai mult &raquo;</a></p>
                    </div>
                </div>
            </div>
 
         <hr />
         <footer>
            <div class="container">
                <p class="pull-right "><a href="#">Întoarcete la început</a></p>
                <p>&copy;2022MagazinulMeu.in &middot; <a href="WebForm1.aspx">Acasa</a>&middot;<a href="#">Despre noi</a>&middot; <a href="#">Contactează-ne</a>&middot;<a href="#">Produse</a></p>
            </div>
        </footer>

    </form>
    
</body>
</html>
