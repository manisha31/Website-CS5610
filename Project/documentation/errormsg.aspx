<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h1> Message: No result found </h1>
        <p>
           When the user enters an invalid data, into the textbox for searching Artist/ Albums/ Events, this message
            is displayed to them. I handle these validations using JavaScript.
                    </p>

        <h2>Snapshots :</h2>
        <p>Error Message :</p>
        <img src="../../images/errormsg.PNG" />
        <br />
              
    </section>
</asp:Content>

