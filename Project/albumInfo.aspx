<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title></title>
    <link href="../css/musicCSS.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.0.min.js"></script>
     <script>
         var trackname = '';
         var trackmbid = '';
         var trackduration = '';
         var trackartist = '';
         var trackartistmbid = '';

         var suppliername = '';
         var price = '';
         var suppliericon = '';
         var link = '';

         $(document).ready(function () {


             function GetParameterValues(param) {
                 var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                 for (var i = 0; i < url.length; i++) {
                     var urlparam = url[i].split('=');
                     if (urlparam[0] == param) {
                         return urlparam[1];
                     }
                 }
             }

             var album = GetParameterValues('album');
             var artist = GetParameterValues('artist');
                 

             function getbuylinks() {

                 $.ajax({
                     type: 'POST',
                     url: 'http://ws.audioscrobbler.com/2.0/',
                     data: 'method=album.getbuylinks&' +
                            'album=' + album + '&' +
                            'artist=' + artist + '&' +
                            'country=united%20states&' +
                            'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                            'format=json',

                     dataType: 'json',

                     success: function (data) {

                         console.log(data);
                        
                         $('#buylink').empty();
                         formatteddata = '';
                         for (var i in data.affiliations.downloads.affiliation) {

                             
                             suppliericon = data.affiliations.downloads.affiliation[i].supplierIcon;
                             suppliername = data.affiliations.downloads.affiliation[i].supplierName;
                             price = data.affiliations.downloads.affiliation[i].price;
                             if (price == null) {
                                 price = "Not available";
                             } else {
                                 price = data.affiliations.downloads.affiliation[i].price.formatted;
                             }
                             link = data.affiliations.downloads.affiliation[i].buyLink;
                             
                            
                             formatlinkdata();

                             $('#buylink').append(formatteddata);
                             formatteddata = '';

                         }

                     }

                 });
             }



             $.ajax({
                 type: 'POST',
                 url: 'http://ws.audioscrobbler.com/2.0/',
                 data: 'method=album.getinfo&' +
                        'album=' + album + '&' +
                            'artist=' + artist + '&' +
                        'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                        'format=json',

                 dataType: 'json',

                 success: function (data) {
                     console.log(data);

                     $('#albumInfo #albumName').html('<h1>Album Name: '+ data.album.name + '</h1>');
                     $('#albumInfo #albumIMG').html('<img id="img1" src="' + data.album.image[4]['#text'] + '"/>');
                     $('#albumInfo #albumDetails').html('<p>Artist Name: '+ data.album.artist + '<br>' + 'Release Date: '+
                     data.album.releasedate + '<br>' + 'Number of listeners: ' +
                     data.album.listeners + '<br>' + 'Playcount: ' + data.album.playcount + '</p><h1> Buy the Album here: </h1>');
                     
                     $('#tracks').empty();
                     formatteddata = '';
                     for (var i in data.album.tracks.track) {

                         trackname = data.album.tracks.track[i].name;
                         var sec = data.album.tracks.track[i].duration % 60;
                         var min = (data.album.tracks.track[i].duration - sec) / 60;
                         trackduration = min + ":" + sec + "mins";
                         trackmbid = data.album.tracks.track[i].mbid;
                         trackartistmbid = data.album.tracks.track[i].artist.mbid;
                         trackartist = data.album.tracks.track[i].artist.name;

                         formattrackdata();

                         $('#tracks').append(formatteddata);
                         formatteddata = '';

                     }
                     getbuylinks();

                 }


             });


         });

         function formatlinkdata() {
             
             formatteddata += '<div class="innerright">';

             formatteddata += '<br><b>' + '<a href = "' + link + '" target = "_blank"> <img src="../images/buy.jpg"/ id = "imgbuy"/></a></b></div>';


             formatteddata += '<div class="singlelink">';

             formatteddata += '<b><img src="' + suppliericon + '" id ="imgsupp"/></b>';
            
             formatteddata += '<br><b>' + "Supplier Name :" + suppliername + '</b>';
             
             formatteddata += '<br><b>' + "Price : " + price + '</b></div>';
             
             
            

             formatteddata += '</div>';



         }
         function formattrackdata() {
             
             formatteddata += '<div class="singletrack">';

             formatteddata += '<b>' + "Track Name : " + trackname + '</b><br>';
             formatteddata += '<b>' + "Track Duration : " + trackduration + '</b>';
            
           
             formatteddata += '<br><b>' + "Track Artist : " + '<a id="a1" href = "artistInfo.aspx?aName=' + trackartist + '">' +trackartist + '</a></b>';

             formatteddata += '</div>';



         }


    </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
       
<div id="albumInfo">
    <div id="albumName"></div>
    <div id="albumIMG"></div>
    
    <div id="albumDetails">

    </div>
            
</div>
        <div id ="buylink"></div>
        <h1>Tracks:</h1>
        <div id ="tracks"></div>
        
    
    
    </section>
    

</asp:Content>

