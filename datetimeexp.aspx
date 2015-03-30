<%@ Page Language="C#" %>


<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        var datetime = DateTime.Now;
        string dt = datetime.ToString();
       
        string ld = datetime.ToLongDateString();
        string sd = datetime.ToShortDateString();
        string lt = datetime.ToLongTimeString();
        string st = datetime.ToShortTimeString();

        p1.InnerHtml = dt;
        p2.InnerHtml = sd + " @ " + st;
        p3.InnerHtml = ld + " @ " + st;
        p4.InnerHtml = sd + " @ " + lt;
        p5.InnerHtml = ld + " @ " + lt;
    }
</script>

<html lang="en">
    

<head runat="server">
    <meta charset ="utf-8" />
    <meta name="viewport" 
        content ="intial-scale= 1.0, minimun-scale=1.0"/>
    <title>DateTime Experiment</title>
</head>

<body>
    <form id="form1" runat="server">
    <div>
    <p>Default DateTime</p>
        <p id= "p1" runat ="server">   

        </p>
        <p>Short @ Short</p>
        <p id= "p2" runat ="server">   

        </p>
        <p>Long @ Short</p>
        <p id= "p3" runat ="server">  

        </p>
        <p>Short @ Long</p>
        <p id= "p4" runat ="server">   /* this object runs at server*/

        </p>
        <p>Long @ Long</p>
        <p id= "p5" runat ="server">   /* this object runs at server*/

        </p>

        <rasala:FileView runat ="server" />
    </div>
    </form>
</body>
</html>
