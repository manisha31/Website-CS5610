<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title>Album Search</title>
    <link href="../css/musicCSS.css" rel="stylesheet" />
    <script src="../javascript/jquery-1.11.0.min.js"></script>
   
     <script type ="text/javascript">
         var albumname = '';
         var formatteddata = '';
         var albumartist = '';
         var mbid = '';
         var albumimg = '';
         var page = 1;
         //var nextPageSize = 0;

         $(document).ready(function () {
             $(".button1").hide();
             $(".button2").hide();

             $(".button").click(function () {
                 var query = document.getElementById('<%= txtAlbum.ClientID %>').value;
                // alert(query);
                 if (query == "") {
                     alert("Please Enter KeyWord for Album Search");
                 } else {
                     $(".button1").hide();
                     page = 1;
                     $.ajax({
                         type: 'POST',
                         url: 'http://ws.audioscrobbler.com/2.0/',
                         data: 'method=album.search&' +
                                'album=' + query + '&' +
                                'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                                'format=json&' +
                                'page=' + page,

                         dataType: 'json',

                         success: function (data) {
                             console.log(data);
                             $('#outerDiv').empty();
                             formatteddata = '';
                             var size = 0;
                             for (var i in data.results.albummatches.album) {
                                 size++;
                             }
                             if (size == 0) {
                                 console.log("No results found according to match size :" + size);
                                 $('#outerDiv').append('<h1> No Results According to your Match </h1> ');
                             } else {
                                 $(".button2").show();
                                 for (var i in data.results.albummatches.album) {
                                     albumname = data.results.albummatches.album[i].name;
                                     albumartist = data.results.albummatches.album[i].artist;
                                     albumimg = data.results.albummatches.album[i].image[2]['#text'];
                                     mbid = data.results.albummatches.album[i].mbid

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
                 
                 if (page == 1) {
                     console.log("Hide prev button as page : " + page);
                     $(".button1").hide();
                 }
                 var query = document.getElementById('<%= txtAlbum.ClientID %>').value;

                 $.ajax({
                     type: 'POST',
                     url: 'http://ws.audioscrobbler.com/2.0/',
                     data: 'method=album.search&' +
                            'album=' + query + '&' +
                            'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                            'format=json&' +
                            'page=' + page,

                     dataType: 'json',

                     success: function (data) {
                         console.log(data);
                         $('#outerDiv').empty();
                         formatteddata = '';
                         for (var i in data.results.albummatches.album) {

                             albumname = data.results.albummatches.album[i].name;
                             albumartist = data.results.albummatches.album[i].artist;
                             albumimg = data.results.albummatches.album[i].image[2]['#text'];
                             mbid = data.results.albummatches.album[i].mbid;
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
                
                 var query = document.getElementById('<%= txtAlbum.ClientID %>').value;
                
                  $.ajax({
                      type: 'POST',
                      url: 'http://ws.audioscrobbler.com/2.0/',
                      data: 'method=album.search&' +
                             'album=' + query + '&' +
                             'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                             'format=json&' +
                             'page=' + page,

                      dataType: 'json',

                      success: function (data) {
                          console.log(data);
                          
                            
                          $('#outerDiv').empty();
                          formatteddata = '';
                      
                              for (var i in data.results.albummatches.album) {

                                  albumname = data.results.albummatches.album[i].name;
                                  albumartist = data.results.albummatches.album[i].artist;
                                  albumimg = data.results.albummatches.album[i].image[2]['#text'];
                                  mbid = data.results.albummatches.album[i].mbid;

                                  formatdata();

                                  $('#outerDiv').append(formatteddata);
                                  formatteddata = '';
                              }
                         // }
                      }
                  });
              });
         });

         function formatdata() {
             formatteddata += '<a href = "albumInfo.aspx?album=' + albumname + '&artist=' + albumartist + '" >';
             formatteddata += '<div class="singleartist">';

             formatteddata += '<b>' + albumname + '</b>';
             formatteddata += '<img src="' + albumimg + '"/>';
             formatteddata += '<br><b>' + "Artist :" + albumartist + '</b>';

             formatteddata += '</div></a>';



         }

        

    </script>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div>
         <h2> Search for Albums: 
            <asp:TextBox ID="txtAlbum" runat="server" placeholder="Enter Album Name"></asp:TextBox>
                <input type="button" value="Submit" class="button" />
             (Sample: Believe)
                <input type="button" value="Prev" class="button1" />
             <input type="button" value="Next" class="button2" />
             </h2>
</div>
            
     
       <div id="outerDiv"></div>
    </section>
    


</asp:Content>

