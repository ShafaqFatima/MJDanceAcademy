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
        <form>
            <div id="outer">
                <%@include file="userhead.jsp" %>
                <div id="container">
                    <br/><br/>
                    <center>
                         <center><div id="en" style="height:600px;width:700px;margin-top: 50px; background-color: yellowgreen;box-shadow:2px 2px 25px black;">
                       <br/>
                       <center><h1>TIME TABLE</h1></center>
                       <table border="1" bordercolor="blue" cellpadding="10">
<tr bgcolor="pink"><th>DAYS</th>
<th>10am-11am</th>
<th>11am-12pm</th>
<th>12pm-1pm</th>
<th>5pm-6pm</th>
<th>6m-7pm</th>
</tr>
<tr bgcolor="pink">
<td>weekdays</td>
<td>Kathak/Bharatnatyam</td>
<td>Ballet/Aerial</td>
<td>Salsa</td>
<td>Belly</td>
<td>Hiphop</td>
</tr>
<tr bgcolor="pink">
<td>weekends</td>
<td colspan="5">Face off and Dance competetion (For interested candidates)</td>

<tr>
</table>
                       
                       <hr>
                       <center><h1>Dance Instructors</h1></center>

                       <ul style="font-size:20px">
                           <li>Hip-Hop: Mr Vicky Patel</li>
                           <br/>
                           <li>Ballet/Aerial:Ms Auti Tiwari</li>
                           <br/>
                           <li>Belly:Ms Shaila Agarwal</li>
                           <br/>
                           <li>Kathak/Bharatnatyam:Devesh Mirchandani</li>
                           <br/>
                           <li>Salsa:Ms Richa Sharma/Mr Rajesh Gupta</li>
                           
                       </ul>
                       
                            
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
