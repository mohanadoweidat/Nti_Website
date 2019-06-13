<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Projects.aspx.cs" Inherits="Nti_Website.Projects" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Projekt</title>
      <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">

    <link rel="stylesheet" href="css/proj.css"/>

     <link rel="stylesheet" href="css/main.css"/>
    
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

<!-- jQuery Modal -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

</head>
<body>
    <form id="form1" runat="server">
        
         <div>
                 <header class="site-header">
    <div class="header-bar">
        <div class="container-fluid">
            <div class="row align-items-center">
                <div class="col-10 col-lg-2 order-lg-1">
                    <div class="site-branding">
                        <div class="site-title">
                            <a href="index.aspx"><img src="images/s.svg" alt="logo"></a>
                            <a class="navbar-brand page-scroll" href="#page-top"></a>
                             
                        </div><!-- .site-title -->
                    </div><!-- .site-branding -->
                </div><!-- .col -->

                <div class="col-2 col-lg-9 order-3 order-lg-2">
                    <nav class="site-navigation">
                        <div class="hamburger-menu d-lg-none">
                            <span></span>
                            <span></span>
                            <span></span>
                            <span></span>
                        </div><!-- .hamburger-menu -->

                        <ul>
                            <li><a href="index.aspx">Start</a></li>
                            <li><a href="Kategorier.aspx">Kategorier</a></li>
                            <li><a href="Regler.aspx">Regler</a></li>
                            <li><a href="Anmalan.aspx">Anmälan</a></li>
                            <li><a href="Biljeter.aspx">Biljeter</a></li>
                            <li><a href="Projects.aspx">Nominerade</a></li>
                        </ul>
                    </nav><!-- .site-navigation -->
                </div><!-- .col -->

          
                <div class="col-lg-3 d-none d-lg-block order-2 order-lg-3">
                    <div class="buy-tickets">
                          
                    </div><!-- .buy-tickets -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .header-bar -->

    <div class="page-header events-news-page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <header class="entry-header">
                        <h1 class="entry-title">Nominerande Projekt</h1>
                    </header>
                </div>
            </div>
        </div>
    </div>
</header><!-- .site-header -->

             <div class="container" style="background-color:paleturquoise; margin-top:25px; margin-bottom:25px;">

                              <div>
                 <asp:DropDownList runat="server" ID="DropDowner" AutoPostBack="true" AppendDataBoundItems="true" OnSelectedIndexChanged="DropDowner_SelectedIndexChanged"></asp:DropDownList>
             </div>

                 
                <%   
                    string[] a = { "ProjName", "Category"};
                    {
                        var _ = GET("Projects",a[0],null,null);
                        var _c = GET("Projects",a[1],null,null);
                        string value = Request.QueryString["Filter"];
                        for(int x = 0; x < _.Length; x++)
                        {
                            if (_[x] != null)
                            {
                                bool f = false;
                                if(value == null || value == "none" || _c[x] == null)
                                {
                                    f = true;
                                } else
                                {
                                    if(value == _c[x].ToString())
                                    {
                                        f = true;
                                    }
                                }
                                if (f)
                                {
                                    Response.Write("<center><a class=\"proj\" href=\"SingleView.aspx?ProjName="+_[x]+"\">"+_[x]+"</a><br/></center>");
                                }

                            }

                        }
                    }

                    %>
             </div>
                  





             <!----- Footer--->
             <footer class="site-footer">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <figure class="footer-logo">
                    <a href="index.aspx"><img src="images/fs.svg" alt="logo"/></a>
                </figure>
                <nav class="footer-navigation">
                    <ul class="flex flex-wrap justify-content-center align-items-center">
                   <li><a href="index.aspx">Start</a></li>
                            <li><a href="Kategorier.aspx">Kategorier</a></li>
                            <li><a href="Regler.aspx">Regler</a></li>
                            <li><a href="Anmalan.aspx">Anmälan</a></li>
                            <li><a href="Biljeter.aspx">Biljeter</a></li>
                            <li><a href="Projects.aspx">Nominerade</a></li>
                    </ul>
                </nav>
               <div id="landing-content">
                    <section class="slider"> 
        <img src="images/layer_2.png" alt="image-3">
         </section>
                   <div class="copy">
                       Copyright &copy;<script>document.write(new Date().getFullYear());</script>  rights reserved |<span style="color:rebeccapurple">NTI-HELSINGBORG </span>   
 
                   </div>
                <div class="footer-social-holder">
		   <a href="https://www.facebook.com/ntihelsingborg/" target="_blank">Facebook</a>
		   <a href="https://www.youtube.com/channel/UCf7DmB9NKTJ86MOn4sPON3w/featured" target="_blank">Youtube</a>
				</div>
            </div>
        </div>
    </div>
    </div>
</footer>
<div class="back-to-top flex justify-content-center align-items-center">
    <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
</div>
        </div>
    </form>
    <script type='text/javascript' src='js/jquery.js'></script>
<script type='text/javascript' src='js/masonry.pkgd.min.js'></script>
<script type='text/javascript' src='js/jquery.collapsible.min.js'></script>
<script type='text/javascript' src='js/swiper.min.js'></script>
<script type='text/javascript' src='js/jquery.countdown.min.js'></script>
<script type='text/javascript' src='js/circle-progress.min.js'></script>
<script type='text/javascript' src='js/jquery.countTo.min.js'></script>
<script type='text/javascript' src='js/custom.js'></script>
   
</body>
</html>
