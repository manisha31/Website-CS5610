<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h1>Master Page</h1>
        <p>To provide a consistent layout across all the pages in the website, I made use of master page. The master page for my project is
            <b>musicMasterPage.master</b>. The master page has two content holders, one inside the head tag and another inside the body tag.
            My master page includes the header with the logo and the navigational tabs. All the common links
            to the website can be displayed in the Master Page.
            <br />
            <br />
            The logo for the website which, I have included into the header is made using
            <a href="http://www13.flamingtext.com/net-fu/jobs/170512554.html?use=personal" target="_blank">Online Logo Maker</a> <br />
            The background image for body is downloaded from
            <a href ="http://www.noisetexturegenerator.com/" target="_blank">Texture Generator</a><br />
            <br />

           
        </p>
         <h2>Snapshot :</h2>
        <img src="../../images/master.PNG" />

       <h2>Source Files :</h2>
        <p>
            <a href="../../fileview/Default.aspx?~/Project/musicMasterPage.master" target="_blank">Master Page</a><br />

        </p>
    </section>
</asp:Content>

