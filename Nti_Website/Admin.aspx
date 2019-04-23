<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Nti_Website.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin</title>
     <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/ad5ra.css"/>
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">

    <!-- Styles -->
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/dropzone.css" />
     <link rel="stylesheet" href="css/main.css"/>
    <!-- Pop-up-->
    <link rel="stylesheet" href="../sweetalert2.css" />
    <script src="../sweetalert2.all.min.js"></script>
</head>
<body class="elements-page">
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
                      <asp:Panel runat="server" ID="pnl2" Visible="false">
                         <asp:Label ID="wlc" runat="server" CssClass="btn gradient-bg"></asp:Label>
                    </asp:Panel>
                    </div><!-- .buy-tickets -->
                </div><!-- .col -->
            </div><!-- .row -->
        </div><!-- .container-fluid -->
    </div><!-- .header-bar -->

    <div class="page-header elements-page-header">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <header class="entry-header">
                        <h1 class="entry-title">Lägga Upp Projekt</h1>
                    </header>
                </div>
            </div>
        </div>
    </div>
</header><!-- .site-header -->


            <!-----Main-Code Here-->
             <div class="container">
  <center>
          <div class="upload">
			 
		<div class="login-form">
 				<div>
					<span>Projekt Namn</span>
						<input type="text" class="title" value="Eg: Beach Fun" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: Beach Fun';}" runat="server" name="projname" id="projname"  onkeyup="myFunction()"/>
				</div>
				<div   id="h1">
					<span>Beskrivning</span>
 						<input type="text" class="describe" value="Eg: The one in the Bahamas" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: The one in the Bahamas';}" runat="server" name="projdesc" id="projdesc"   />
				</div>
            <div  id="h2">
					<span>Ägare</span>
 						<input type="text" class="describe" value="Eg: Alex & Sandra" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: Alex & Sandra';}" runat="server" name="skapadav" id="skapadav"  />
				</div>
             <br />
             <div id="h3">
					<span>År</span>
 						<input  type="month" name="years" class="describe" value="Eg: Alex & Sandra" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: Alex & Sandra';}" runat="server" id="year"   />
				</div>
             <br />
            <div id="h4">
                <span>Kategorier</span>
   <input list="Kategorier" name="cat" value="Eg: Välj en kategori" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Eg: Välj en kategori';}" type="text" runat="server" id="categ"/>
   <datalist id="Kategorier">
    <option value="Bästa Digitala bild"/>
    <option value="Bästa Gymnasiearbete"/>
    <option value="Bästa Film"/>
    <option value="Bästa Musikkomposition"/>
    <option value="Bästa Programmeringsprojekt"/>
    <option value="Bästa Webbutvecklingsprojekt"/>
    </datalist>
             </div>
  			<form id="upload"  action="#" enctype="multipart/form-data">
 				<div id="drop">
                   
               <asp:FileUpload ID="file2" runat="server" AllowMultiple="true" 
                   ClientIDMode="Static" onchange="updateList()"></asp:FileUpload>
                  <%--  <input type="file" name="file1" id="file1" runat="server" class="egen" multiple  onchange="javascript:updateList()"/>--%>
                  <label for="file2" id="lbl" class="egen">Välj en fil</label>
                     <br />
                     Selected files:
                     <div id="fileList"></div>
 			</div>
 				<ul>
        <div id="_btn">
            <input   type="submit" name="Lägga upp" value="Lägga upp" runat="server" id="btnuploader" class="test"/>
            
        </div>
      
                    <br /> 
      <asp:Label ID="lblMessage" runat="server" CssClass="test"></asp:Label>
      <asp:Label ID="errorlabel" runat="server" CssClass="test"></asp:Label>
				<!-- The file uploads will be shown here -->
				</ul>
 			</form>





              

 

</div>

 		</div>
             </div>
            </center>
            </div>
  <footer class="site-footer">
     <div class="container">
         <div class="row">
            <div class="col-12">
                 <figure class="footer-logo">
                    <a href="index.aspx"><img src="images/fs.svg" alt="logo"></a>
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
<script type="text/javascript" src="js/dropzone.js"></script>
<script type="text/javascript" src="js/dropzone-amd-module.js"></script>



    <script>

////if input has some value will show the button
//  window.myFunction = function() {
   
//  var hasValue = document.getElementById('projname').value;
//  if (!!hasValue) {
//    document.getElementById('h1').style.display = 'inline';
//  } else {
//    document.getElementById('h1').style.display = 'none';
//  };
// };


//  window.myFunction1 = function() {
    
//  var hasValue = document.getElementById('projdesc').value;
//  if (!!hasValue) {
//    document.getElementById('h2').style.display = 'inline';
//  } else {
//    document.getElementById('h2').style.display = 'none';
//  };
//        };



//         window.myFunction2 = function() {
   
//  var hasValue = document.getElementById('skapadav').value;
//  if (!!hasValue) {
//    document.getElementById('h3').style.display = 'inline';
//  } else {
//    document.getElementById('h3').style.display = 'none';
//  };
//        };

//   window.myFunction3 = function() {
 
//  var hasValue = document.getElementById('year').value;
//  if (!!hasValue) {
//    document.getElementById('h4').style.display = 'inline';
//  } else {
//    document.getElementById('h4').style.display = 'none';
//  };
//        };

//           window.myFunction4 = function() {
 
//  var hasValue = document.getElementById('categ').value;
//  if (!!hasValue) {
//      document.getElementById('drop').style.display = 'inline';
//      document.getElementById('btnuploader').style.display = 'inline';

//  } else {
//      document.getElementById('drop').style.display = 'none';
      
//  };
// };


  
       function updateList() {
            var input = document.getElementById('<%=file2.ClientID%>');
            var output = document.getElementById('fileList');
  output.innerHTML = '<ul>';
  for (var i = 0; i < input.files.length; ++i) {
    output.innerHTML += '<li>' + input.files.item(i).name + '</li>';
  }
  output.innerHTML += '</ul>';
}
         
            function success() {
                swal("Info!", "Projektet har lagts upp!" + "</br>", "success");
            }



            function Projektnamnexist() {
                Swal.fire({
                    type: 'error',
                    title: 'Fel',
                    text: 'Projektnamnet finns redan!'

                })
            }


        </script>

 </body>
</html>
