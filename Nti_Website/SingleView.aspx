<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SingleView.aspx.cs" Inherits="Nti_Website.SingleView" %>
<!DOCTYPE html>
<html lang="en">
 <head runat="server">


    <title>Projekt</title>


    <style>

        .mySlides {display:none;}
        .ss{
            width:100%;
        }


        video {
         width: 100%;
         height: auto;
        }

        .TextItem {
            font-size: 24px;
            color: black;
        }

    </style>


    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

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

</head>
<body class="single-event-page">
 <form id="form1" runat="server">
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

                <div class="col-2 col-lg-7 order-3 order-lg-2">
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
                        <% Response.Write("<h1 class=\"entry-title\">" + Request.QueryString["ProjName"].ToString() +"</h1>"); %>
                    </header>
                </div>
            </div>
        </div>
    </div>
</header><!-- .site-header -->
     
 

<div class="container">
 

    <div class="row" style="margin:10px 10px 30px 10px">
        <div class="col-12">
            <div class="tabs">
                <ul class="tabs-nav flex">
                    <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_details">Info</li>
                    <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_venue">Beskrivning</li>
                    <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_organizers">skapad av</li>
                     <li class="tab-nav flex justify-content-center align-items-center" data-target="#tab_bilagor">Bilagor</li>
                </ul>

                <div class="tabs-container">
                    <div id="tab_details" class="tab-content">
                        <div class="flex flex-wrap justify-content-between">
                            <div class="single-event-details">
                                <div class="single-event-details-row">
                                    <label>ProjektNamn:</label>
                                    <% Response.Write("<p class=\"entry-title\">" + Request.QueryString["ProjName"].ToString() +"</p>"); %>
                                </div>

                                 <div class="single-event-details-row">
                                    <label>Kategori:</label>
                                    
                                        <%   
                                            string[] a = { "ProjName"};
                                            string [] b = {"Category"};
                                            var c = Request.QueryString["ProjName"];

                                            for (int i = 0; i < a.Length; i++)
                                            {
                                                var _ = GET("Projects",b[0],a, new string[] {c.ToString()});
                                                foreach(string s in _)
                                                {
                                                    if (s != null)
                                                    {
                                                        Response.Write("<p>"+s+"</p>");
                                                    }

                                                }
                                            } %>
                           
                                             
                                        
 
                                </div>

                                  <div class="single-event-details-row">
                                    <label>År:</label>
                                      <%   
                                           
                                          string [] _b = {"Year"};
                                          

                                          for (int i = 0; i < a.Length; i++)
                                          {
                                              var _ = GET("Projects",_b[0],a, new string[] {c.ToString()});
                                               
                                               foreach( string s in _)
                                              {
                                                  if (s != null)
                                                  {
                                                      Response.Write("<p>"+s+"</p>");
                                                  }

                                              }
                                          } %>
                                </div>

                                <div>

                                </div>

                             </div>
                             <div class="single-event-map">
                                 <div class="w3-content w3-section" id="_Slides"  style="max-width:600px">
                                                            <%
                                                                string[] A = { "Data"};
                                                                string[] rol = { "ProjName"};
                                                                string[] val = { c};
                                                                bool found = false;
                                                                for (int i = 0; i < A.Length; i++)
                                                                {
                                                                    var _ = GET("Files","Data",rol,val);
                                                                    var _c = GET("Files","ContentType",rol,val);
                                                                    for (int w = 0; w < _.Length; w++)
                                                                    {
                                                                        string dataType = _c[w].ToString();
                                                                        if(get_type(dataType) == Nti_Website.FileType.IMAGE) {
                                                                            found = true;
                                                                            string data = Convert.ToBase64String(_[w] as byte[]);
                                                                            Response.Write("<img class=\"mySlides\" style=\"width:100%\" src=\"data:image/;base64,"+data+"\"/>");
                                                                        }
                                                                    }
                                                                }
                                                                if (!found)
                                                                {
                                                                    Response.Write("<img class=\"mySlides\" style=\"width:100%; border-radius: 10px;\" src=\"images/no-image.png\"/>");
                                                                }
                            %>
                                     </div>
                            </div>
                        </div>
                    </div>
                    <div id="tab_venue" class="tab-content">
                        <%   

                            string [] __b = {"Description"};

                            for (int i = 0; i < a.Length; i++)
                            {
                                var _ = GET("Projects",__b[0],a, new string[] {c.ToString()});

                                foreach( string s in _)
                                {
                                    if (s != null)
                                    {
                                        Response.Write("<p class=\"TextItem\">"+s+"</p>");
                                    }

                                }
                            } %>




                    </div>

                    <div id="tab_organizers" class="tab-content">
                         

                         <%
                            string [] ___b = {"Creators"};
 
                                          for (int i = 0; i < a.Length; i++)
                                          {
                                              var _ = GET("Projects",___b[0],a, new string[] {c.ToString()});
                                               
                                               foreach( string s in _)
                                              {
                                                  if (s != null)
                                                  {
                                                      Response.Write("<p class=\"TextItem\">"+s+"</p>");
                                                  }

                                              }
                                          } %>


                           
                  
                    </div>
                      <div id="tab_bilagor" class="tab-content">
                         <asp:Button ID="Button1" runat="server" Visible="false" CssClass="btn gradient-bg" Text="Öppna pdf filen" OnClick="Button1_Click" OnClientClick="openInNewTab();"/>
                          <asp:Label ID="bilaglbl" runat="server" Visible="false" CssClass="TextItem"></asp:Label>

                                                               <%   

                                                                   for (int i = 0; i < A.Length; i++)
                                                                   {
                                                                       var _ = GET("Files","Data",rol,val);
                                                                       var _c = GET("Files","ContentType",rol,val);

                                                                       for (int w = 0; w < _.Length; w++)
                                                                       {
                                                                           
                                                                           string type = _c[w].ToString();
                                                                           string d = type.Split('/')[0];
                                                                           string data = Convert.ToBase64String(_[w] as byte[]);
                                                                           if (d == "video")
                                                                           {
                                                                                //<video width="130" height="130" controls>  
                                                                                //  <source src='<%#Eval("Video_Path")%' type="video/mp4">  
                                                                                //</video>  
                                                                               Response.Write("<video width:\"400%\" controls><source src=\"data:video/;base64,"+data+"\" type=\"video/mp4\"></video>");
                                                                           }
                                                                           

                                                                       }

                                                                   }




                                                               %>

                 </div>
                </div>
            </div>
        </div>
    </div>

      
