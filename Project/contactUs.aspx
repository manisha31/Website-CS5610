<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Contact Us</title>
    <link href="../css/musicCSS.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.0.min.js"></script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>

        <div id="contact">
            <h1>Welcome to MyBeats!!</h1>
            <br />
            <br />

            <p>
                <i>“Music gives a soul to the universe, wings to the mind, flight to the imagination
and life to everything.” - Plato</i>
            </p>
            <p>
                MyBeats is a place for music lovers to explore and know more about their favourite
            artists and albums. Buy the albums you want to possess and indulge into your love for music.
            <br />
                <br />
                Let's talk: sharma.mani@husky.neu.edu
            <br />
                <br />
                Address:<br />
                48 Lake Ave.<br />
                Harvard Unit-5<br />
                Woburn, MA-01801

            </p>
        </div>
        <div id="map_canvas">


            <iframe width="400" height="400"
                src="https://maps.google.com/maps?f=q
&amp;source=s_q
&amp;hl=en
&amp;geocode=
&amp;q=48+Lake+Ave+,Woburn,+ma
&amp;aq=

&amp;t=m
&amp;ie=UTF8
&amp;hq=
&amp;hnear=48+Lake+Ave,+Woburn,+Massachusetts+01801

&amp;z=13
&amp;iwloc=A
&amp;output=embed"></iframe>

        </div>

    </section>

</asp:Content>

