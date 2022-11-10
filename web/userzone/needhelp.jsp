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
        <form action="usercode/feedbackcode.jsp" method="post">
            <div id="outer">
                <%@include file="userhead.jsp" %>
                <div id="container">
                    <br/><br/>
                        <center><div id="en" style="height:600px;width:600px;margin-top: 50px; background-color: yellowgreen;box-shadow:2px 2px 25px black;">
                        <h2>Contact us on</h2>
                            <hr/><br/>
                        <h4> CONTACT NO-2248644211</h4>
                        
                        <h4> EMAIL ADDRESS-MJDance@gmail.com</h4>
                        
                                 <h4>Office Address-453/256,Chowk,Lucknow </h4>
                                   <br/>
                                <table cellspacing="5" cellpadding="5" style="margin: 0px auto; font-size:20px;">
                            <tr>
                                <td colspan="2" style="font-size: 35px;font-weight: bold;text-align: center;">Feedback Form<hr/></td>
                            </tr>
                            <tr>
                                <td>Enter Feedback/Query</td>
                                <td>
                                    <textarea name="feedback" required="" style="width: 200px;height: 80px;resize: none;"></textarea>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="2" style="text-align: center;">
                                    <input style="height:50px;width: 150px; background-color: darkgreen;color: white;" type="submit" value="Post"/>
                                </td>
                            </tr>

                        </table>
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
