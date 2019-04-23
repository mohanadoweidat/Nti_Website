<%@ Page Title="Kategorier" Language="C#" MasterPageFile="~/NoImage.Master" AutoEventWireup="true" CodeBehind="Kategorier.aspx.cs" Inherits="Nti_Website.Kategorier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
  
    <div class="container">
    <div class="row">
        <div class="col-12">
            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Digitala bild</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                      <%--  <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                     <img src="images/dgbild.jpg" alt="Bild"> 

                  <%--  <div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Bidraget ska vara en redigerad bild eller en originalbild som eleven/eleverna själva skapat. Format vid anmälan/inlämning av bidrag ska vara .jpg.

En jury väljer ut de bästa bidragen men publiken på ITG-Awardsgalan röstar på plats fram det vinnande bidraget!</p>
                </div>
            </article>

            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Gymnasiearbete</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                       <%-- <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                     <img src="images/news-gymnasiearbete.png" alt="Gymnasiearbete"> 

                    <%--<div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Juryn bedömer idé, genomförande, utvecklingsbarhet och presentation.

                  Bidraget lämnas in i samråd med handledaren för gymnasiearbetet. Projektbeskrivning skickas in via anmälningsformuläret men 
                  demonstreras också eventuellt för juryn.</p>
                </div>
            </article>

            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Film</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                     <%--   <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                    <img src="images/news-film.jpg" alt="Film"> 

                   <%-- <div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Juryn bedömer originalitet, foto, klippning, dramaturgi och filmens kommunikativa/konstnärliga nivå.

                       Bidraget publiceras på Youtube/Vimeo och länkas i anmälningsformuläret</p>
                </div>
            </article>
        </div>
    </div>


</div>

      <div class="container">
    <div class="row">
        <div class="col-12">
            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Musikkomposition</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                      <%--  <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                     <img src="images/msuik.jpg" alt="Musik"> 

                  <%--  <div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Juryn bedömer kompositionens kommunikativa/konstnärliga nivå, hantverk och form.

                       Bidraget kan vara en egen komposition, instrumental eller med sång. Det kan också vara en väl genomarbetad remix. Bidraget ska publiceras på Soundcloud och länkas i anmälningsformuläret.</p>
                </div>
            </article>

            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Programmeringsprojekt</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                       <%-- <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                     <img src="images/news-programmering.jpg" alt="Programmering"> 

                    <%--<div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Juryn bedömer snabbhet, funktion, komplexitet och gränssnitt.
                      Bidraget kan vara t.ex. ett spel, ett program eller en app. Projektbeskrivning skickas in via anmälningsformuläret. Programmeringskoden lämnas in personligen till programmeringslärare. Eventuellt kan en film som visar programmet vid körning komma att krävas vid inlämning av projektet eller också demonstreras det körbara programmet för juryn.</p>
                </div>
            </article>

            <article class="events-news-post">
                <header class="entry-header">
                    <h2 class="entry-title"><a href="#">Bästa Webbutvecklingsprojekt</a></h2>

                    <div class="entry-meta flex align-items-center">
                        <div class="posted-author"><a href="#">Bedömningsgrunder</a></div>

                     <%--   <div class="post-comments"><a href="#">2 Comments</a></div>--%>
                    </div>
                </header>

                <figure>
                    <img src="images/news-webb.jpg" alt="Webbutveckling">

                   <%-- <div class="posted-date"><span>Feb</span><span>11</span><span>‘18</span></div>--%>
                </figure>

                <div class="entry-content">
                    <p>Juryn bedömer stabilitet, navigering, design och funktion.
Bidraget bör vara en webbsida/hemsida. Webbadressen anges i anmälningsformuläret.
Alternativt skickas bidraget i en komprimerad fil. exempelvis som .zip</p>
                </div>
            </article>
        </div>
    </div>
</div>

    
</asp:Content>
