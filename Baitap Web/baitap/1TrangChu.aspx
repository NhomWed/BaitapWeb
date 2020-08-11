<%@ Page Title="" Language="C#" MasterPageFile="~/baitap/MasterPage.master" AutoEventWireup="true" CodeFile="1TrangChu.aspx.cs" Inherits="baitap_1TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <center>
 
    <section class="Product-section" id="Product">

        <div class="row"><br/><br/>
            <h2>Product</h2>
            <br/><br/>
        </div>

        <div class="row">
            <div class="col span-1-of-4 Product-picture">
                <img src="img/picture1.jpg" alt=""/>
                <p>
                    <a class="picture-title" href="1PagePiano.aspx">Piano</a>
                </p>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="img/picture2.jpg" alt=""/>
                <p >
                    <a class="picture-title" href="1Default.aspx">Organ</a>
                    
                </p>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="img/picture3.jpg" alt=""/>
                <p >
                    <a class="picture-title" href="1PageGhita.aspx">Guitar</a>
                </p>
            </div>

            <div class="col span-1-of-4 Product-picture">
                <img src="img/picture4.jpg" alt=""/>
                <p >
                    <a class="picture-title" href="1PageDrum.aspx"> Drum</a>
                   
                </p>
            </div>
        </div>
    </section>

    <section class="MucsicEducation" id="Education">
        <div class="row"><br><br>
            <h2>Mucsic Education
                <img src="../baitap/img/educationMusic.jpg" alt=""/>
            </h2><br/>
        </div>

        <div class="row">
            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.amazon.com/First-Songs-Should-Acoustic-Guitar/dp/1480398128">
                    <img src="img/book1.jpg" alt=""/>
                    First 50 Songs
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.amazon.com/Most-Beautiful-Piano-Solos-Ever/dp/1476814767">
                    <img src="img/book2.jpg" alt=""/>
                    100 Most Beautifull Piano Solos Ever
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://music.apple.com/us/album/the-perfect-fit-the-musical-the-remote-album/1522929307?gclid=Cj0KCQjwg8n5BRCdARIsALxKb97yDxoDgMeietkl1XtoRAYezIzVzDqGz69T4zBouKdqFOVVY8_V4n0aAiGEEALw_wcB">
                    <img src="img/book3.jpg" alt=""/>
                    Firts 50 Broadway Songs
                </a>
            </div>

            <div class="col span-1-of-4 MucsicEducation-picture">
                <a href="https://www.amazon.com/Adult-All-One-Course-Lesson-Theory-Technic/dp/0882848186">
                    <img src="img/book4.jpg" alt=""/>
                    Adult All-In-One Course
                </a>
            </div>
        </div>
    </section>

    <section class="NewsEvents" id="News">

        <div class="row"><br/><br/>
            <h2>News & Events</h2>
        </div><br/><br/>

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>
                <p style="color: red;">4/28/2020</p>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="https://static.billboard.com/files/2020/03/YoungBoy-03-press-by-Jimmy-Fontaine-2020-billboard-1548-1584549680-350x232.jpg?1"
                    alt="">
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="https://www.billboard.com/articles/business/chart-beat/9366975/youngboy-never-broke-again-billboard-200-chart-aiming-second-number-one">YoungBoy Never Broke Again Aiming for Second No. 1 on Billboard 200 Chart</a>
            </div>
        </div>

        <!----------------------------------->

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>
                <p style="color: red;">4/27/2020</p>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="https://static.billboard.com/files/media/Kevin-Parker-Tame-Impala-bb03-fea-2020-ingdagfhnr-billboard-1548-327x216.jpg?1"
                    alt="">
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="https://www.billboard.com/articles/news/9367006/tame-impala-erykah-badu-nts-radio-special-broadcast">Tame Impala, Erykah Badu and More Set for NTS Radio Special Broadcast</a>
            </div>
        </div>
        <!----------------------------------->

        <div class="row">
            <div class="col span-1-of-3 NewsEvents-picture">
                <p style="color: red;">New</p>
                <p style="color: red;">4/26/2020</p>
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <img src="https://static.billboard.com/files/media/amoeba-music-store-front-hollywood-billboard-1548-327x216.jpg?1"
                    alt="">
            </div>

            <div class="col span-1-of-3 NewsEvents-picture">
                <a href="https://www.billboard.com/articles/business/9366973/amoeba-music-hollywood-sunset-boulevard-location-closed-permanently#:~:text=The%20doors%20to%20Amoeba%20Music's,it%20has%20sat%20since%202001.">Amoeba Music Announces Permanent Closure of Famed Sunset Boulevard Location</a>
            </div>
        </div>
        <!----------------------------------->

    </section>
    </center>
</asp:Content>

