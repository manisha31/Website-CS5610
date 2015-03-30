<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title></title>
    <link href="../css/musicCSS.css" rel="stylesheet" />
     <script src="../javascript/jquery-1.11.0.min.js"></script>
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.1/jquery.min.js"></script>
    <script src="../javascript/jquery.horizontal.scroll.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="../css/jquery.horizontal.scroll.css" />
 
    
   <script>

        var imageArray = [];
        $(document).ready(function () {

            function GetParameterValues(param) {
                var url = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
                for (var i = 0; i < url.length; i++) {
                    var urlparam = url[i].split('=');
                    if (urlparam[0] == param) {
                        return urlparam[1];
                    }
                }
                $('#horiz_container_outer').horizontalScroll();
            }

            var query = GetParameterValues('aName');

            $.ajax({
                type: 'POST',
                url: 'http://ws.audioscrobbler.com/2.0/',
                data: 'method=artist.getinfo&' +
                       'artist=' + query + '&' +
                       'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                       'format=json',

                dataType: 'json',

                success: function (data) {
                    $('#success #artistName').html('<h1> Artist Name: '+ data.artist.name+ '</h1>');
                    $('#success #artistImage').html('<img id= "img1" src="' + data.artist.image[4]['#text'] + '" />');
                    
                    $('#success #artistBio').html('<p>'+ data.artist.bio.content+ '</p>');
                }

            });

            $.ajax({
                type: 'POST',
                url: 'http://ws.audioscrobbler.com/2.0/',
                data: 'method=artist.getsimilar&' +
                       'artist=' + query + '&' +
                       'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                       'format=json&' +
                       'limit=10',

                dataType: 'json',

                success: function (data) {
                    
                    for (var i in data.similarartists.artist) {
                       
                        var innerDiv = $("<div>");
                        var li = $("<li>");
                        
                        innerDiv.html('<a href = "artistInfo.aspx?aName=' + data.similarartists.artist[i].name + '">' + '<img src="' + data.similarartists.artist[i].image[3]['#text'] + '"  width="450px" height="250px">' +'<br><br>'+data.similarartists.artist[i].name + '</a>');
                        li.append(innerDiv);
                       
                        $('#createdby #horiz_container_outer #horiz_container_inner #horiz_container').append(li);
                       

                    }
                    $('#horiz_container_outer').horizontalScroll();
                }

            });
        });

</script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
             <div id="success">
            <div id="artistName"></div>
            <div id="artistImage"></div>
            <div id="artistBio"></div>
        </div>
        <h1>Similar Artists: </h1>


        <div id="createdby">
            <ul id="horiz_container_outer">
                <li id="horiz_container_inner">
                    <ul id="horiz_container">
                    </ul>
                </li>
            </ul>


            <div id="scrollbar">
                
                <a id="left_scroll" class="mouseover_left" href="#"></a>
                <div id="track">
                    <div id="dragBar"></div>
                </div>
                <a id="right_scroll" class="mouseover_right" href="#"></a>
            </div>
        </div>

    </section>
</asp:Content>

