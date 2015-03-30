<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h1>Artist Details Page</h1>
        <p>
            The details page is displayed when the user selects an artist from search results. I use the lastfm API <b>"artist.getinfo"</b> method to get a JSON
                    response, which can be parsed to display the results. I display the artist name, artist image, bio and similar artists.
        </p>
        <h2>Similar Artists: </h2>
        <p>
            The users can view similar artists based on their artist search on the artist info page. I use the lastfm API <b>"artist.getsimilar"</b> method to get a JSON
                    response, which can be parsed to display the results. 
        I display the results in a slider. The images of the artists and name of artists are shown in the slider.
        Users can click on the images to navigate to the details page for that artist.
        </p>

        <h2>Snapshot :</h2>
        <img src="../../images/artistDetail.PNG" />

        <br />
        <h2>Source Files :</h2>
        <p>
            <a href="../../fileview/Default.aspx?~/Project/artistInfo.aspx" target="_blank">ASPX Source</a><br />
          
            <a href="../../fileview/Default.aspx?~/css/jquery.horizontal.scroll.css" target="_blank">CSS File for slider</a><br />
        </p>

    </section>
</asp:Content>

