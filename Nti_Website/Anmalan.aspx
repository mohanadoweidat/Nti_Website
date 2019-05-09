<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Anmalan.aspx.cs" Inherits="Nti_Website.Anmalan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Anmälan</title>

     <style type="text/css">


        .color-overlay {
            background: #9400D3;
            opacity: .5;
            position: absolute;
            width: 100%;
            height: 100%;
        }

         
          
     
#landing-content
    {
overflow: hidden;
background-image: url(https://www.ntigymnasiet.se/wp-content/themes/nti/img/layer_3.png);
width: 100%;
background-size:   cover;
background-repeat: no-repeat;
max-height: 1000px;
border-bottom:  groove;
border-bottom-color: white;
border-bottom-width: 5px;
}

.slider {
margin-left: auto;
margin-right: auto;
overflow: hidden;
padding-top: 200px;
max-width: 1002px;
}

.slider img {
width: 80%;
padding-left: 10%;
padding-right: 10%;
height: auto;
margin-left: auto;
margin-right: auto;
}

.copy{


    color:white !important;
}

.footer-social-holder{

    font-size:xx-large;
    background-color:white;
    opacity:.5;
     
}

.bg{

    background-color:ghostwhite;
     
}

input:hover{
    background-color:mediumpurple;
}



.desgin{


  padding: 5px 5px;
    border: 2px solid #9a24c1;
    border-radius: 50px;
    font-size: 18px;
    font-weight: bold;
    line-height: 1;
    color: #232127;
   

}








.Logbtn.gradient-bg {
    padding: 6px 6px;
     border-radius: 20px;
     border: 2px solid #9a24c1;
    background: -moz-linear-gradient(180deg, rgba(171,0,229,1) 0%, rgba(88,20,121,1) 100%); /* ff3.6+ */
    background: -webkit-gradient(linear, left top, right top, color-stop(0%, rgba(88,20,121,1)), color-stop(100%, rgba(171,0,229,1))); /* safari4+,chrome */
    background: -webkit-linear-gradient(180deg, rgba(171,0,229,1) 0%, rgba(88,20,121,1) 100%); /* safari5.1+,chrome10+ */
    background: -o-linear-gradient(180deg, rgba(171,0,229,1) 0%, rgba(88,20,121,1) 100%); /* opera 11.10+ */
    background: -ms-linear-gradient(180deg, rgba(171,0,229,1) 0%, rgba(88,20,121,1) 100%); /* ie10+ */
    background: linear-gradient(270deg, rgba(171,0,229,1) 0%, rgba(88,20,121,1) 100%); /* w3c */
    filter: progid:DXImageTransform.Microsoft.gradient( startColorstr='#581479', endColorstr='#ab00e5',GradientType=1 ); /* ie6-9 */
    color: #fff;
}

 
    </style>
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


     <link rel="stylesheet" href="css/main.css"/>


    
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>

 
    <style>

        .sss{

            background-color:white !important
        }
    </style>
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
                        <h1 class="entry-title">Anmälan</h1>
                    </header>
                </div>
            </div>
        </div>
    </div>
</header><!-- .site-header -->





             <section id="contact" class="bg-light-gray">
            <div class="container">
                 

                <div class="col-lg-12 text-center" id="adress">
                    <h4 class="service-heading">Fyll i formul&auml;ret nedan eller anm&auml;l och l&auml;mna ditt bidrag <br>
till en lärare via USB-sticka</h4>
                    </div>

                <div class="row">
                    <div class="col-lg-12">
                      <p align="center">
                      <form id="contact-form" method="post"  role="form">

					      <div class="messages"></div>

					      <div class="controls">
					          <div class="row">
                                    
                                   <div class="col-md-7">
					                  <div class="form-group">
					                      
                                              <%--<label for="form_phone">Antal deltagare</label>
 					                          <input id="form_phone" type="tel" name="phone" class="form-control" placeholder="Välj antal deltagare">--%>
                                          
        <input list="Deltagare" class="btn gradient-bg" name="inp" value="Välj: Antal Deltagare" onfocus="this.value = '';"   onblur="if (this.value == '') {this.value = 'Välj: Antal Deltagare';}" type="text" runat="server"  id="deltag"/>
    <datalist id="Deltagare">
    <option value="1"/>
    <option value="2"/>
     <option value="3"/>
    <option value="4"/>
    <option value="100"/>
  

    </datalist>



                                            <input list="Kategori" class="btn gradient-bg"  name="katg" value="Välj: Kategori*" onfocus="this.value = '';"   onblur="if (this.value == '') {this.value = 'Välj: Kategori*';}" type="text" runat="server" id="__Kateg" required="required" data-error="Obligatoriskt fält."/>
    <datalist id="Kategori" runat="server">
    <option value="Bästa Digitala bild"/>
    <option value="Bästa Gymnasiearbete"/>
    <option value="Bästa Film"/>
    <option value="Bästa Musikkomposition"/>
    <option value="Bästa Programmeringsprojekt"/>
        <option value="Bästa Webbutvecklingsprojekt"/>
    </datalist>

 				      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
                                  <div class="row" id="all">
<%--    					              <div class="col-md-6" id="fname1">
					                  <div class="form-group">
					                      <label for="form_name" runat="server" id="fr1">Förnamn *</label>
					                      <input runat="server" id="form_name" type="text" name="name"  class="form-control btn" placeholder="Vänligen skriv ditt förnamn *" required="required" data-error="Obligatoriskt fält."/>
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
 					              <div class="col-md-6" id="lname1">
					                  <div class="form-group">
					                      <label for="form_lastname" runat="server"  id="ls1">Efternamn *</label>
					                      <input runat="server" id="form_lastname" type="text" name="surname" class="form-control btn" placeholder="Vänligen skriv ditt efternamn *" required="required" data-error="Obligatoriskt fält."/>
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
                                    <div class="col-md-6" id="fname2">
					                  <div class="form-group">
					                      <label for="form_name" runat="server" id="fr2">Förnamn *</label>
					                      <input runat="server"  id="fnm2" type="text" name="name" class="form-control btn" placeholder="Vänligen skriv ditt förnamn *" required="required" data-error="Obligatoriskt fält.">
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
 					              <div class="col-md-6" id="lname2">
					                  <div class="form-group">
					                      <label for="form_lastname" runat="server" id="ls2">Efternamn *</label>
					                      <input runat="server" id="lstnmn2" type="text" name="surname" class="form-control btn" placeholder="Vänligen skriv ditt efternamn *" required="required" data-error="Obligatoriskt fält.">
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
                                     <div class="col-md-6" id="fname3">
					                  <div class="form-group">
					                      <label for="form_name" runat="server" id="fr3">Förnamn *</label>
					                      <input runat="server"  id="fnm3" type="text" name="name" class="form-control btn" placeholder="Vänligen skriv ditt förnamn *" required="required" data-error="Obligatoriskt fält.">
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
 					              <div class="col-md-6" id="lname3">
					                  <div class="form-group">
					                      <label for="form_lastname" runat="server" id="ls3">Efternamn *</label>
					                      <input runat="server" id="lstnm3" type="text" name="surname" class="form-control btn" placeholder="Vänligen skriv ditt efternamn *" required="required" data-error="Obligatoriskt fält.">
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>--%>
                                     </div>
                                  </div>
					          <div class="row">
 					          </div>
					          <div class="row">
                                       <div class="col-md-12">
					                  <div class="form-group">
					                      <label for="form_email">E-post *</label>
					                      <input runat="server" id="form_email" type="email" name="email" class="form-control btn gradient-bg" placeholder="Vänligen skriv din e-postadress här *" required="required" data-error="Giltig e-postadress krävs.">
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>

					              <div class="col-md-12">
					                  <div class="form-group">
					                      <label for="form_message">Meddelande *</label>
					                      <textarea runat="server" id="form_message" name="message" class="form-control" placeholder="Skriv här kategori du vill tävla i, URL/Webbadress där ditt bidrag finns, etc. *" rows="4" required="required" data-error="Obligatoriskt fält."></textarea>
					                      <div class="help-block with-errors"></div>
					                  </div>
					              </div>
					              <div class="col-md-12">
                                      <input type="button" id="confirm" runat="server" value="Skicka"  class="btn gradient-bg" onclick="ConfirmClicked()"/>
					              </div>
					          </div>
                                                               <asp:HiddenField ID="hdnfldVariable" runat="server" />
                              <div style="display: none">
                                  <asp:Button ID="r5a" runat="server" OnClick="r5a_Click"/>

                              </div>
					          <div class="row">
					              <div class="col-md-12">
					                  <p class="text-muted"><strong>*</strong> Obligatoriskt fält.</p>
					              </div>
					          </div>
					      </div>
						</form>
                      </p>
<!---------------------------------------------------------------------------------------------------------------->
                    </div>
                </div>
            </div>
        </section>


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


    
    <script>

        $(function () {

        });

        function ref() {
            var _html = "";
            var r = parseInt($('#deltag').val());
            for (x = 0; x < r; x++) {
                _html +="<div class=\"form-group col-md-6\"><label for=\"form_name\">Förnamn *</label><input id=\"fn" + x + "\" type=\"text\" name=\"name\" class=\"form-control btn\" placeholder=\"Vänligen skriv ditt förnamn *\" required=\"required\" data-error=\"Obligatoriskt fält.\"/><div class=\"help-block with-errors\"></div></div>";
                _html +="<div class=\"form-group col-md-6\"><label for=\"form_lastname\">Efternamn *</label><input id=\"ln" + x + "\" type =\"text\" name=\"surname\" class=\"form-control btn\" placeholder=\"Vänligen skriv ditt efternamn *\" required=\"required\" data-error=\"Obligatoriskt fält.\"/><div class=\"help-block with-errors\"></div></div >";
            }
            $('#all').html(_html);
        }

        function ConfirmClicked() {
            var r = parseInt($('#deltag').val());
            var valva = "";
            for (x = 0; x < r; x++) {
                if (x > 0) {
                    valva += "$";
                }
                valva += $('#fn' + x).val()+","+$('#ln'+x).val();
            }
            try {
                var hdnfldVariable = document.getElementById('hdnfldVariable');
                hdnfldVariable.value = valva;
                $("#<%=r5a.ClientID%>").click();

            } catch (e) {
                alert(e);
            }
            
        }

        $(function () {
            $('#deltag').change(function () {
                ref();
              });
         });
      </script>
</body>
</html>
