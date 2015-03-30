<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Fetching data using SoundCloud API and displaying it</title>
    <script src="../javascript/jquery-1.11.0.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Using Web Services</h1>
            <h2>Search for music using Soundcloud API</h2>
            <h3>Description:</h3>
            <p>
                This experiment demonstrates how data can be fetched using an API available online. We can then render the data 
        and display it on our website in a manner that is fit for our requirements. I make use of developers.soundcloud.com
            API to extract sounds that user wants to search.  
            <br />

                JSON Response: <a href="http://api.soundcloud.com/tracks.json?client_id=f7b82bdad99dd87ed80b8c79bbe238b8">Click here!!</a>
            </p>
            <hr />
            <h3>Demonstration:</h3>
            <p>
                The search shows the topmost 5 items found in the result set.
            </p>
            <p>
                Enter keyword for the music you want to search:
            <asp:TextBox ID="txtMusic" runat="server"></asp:TextBox>
            <input type="button" value="Submit" class="button" />
                (Sample music: love)

            </p>
            <br />
           
          <table class ="table">
              <thead>
                <tr>
                  <th>ID</th>
                  <th>Genre</th>
                  <th>Title</th>
                </tr>
              </thead>
              <tbody class="wam-results">

                    </tbody>
              
          </table>

            <hr />
        </div>
    </form>

    <script>
        $(document).ready(function () {
            $(".button").click(function () {
                var query = $("#txtMusic").val();
                $.ajax({
                    url: 'http://api.soundcloud.com/tracks.json?client_id=f7b82bdad99dd87ed80b8c79bbe238b8&limit=5&q='+query,
                    dataType: 'json',
                    success: function (data) {
                        console.log(data);
                        var table = $(".wam-results");
                        table.empty();

                        for (var i in data) {
                            var music = data[i];
                            var genre = music.genre;
                            var title = music.title;
                            var id = music.id;

                            var tr = $("<tr>");

                            td = $("<td>");
                            td.append(id);
                            tr.append(td);

                            var td = $("<td>");
                            td.append(genre);
                            tr.append(td);

                            td = $("<td>");
                            td.append(title);
                            tr.append(td);

                            table.append(tr);

                        }
                        
                   
                    }
                });
            });
        });
   
    </script>

    <h3>Source Files: </h3>
    <a href="../fileview/Default.aspx?~/Experiment/Experiment7.aspx" target="_blank">View Source</a><br />
     <h3>Reference: </h3>
    <p>
 <a href = "http://net4.ccs.neu.edu/home/jga/examples/" target="_blank">Prof. Jose's Examples</a>
    </p> 
</body>
</html>
