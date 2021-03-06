﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h1>Project Overview</h1>
        <h2>Abstract</h2>
        <p> Hi!! The name of my project is MyBeats. MyBeats is a website which can be used by the music lovers to
            explore and search various music albums and artists. It also provides a list of similar artists based on user search.
            Based on the search, a list of results is displayed. Users can then select the artist or album result, they want to
            know more about. A details page for artist or albums is then displayed. This website also provides album shopping facility by 
            giving "buy links" to the albums which take users to suppliers and they can now possess the albums on their wishlist.
            <br /><br />
            This website also enables people with passion for attending music-events, to search for events of their favourite artist.
            A list of events is displayed with details on venue, date, timings and the event website.
        </p>
        <h2>Functionalities: </h2>
        <ul>
            <li><h3>Artist Search :</h3>
                <p>This functionality lets the users search for an artist by artist name. I use the lastfm API to get a JSON
                    response, which can be parsed to display the results. I display the artist name, artist image and the number of listeners.

                </p>
            </li>
            <li><h3>Artist Details :</h3>
                <p>The details page is displayed when the user selects an artist from search results. I use the lastfm API to get a JSON
                    response, which can be parsed to display the results. I display the artist name, artist image, bio and similar artists.</p>
            </li>
            <li><h3>Album Search :</h3>
                <p>This functionality lets the users search for an album by album name. I use the lastfm API to get a JSON
                    response, which can be parsed to display the results. I display the album name, artist name and the album cover picture.</p>
            </li>
            <li><h3>Album Details :</h3>
                <p>The details page is displayed when the user selects an album from search results. I use the lastfm API to get a JSON
                    response, which can be parsed to display the results. I display the album name, cover picture, artist name, release date, 
                    number of listeners, playcount, all the tracks in the album and the buy links for the album.</p>
            </li>
            <li><h3>Similar Artists :</h3>
                <p> The users can view similar artists based on their artist search on the artist info page.</p>
            </li>
            <li><h3>Top Albums :</h3>
                <p> The top albums are fetched from iTunes Store by parsing the RSS feed response. It displays the top 10 albums in a flip
                    image gallery. The cover page of album is shown on the top with the name of album displayed at the back of flip. 
                </p>
            </li>
            <li><h3>Events :</h3>
                <p> This functionality shows the event details for an artist name entered by the user. A list of events is displayed as result
                    This list is generated by artist.getevents method from last fm API.
                </p>
            </li>
        </ul>
        <h3>Note:</h3>
        <p> The website looks the best in Google Chrome browser and iPhone. Because, I could extensively test my CSS for 
            iPhone to check the responsiveness of the website.
        </p>
    </section>
</asp:Content>

