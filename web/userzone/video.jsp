<%@page import="java.sql.ResultSet"%>
<%    if (session.getAttribute("uid") == null) {
        response.sendRedirect("../login.jsp");
    } else {

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="../css/userstyle.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <form action="usercode/videocode.jsp" method="post">
            <div id="outer">
                <%@include file="userhead.jsp" %>
                <div id="container">
                    <br/><br/>
                        <center><div id="en" style="height:800px;width:600px;margin-top: 50px; background-color: yellowgreen;box-shadow:2px 2px 25px black;">
                        
                                <h1>Dance Videos</h1>
                            
                            
                          <br>
                          
<video controls  style="height: 200px;width: 200px; autoplay:false; "><source src="../images/vid2.mp4"   /> </video>
<video controls  style="height: 200px;width: 200px; autoplay:false; "><source src="../images/vid3.mp4"  /> </video>
<video controls  style="height: 200px;width: 200px; autoplay:false; "><source src="../images/vid4.mp4"  /></video>
<video controls  style="height: 200px;width: 200px; autoplay:false; "><source src="../images/vid5.mp4"  /></video>
                            </div>
                    </center>
                </div>
                <%@include file="userfooter.jsp" %>
            </div>
        </form>
    </body>
</html>
<%    }
%>
