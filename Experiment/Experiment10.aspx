<%@ Page Language="C#" %>
<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html>

<script runat="server">
       
    protected void Page_Load(object source, EventArgs e)
    {
      
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>RSS Feed Parser</title>
    <script src="../javascript/jquery-1.11.0.min.js"></script>
    <script type="text/javascript">
        var name;
        var artist;
        var gen_child = '';
        $(document).ready(function () {

            $.ajax({
                type: "POST",
                url: "https://itunes.apple.com/us/rss/topalbums/limit=10/xml",
                //  data: "category=" + encodeURI(child_category),
                success: function (xmldata, status) {
                    var bcount = 1;
                    console.log("My xml : " + xmldata);
                    $(xmldata).find('entry').each(function () {
                        if (bcount <= 5) {
                            name = $(this).find('name').first().text();
                            artist = $(this).find('artist').first().text();
                            
                            console.log("name parsed: " + name);

                            gen_child += '<div class="img_box">';
                            gen_child += 'Name=' + name;
                            gen_child += '<br>'+ 'Artist='+ artist+ '<br><br>';
                           
                            bcount++;
                            

                        }

                    });
                    gen_child += '<div class="clear"></div>';
                    $("#info").append(gen_child);
                },
                error: function () {
                    var message = "<h2> Amazon API is down at the moment. Please check back later</h2>";
                    $("info").append(message)
                }
            });
        });
    </script>

</head>
<body>
    <div>
    <h1>Parsing RSS Feed in C#</h1>
            
            <h3>Description:</h3>
            <p>
              This experiment demonstrates parsing of rss feed response. I get the RSS feed from iTunes Store RSS feed generator. The
                response can be parsed using an AJAX call.
            
            </p>
            <hr />
            <h3>Demonstration:</h3>
            
    </div>
    <form id="form1" runat="server">
    <div id="info">
      
        
            <div class="newrelease"><h2>iTunes Store: Top Albums </h2></div>
   
    </div>
    </form>
    <hr />
    <h3>Source Files:</h3>
        <p>
            <a href="https://itunes.apple.com/us/rss/topalbums/limit=10/xml" target="_blank">XML File</a>
      <br />
        <a href="../fileview/Default.aspx?~/Experiment/Experiment10.aspx" target="_blank">ASPX Source</a><br />
    </p>

    <h3> References: </h3>
    <p>
        <a href ="http://net4.ccs.neu.edu/home/rasala/" target ="_blank">Prof. Rasala's Weatherbug & NASA experiment</a>
        <br />
        <a href ="http://net4.ccs.neu.edu/home/anjusv/experiments/Default.aspx" target ="_blank">Anju's Experiments</a>
        <br />
        <a href ="http://www.w3schools.com/rss/default.asp" target ="_blank">w3 Schools RSS Basics</a>
    </p>

</body>
</html>
