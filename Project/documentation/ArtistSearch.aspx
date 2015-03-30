<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <h1>Artist Search Page</h1>
        <p>
            This functionality lets the users search for an artist by artist name. I use the lastfm API "artist.search" method to get a JSON
                    response, which can be parsed to display the results. I display the artist name, artist image and the number of listeners.
            <br />
            <br />
            <b>I have also implemented paging functionality on this page. The search results are displayed in pages, and can be navigated
                with the help of next and previous buttons.
            </b>
        </p>

        <h2>Snapshots :</h2>
        <p>Search :</p>
        <img src="../../images/search.PNG" />
        <br />
        <p>Results : </p>
        <img src="../../images/artistResult.PNG" />

        <br />
        <h2>Source Files :</h2>
        <p>
            <a href="../../fileview/Default.aspx?~/Project/artistSearch.aspx" target="_blank">ASPX Source</a><br />

        </p>

    </section>
</asp:Content>

