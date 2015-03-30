<%@ Page Title="" Language="C#" MasterPageFile="~/Project/musicMasterPage.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="../css/musicCSS.css" rel="stylesheet" />

    <script src="../javascript/jquery-1.11.0.min.js"></script>

    <script>
        var artistname = '';
        var formatteddata = '';
        var eventtitle = '';
        var venuename = '';
        var city = '';
        var country = '';
        var street = '';
        var postalcode = '';

        var website = '';
        var phone = '';
        var image = '';
        var startdate = '';
        var attendance = '';
        var page = 1;


        $(document).ready(function () {

          

            $(".button").click(function () {
               
                var query = document.getElementById('<%= txtArtist.ClientID %>').value;
                if (query == "") {
                    alert("Please enter valid name of artist");
                } else {
                    $.ajax({
                        type: 'POST',
                        url: 'http://ws.audioscrobbler.com/2.0/',
                        data: 'method=artist.getevents&' +
                               'artist=' + query + '&' +
                               'api_key=fd67847bbbdb75ad38746529c7556acc&' +
                               'format=json&' +
                               'limit=10&' +
                               'page=' + page,

                        dataType: 'json',

                        success: function (data) {
                            console.log(data);

                            var size = 0;
                            for (var i in data.events.event) {
                                size++;
                            }
                            $('#outerDiv').empty();
                            formatteddata = '';
                            if (size == 0) {
                                console.log("No Result match size : " + size);
                                $('#outerDiv').append('<h2> No Results According to your Match </h2> ');
                            } else {
                                $(".button2").show();
                                for (var i in data.events.event) {

                                    eventtitle = data.events.event[i].title;
                                    artistname = data.events.event[i].artists.artist;

                                    venuename = data.events.event[i].venue.name;
                                    city = data.events.event[i].venue.location.city;
                                    country = data.events.event[i].venue.location.country;
                                    street = data.events.event[i].venue.location.street;
                                    postalcode = data.events.event[i].venue.location.postalcode;
                                    phone = data.events.event[i].venue.phonenumber;

                                    startdate = data.events.event[i].startDate;

                                    website = data.events.event[i].website;
                                    attendance = data.events.event[i].attendance;


                                    formatdata();

                                    $('#outerDiv').append(formatteddata);
                                    formatteddata = '';

                                }

                            }


                        }
                    });
                }
            });



        });
        function formatdata() {

            formatteddata += '<div class="event">';

            formatteddata += '<p>Event Title: ' + eventtitle + '</br>';
            formatteddata += 'Artist Name: ' + artistname + '</br>';
            formatteddata += 'Date/Time: ' + startdate + '</br>';
            formatteddata += 'Attendance: ' + attendance + '</br>';
            formatteddata += 'Website: <a id = "a1" href="' + website + ' " target = "_blank">Click here!</a></br>';

            formatteddata += 'Venue Name: ' + venuename + '</br>';
            formatteddata += 'Venue Address: ' + street + ' ' + city + ' ' + postalcode + ' ' + country + '</br>';
            formatteddata += 'Venue Phone: ' + phone + '</br>';



            formatteddata += '</p></div>';



        }

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section>
        <div>
            <h2>Search for Events:
            <asp:TextBox ID="txtArtist" runat="server" placeholder="Enter Artist Name"></asp:TextBox>
                <input type="button" value="Submit" class="button" />
                (Sample: cher)
    

            </h2>
        </div>
        <div id="outerDiv"></div>

    </section>
</asp:Content>

