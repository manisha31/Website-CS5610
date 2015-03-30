<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h1>Project Home Page</h1>
        <p>
            The website home page shows the top albums to the users. The top albums are fetched from iTunes Store by parsing the RSS feed response. 
            It displays the top 10 albums in a flip image gallery. The cover page of album is shown on the top with the name of album displayed
             at the back of flip. The images as flipped as soon as a hover is done on them.
            <br />
            <br />
            The flip gallery is created using JavaScript, JQuery and CSS. The top album names and artist names are fetched from the
            iTunes RSS response by parsing the rss XML response. 
        </p>
        <h2>Probelm Faced: </h2>
        <p>
            The iTunes RSS response did not give me the cover picture for the albums.
            <br />
            <br />
            Solution:<br />
            Hence I parsed the RSS feed to get the
            artist name and the album name. Then using the artist name and album name, I called the method album.getInfo of lastfm API
             by making an ajax call. Then I retrive the cover image of album from lastfm API, and display it in the flip gallery.
            I create a funtion to render the result in a desired form. The function is formatdata().

        </p>
        <h2>iTunes RSS</h2>
        <p>
            <a href="https://rss.itunes.apple.com/us/?urlDesc=" target="_blank">iTunes RSS Generator</a>
            <br />
            <a href="https://itunes.apple.com/us/rss/topalbums/limit=10/xml" target="_blank">RSS Feed for Top Albums</a>

        </p>
        <h2>Snapshot :</h2>

        <img src="../../images/home.PNG" />

        <br />
        <h2>Source Files :</h2>
        <p>
            <a href="../../fileview/Default.aspx?~/Project/musicHome.aspx" target="_blank">ASPX Source</a><br />
            <br />
            <a href="../../fileview/Default.aspx?~/css/musicCSS.css" target="_blank">MyBeats CSS File</a><br />
             <br />
            <a href="../../fileview/Default.aspx?~/css/flipStyle.css" target="_blank">Flip Gallery CSS File</a><br />
        </p>

    </section>
</asp:Content>

