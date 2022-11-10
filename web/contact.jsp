

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/generalstyle.css" rel="stylesheet"/>
           
    </head>
    <body>
        <form>
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <center>
                        <div id="box" style="height:550px;width:500px;background-color: lightcoral;box-shadow:5px 5px 25px black;margin-top: 80px;">
                            <br/>
                                      <h2>Contact us on</h2>
                            <hr/><br/>
                        <h4> CONTACT NO-2248644211</h4>
                        
                        <h4> EMAIL ADDRESS-MJDance@gmail.com</h4>
                        
                                 <h4>Office Address-453/256,Chowk,Lucknow </h4>
                                   <br/>
                                      <h2>Follow us on</h2>
                            <hr/><br/>
                        <h4> FACEBOOK- MJDance_Academy </h4>
                        <h4> INSTAGRAM-MJDance_Academy</h4>
                        
                                 <h4>YOUTUBE-MJDance_Academy </h4>
                         

                    </div>
                        </center>
                        <marquee><img src="images/q.gif" height="300" width="500"></marquee>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>   
            </div>
        </form>
    </body>
</html>
