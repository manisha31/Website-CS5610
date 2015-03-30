<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Music Home </title>
    <meta name="viewport" content="width=device-width; initial-scale=1; maximum-scale=1" />
    <link href="../css/musicCSS.css" rel="stylesheet" />
    <link href="../css/flipStyle.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.0.min.js"></script>

    <script type="text/javascript" src="../javascript/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../javascript/modernizr.2.5.3.min.js"></script>


    
    <script type="text/javascript">
        var gen_child = '';
        var albumName = '';
        var artistName = '';
        var albumImage = '';
        var formatteddata = '';
        var bcount = 1;
        var imageArray = [];
        $(document).ready(function () {

            $.ajax({
                type: "POST",
                url: "https://itunes.apple.com/us/rss/topalbums/limit=10/xml",
                //  data: "category=" + encodeURI(child_category),
                success: function (xmldata, status) {

                    console.log("My xml : " + xmldata);
                    $(xmldata).find('entry').each(function () {
                        if (bcount <= 9) {
                            albumName = $(this).find('name').first().text();
                            artistName = $(this).find('artist').first().text();

                            //console.log("name parsed: " + name);

                            albumInfo();



                            bcount++;


                        }

                    });

                },
                error: function () {
                    var message = "<h2> Amazon API is down at the moment. Please check back later</h2>";
                    $("info").append(message)
                }
            });

            // console.log("true length : " + imageArray.length);
        });



        function albumInfo() {

            $.ajax({

                type: 'POST',
                url: 'http://ws.audioscrobbler.com/2.0/',
                data: 'method=album.getinfo&' +
                       'artist=' + artistName + '&' +
                       'album=' + albumName + '&' +
                       'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                       'format=json',

                dataType: 'json',

                success: function (data) {
                    console.log(data);

                    albumImage = data.album.image[2]['#text'];
                    albumName = data.album.name;
                    artistName = data.album.artist;

                   // imageArray.push(albumImage);
                    formatteddata = '';
                    //alert(artistName);
                    formatData();
                    console.log(formatteddata);
                    $("#container").append(formatteddata);

                }

            });
          
        }

        function formatData() {
            formatteddata += '<div class="thumb scroll"  onmouseover="flip();"><div class="thumb-wrapper"><img src="' + albumImage + '" alt="Album cover not found" />';
            formatteddata += '<div class="thumb-detail">';
            formatteddata += '<a href="albumInfo.aspx?album=' + albumName + '&artist=' + artistName + '">' + albumName + '</a>';
            formatteddata += '</div></div></div>';


        }

        function flip() {


            // alert("function");
            if ($('html').hasClass('csstransforms3d')) {

                $('.thumb').removeClass('scroll').addClass('flip');
                $('.thumb.flip').hover(
                    function test() {
                        // alert("hover 11");
                        $(this).find('.thumb-wrapper').addClass('flipIt');
                    },
                    function () {
                        // alert("hover 22");
                        $(this).find('.thumb-wrapper').removeClass('flipIt');
                    }
                );

            } else {

                $('.thumb').hover(

                    function () {
                        // alert("hover");
                        $(this).find('.thumb-detail').stop().animate({ bottom: 0 }, 500, 'easeOutCubic');
                    },
                    function () {
                        // alert("hover 2");
                        $(this).find('.thumb-detail').stop().animate({ bottom: ($(this).height() * -1) }, 500, 'easeOutCubic');
                    }
                );

            }
        }

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <section>


        <h1>Top Albums by iTunes Store : </h1>

        <div id="container">
        </div>
    </section>

</asp:Content>


