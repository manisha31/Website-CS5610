<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h1>Contact Page</h1>
        <p>
            This page has contact details of the admin of the website, so that the users can contact in case of any doubts. I also display the location
            on the google maps so that it is easy for the users to locate the admin location.
        </p>
        <br />
        <br />

        <h2>Snapshot :</h2>
        <img src="../../images/contact.PNG" />

         <br />
        <h2>Source Files :</h2>
        <p>
             <a href="../../fileview/Default.aspx?~/Project/contactUs.aspx" target="_blank">ASPX Source</a><br />
        </p>
       
    </section>
</asp:Content>

