<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html lang ="en">
<head id="Head1" runat="server">
    <title>Manisha Sharma Home</title>
    <style type="text/css">

   

        #outer {
            height: 100%; 
            width: 100%;
            border: 1px solid red;
            float: left;
          
        }

        #top {
            margin-top: 5px;
            margin-bottom: 5px;
            margin-left: 10px;
            margin-right: 10px;
            height: 20px;
            width: 98%;
            border: 1px solid green;
            float: left;
            
        }

        #container
{
    width:100%;
    height:700px;
    padding-top:100px;
    display:table;
    
        
}
        #leftMajor {
            margin-left: 20px;
            height: 600px;
            width: 70%;
            border: 1px solid blue;
            position:relative;
            float: left;

        }

        #rightMajor {
            margin-left: 20px;
            height: 600px;
            width: 25%;
            border: 1px solid blue;
            float: left;
            
        }

        #left1 {
            height: 400px;
            width: 100%;
            border: 1px solid pink;
            position: relative;
            float: left;
        }
        #left2 {
            height: 75px;
            width: 100%;
            border: 1px solid pink;
            position: relative;
            float: left;
        }
        #left3 {
            height: 75px;
            width: 100%;
            border: 1px solid pink;
            position: relative;
            float: left;
        }

        #left4 {
            height: 50px;
            width: 100%;
            border: 1px solid pink;
            position: relative;
            float: left;
        }


        .right {
            height: 200px;
            width: 100%;
            border: 1px solid pink;
             position: relative;
            float: left;
        }

    </style>
</head>
<body>
   
    <div id="outer">
        <div id="top">

        </div>
        <div id="leftMajor">
            <div id="left1">

            </div>
            <div id="left2">

            </div>
            <div id="left3">

            </div>
            <div id="left4">

            </div>
            
        </div>
        <div id="rightMajor">
            <div class="right">

            </div>
            <div class="right">

            </div>
            <div class="right">

            </div>
        </div>

        <div style="line-height: 10px;background:none;"><div style="max-width: 160px; width: 160px; background:none;"><object style="margin:0;padding:0;" type="application/x-shockwave-flash" data="http://static.hotelscombined.com.s3.amazonaws.com/swf/weather_widget.swf" 	id="w4aaa9c4e6c122b4c4af9ecec7aeeb33a" height="272" width="160">	<param value="http://static.hotelscombined.com.s3.amazonaws.com/swf/weather_widget.swf" name="movie"/>	<param value="transparent" name="wmode">	<param value="station_id=KBOS&city_name=Boston&language=en&use_celsius=Yes&skinName=Purple&PID=164476&ts=201401311129&hideChangeSkin=No" name="flashvars">	<param value="all" name="allowNetworking">	<param value="always" name="allowScriptAccess"></object><a alt="Hotels Combined" title="Hotels Combined" style="margin:0; padding:0; text-decoration: none; background: none;" target="_blank" href="http://widgets.hotelscombined.com/City/Weather/Boston.htm?use_celsius=Yes"><div style="background: none; color: white; text-align: center; width: 160px; height: 17px; margin: 0px 0 0 0; padding: 5px 0 0 0; cursor:pointer; background: transparent url(http://static.hotelscombined.com.s3.amazonaws.com/Pages/WeatherWidget/Images/weather_purple_bottom.png) no-repeat; font-size: 12px; font-family: Arial,sans-serif; line-height: 12px; font-weight: bold;">See 10-Day Forecast</div></a><div style="text-align: center; width: 160px;"><a alt="Hotels Combined" title="Hotels Combined" style="background:none;font-family:Arial,sans-serif; font-size: 9px; color: #777777;" rel="nofollow" href="http://www.hotelscombined.com">&copy; HotelsCombined.com</a></div></div></div>
    
    </div>
 
</body>
</html>