</div>

 

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
                  </div>
            </div>
        </div>
    </div>
</footer>

<div class="back-to-top flex justify-content-center align-items-center">
    <span><svg viewBox="0 0 1792 1792" xmlns="http://www.w3.org/2000/svg"><path d="M1395 1184q0 13-10 23l-50 50q-10 10-23 10t-23-10l-393-393-393 393q-10 10-23 10t-23-10l-50-50q-10-10-10-23t10-23l466-466q10-10 23-10t23 10l466 466q10 10 10 23z"/></svg></span>
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

 

    <script>
        var myIndex = 0;
        carousel();

        function carousel() {
            var i;
            var x = document.getElementsByClassName("mySlides");
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            myIndex++;
            if (myIndex > x.length) { myIndex = 1 }
            x[myIndex - 1].style.display = "block";
            setTimeout(carousel, 2000); // Change image every 2 seconds
        }



        var slideIndex = 1;
        showDivs(slideIndex);

        function plusDivs(n) {
            showDivs(slideIndex += n);
        }

        function showDivs(n) {
            var i;
            var x = document.getElementsByClassName("mySlides");
            if (n > x.length) { slideIndex = 1 }
            if (n < 1) { slideIndex = x.length }
            for (i = 0; i < x.length; i++) {
                x[i].style.display = "none";
            }
            x[slideIndex - 1].style.display = "block";
        }



</script>


    <script type="text/javascript">
        function openInNewTab() {
            window.document.forms[0].target = '_blank';
            setTimeout(function () { window.document.forms[0].target = ''; }, 0);
        }
</script>


 


</body>
</html>
 