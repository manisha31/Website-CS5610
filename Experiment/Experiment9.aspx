<%@ Page Language="C#" %>
<%@ Import Namespace="System.Xml" %>

<!DOCTYPE html>

<script runat="server">
       
    protected void Page_Load(object source, EventArgs e)
    {
        XmlDocument doc = new XmlDocument();
        doc.Load(Server.MapPath("../Experiment/XMLMusic.xml"));

        XmlNode root = doc.DocumentElement;
        track.Text = root.SelectSingleNode("track").ChildNodes[0].Value;
        artist.Text = root.SelectSingleNode("artist").ChildNodes[0].Value;
        duration.Text = root.SelectSingleNode("duration").ChildNodes[0].Value;
        album.Text = root.SelectSingleNode("album").ChildNodes[0].Value;
       
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>XML Parser</title>
</head>
<body>
    <div>
    <h1>Parsing XML in C#</h1>
            
            <h3>Description:</h3>
            <p>
               While working on web services- REST APIs in C#, I often come across XML response. This experiment demostrates how to parse
                XML response in C#. I make use of System.Xml namespace and XMLDocument class to read the XML response.
            
            </p>
            <hr />
            <h3>Demonstration:</h3>
            <p>
                The table below shows the result after parsing the XML file.
            </p>
    </div>
    <form id="form1" runat="server">
    <div>
        <table border ="1" >
                <tr>
                    <td class="music">
                        Track
                    </td>
                    <td>
                        <asp:Literal ID="track" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="music">
                        Artist
                    </td>
                    <td>
                        <asp:Literal ID="artist" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="music">
                        Duration
                    </td>
                    <td>
                        <asp:Literal ID="duration" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="music">
                        Album
                    </td>
                    <td>
                        <asp:Literal ID="album" runat="server" />
                    </td>
                </tr>
                
            </table>
    </div>
    </form>
    <hr />
    <h3>Source Files:</h3>
        <p>
            <a href="../fileview/default.aspx?~/Experiment/XMLMusic.xml" target="_blank">XML File</a>
      <br />
        <a href="../fileview/Default.aspx?~/Experiment/Experiment9.aspx" target="_blank">ASPX Source</a><br />
    </p>

    <h3> References: </h3>
    <p>
        <a href ="http://msdn.microsoft.com/en-us/library/system.xml.xmldocument(v=vs.110).aspx" target ="_blank">XMLDocument Class and Methods</a>
        <br />
        <a href ="http://stackoverflow.com/questions/17383387/how-to-get-data-from-an-xml-file-in-c-sharp-using-xmldocument-class" target ="_blank"> Parsing XML sample</a>
    </p>

</body>
</html>
