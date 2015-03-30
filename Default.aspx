<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        var datetime = DateTime.Now;
        string dt = datetime.ToString();
        p1.InnerHtml = dt;
    }
</script>

<html lang="en">
<head id="Head1" runat="server">
    <meta charset='utf-8' />

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Manisha Sharma Home</title>
         
    <link rel="stylesheet" href="css/homepage.css" />
    <link rel="stylesheet" href="css/socialmediastyle.css" />
    <script src="javascript/jquery-1.11.0.min.js"></script>
   
   
    
</head>
<body>
    <header>

            <h1>MANISHA SHARMA</h1>

            <nav>

                <a href="#" id="menu-icon"></a>

                <ul>

                <li><a href="sitestatistics/" target="_blank">SiteStatistics</a></li>
                <li><a href="statistics/" target="_blank">Statistics</a></li>
                <li><a href="source/" target="_blank">Source</a></li>
                <li><a href="search/" target="_blank">Search</a></li>
                <li><a href="searchtree/" target="_blank">SearchTree</a></li>
                <li><a href="textview/" target="_blank">TextView</a></li>
                <li><a href="filelist.aspx" target="_blank">FileList</a></li>
                <li><a href="autofile.aspx" target="_blank">AutoFile</a></li>
                <li><a href="images/autoimage.aspx" target="_blank">Images</a></li>
                <li><a href="blog/" target="_blank">Blog</a></li>
                <li><a href="story/index.htm?../experiment/story.txt" target="_blank">Experiments</a></li>

                </ul>

            </nav>

        </header>

    <section>
        <div id ="upper"> 
            <div id="link1" class="box">
                 
                <a href="Project/musicHome.aspx" target="_blank">Project</a>
            </div>
            <div id="link2" class="box">
                <a href="story/index.htm?../Project/documentation/story.txt" target="_blank"">Project Documentation</a>
            </div>
            <div id="link3" class="box"> 
                <a href ="story/index.htm?../images/story.txt" target="_blank" >Image Story</a>
            </div>
            <div id="link4" class="box"> 
                <a href ="Project/documentation/Acknowledgements.aspx" target="_blank" >Credits</a>
            </div>

            <div id="imagebox" class="box">
                
            </div>
            <div id="hello" class="box">
                <div id="time"> 
                    <h2>Date & Time:</h2><p id= "p1" runat ="server">Default DateTime:</p>
      
</div>

              
                <h1>Hello,</h1>
                <br />
                
                <h2>a bit about me:</h2>
                <br />
                <p> 
            I am a graduate student at Northeastern University and passionate about Web Development.
            This website is being developed as part of the course CS5610: Web Development, 
                    under the guidance of Prof. Richard Rasala and Prof.Jose Annunziato. I love the structure of this course which provides 
                    freedom of learning to students by exploring the web technologies and conducting experiments. <br />
                    I am excited to explore the different web technologies while working through experiments and the project like:
                    HTML, CSS, JavaScript, JQuery, AJAX, Web Services - RESTful and LINQ.
                    </p>
                              
            </div>
            
        </div>
        
  
    </section>
    <footer>
     <center>
            <h2> Contact: &nbsp &nbsp <a href="mailto:sharma.mani@husky.neu.edu" class="nbs-social-mail"></a>
                    <a href="https://www.facebook.com/manisha315" class="nbs-social-facebook"></a>
                    <a href="#" class="nbs-social-googleplus"></a></h2>
          
            <p> © 2014 Manisha Sharma. All rights reserved.</p>
        

     </center>
     
    </footer>

</body>
</html>

