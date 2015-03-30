<%@ Page Title="" Language="C#" MasterPageFile="~/Project/documentation/documentMaster.master" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../../css/documentationCSS.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <section>
        <h1>Acknowledgments :</h1>
        <p>
            I would like to thank <b>Prof. Rasala</b> and <b>Prof. Jose Annunziato</b> for such a learning oriented course.
            While working on experiments and project, I learnt a bunch of web technologies like HTML5, CSS3, JavaScript, JQuery,
            AJAX, ASP.net and C#.<br /><br />
            Prof. Rasala's website is a wonderful resource for learning these technologies. He has conducted exhaustive experiments
            on each technology which helped me clear my concepts and doubts.<br /><br />
            Prof. Jose's experiments on Web Services API were extremely helpful. He designed some really interesting experiments using LINQ
            as well. I experienced great learning from the experiments and resources shared by professors.<br /><br />
            My teaching assistant, <b>Yitao Xiong</b> was extremely helpful and always guided me well by giving constructive feedback every week
            which kept me on track. 
            
        </p>
        <h1>References :</h1>
        
            <ul>
                <li><p><a href ="http://net4.ccs.neu.edu/home/rasala/" target="_blank"> Prof. Rasala's Website </a></p></li>
                 <li><p><a href ="http://net4.ccs.neu.edu/home/jga/examples/" target="_blank"> Prof. Annunziato's Examples </a></p></li>
                <li><p><a href ="http://stackoverflow.com/" target="_blank"> Stack Overflow QA Threads </a></p></li>
                <li><p><a href ="http://www.lynda.com/" target="_blank"> Lynda.com Tutorials </a></p></li>
                  <li><p><a href ="http://www.w3schools.com/" target="_blank"> w3 Schools </a></p></li>
                   <li><p><a href ="http://jquery.com/" target="_blank"> jQuery Tutorials </a></p></li>
                 <li><p><a href ="http://css-tricks.com/" target="_blank"> CSS Tricks </a></p></li>
                <li><p><a href ="http://net4.ccs.neu.edu/home/anjusv/" target="_blank"> Anju Sreevalsan's Website </a></p></li>
            </ul>
        <h1>Data Courtesy: </h1>
        <ul>
           
                <li><p><a href ="http://www.last.fm/api" target="_blank">  API Used: Last FM API </a></p></li>
             <li><p><a href ="https://rss.itunes.apple.com/us/?urlDesc=" target="_blank">  iTunes Store RSS Generator </a></p></li>
        </ul>
       
    </section>
</asp:Content>

