<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <title> Artist Search Page</title>
    <link href="../css/musicCSS.css" rel="stylesheet" />

    
    <script src="../javascript/jquery-1.11.0.min.js"></script>

    <script>
        var artistname = '';
        var formatteddata = '';
        var listeners='';
        var url='';
        var artistimg = '';
        var page = 1;
       
        
        $(document).ready(function () {

            $(".button1").hide();
            $(".button2").hide();


            $(".button").click(function () {
                $(".button1").hide();
                page = 1;
               
                var query = document.getElementById('<%= txtArtist.ClientID %>').value;
                if (query == "") {
                    alert("Please Enter a keyword for artist search");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: 'http://ws.audioscrobbler.com/2.0/',
                        data: 'method=artist.search&' +
                               'artist=' + query + '&' +
                               'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                               'format=json&' +
                               'page=' + page,

                        dataType: 'json',

                        success: function (data) {
                            console.log(data);
                            
                            var size = 0;
                            for (var i in data.results.artistmatches.artist) {
                                size++;
                            }
                            $('#outerDiv').empty();
                            formatteddata = '';
                            if (size == 0) {
                                console.log("No Result match size : " + size);
                                $('#outerDiv').append('<h2> No Results According to your Match </h2> ');
                            } else {
                                $(".button2").show();
                                for (var i in data.results.artistmatches.artist) {
                                    
                                    artistname = data.results.artistmatches.artist[i].name;
                                    artistimg = data.results.artistmatches.artist[i].image[1]['#text'];
                                    listeners = data.results.artistmatches.artist[i].listeners;
                                    url = data.results.artistmatches.artist[i].url;

                                    formatdata();

                                    $('#outerDiv').append(formatteddata);
                                    formatteddata = '';
                                    
                                }

                            }


                        }
                    });
                }
            });

            
            $(".button1").click(function () {
               
                page--;
                console.log("page no -- " + parseInt(page));
                if (page == 1) {
                    console.log("Hide prev button as page : " + page);
                    $(".button1").hide();
                }
                var query = document.getElementById('<%= txtArtist.ClientID %>').value;
                 $.ajax({
                     type: 'POST',
                     url: 'http://ws.audioscrobbler.com/2.0/',
                     data: 'method=artist.search&' +
                            'artist=' + query + '&' +
                            'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                            'format=json&' +
                            'page=' + page,

                     dataType: 'json',

                     success: function (data) {
                         console.log(data);
                       
                         $('#outerDiv').empty();
                         formatteddata = '';
                         for (var i in data.results.artistmatches.artist) {
                          
                             artistname = data.results.artistmatches.artist[i].name;
                             artistimg = data.results.artistmatches.artist[i].image[1]['#text'];
                             listeners = data.results.artistmatches.artist[i].listeners;
                             url = data.results.artistmatches.artist[i].url;

                             formatdata();

                             $('#outerDiv').append(formatteddata);
                             formatteddata = '';
                     
                         }

                     }
                 });

            });

            $(".button2").click(function () {
               
                page++;
                $(".button1").show();
                console.log("page no ++ " + page);
                var query = document.getElementById('<%= txtArtist.ClientID %>').value;
                 $.ajax({
                     type: 'POST',
                     url: 'http://ws.audioscrobbler.com/2.0/',
                     data: 'method=artist.search&' +
                            'artist=' + query + '&' +
                            'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                            'format=json&' +
                            'page=' + page,

                     dataType: 'json',

                     success: function (data) {
                         console.log(data);
                         
                         $('#outerDiv').empty();
                         formatteddata = '';
                         for (var i in data.results.artistmatches.artist) {
                            
                             artistname = data.results.artistmatches.artist[i].name;
                             artistimg = data.results.artistmatches.artist[i].image[1]['#text'];
                             listeners = data.results.artistmatches.artist[i].listeners;
                             url = data.results.artistmatches.artist[i].url;

                             formatdata();

                             $('#outerDiv').append(formatteddata);
                             formatteddata = '';
                          
                         }

                     }
                 });

             });


        });
        function formatdata() {
            formatteddata += '<a href = "artistInfo.aspx?aName=' + artistname + '">';
            formatteddata += '<div class="singleartist">';
            
            formatteddata += '<b>' + artistname + '</b>';
            formatteddata += '<img src="' + artistimg + '"/>';
            formatteddata += '<br><b>'+"Number of listeners :" + listeners + '</b>';
   
            formatteddata += '</div></a>';

        }

    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
         <div>
         <h2>
                Search for Artists:
            <asp:TextBox ID="txtArtist" runat="server" placeholder="Enter Keyword For Artist"></asp:TextBox>
            <input type="button" value="Submit" class="button" />
             (Sample: Cher)
             <input type="button" value="Prev" class="button1" />
             <input type="button" value="Next" class="button2" />
             
            </h2>
             </div>
     <div id="outerDiv"></div>   
  
    </section>
</asp:Content>

