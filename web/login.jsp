<%-- 
    Document   : index
    Created on : 16 Jul, 2018, 9:48:55 AM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/generalstyle.css" rel="stylesheet"/>
    </head>
    <body>
        <form action="generalcode/logincode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        <br/><br/><br/>
                            <center>
                                  <div id="box" style="height:300px;width:500px;background-color: lightcoral;box-shadow:5px 5px 25px black;margin-top: 80px;">
                            <br/>
                                      <h1>Login</h1>
                            <hr/><br/><br/>
                            <table style="text-align: left;">
                                <tr>
                <tr>
                    <td>Enter User Id:<br/><br/></td>
                    <td>
                        <input type="text" name="userid" required/><br/><br/>
                    </td>
                </tr>
                 <tr>
                     <td>Enter Password<br/><br/></td>
                    <td>
                        <input type="password" name="password" required/><br/><br/>
                    </td>
                </tr>
                 <tr>
                     <td>&nbsp;</td>
                    <td>
                        <input style="height:50px;width: 100px; background-color: darkblue;color: white" type="submit" value="Login"/>
                    </td>
                </tr>
                            </table>
                       
                    </div>
                            </center>
                    </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>   
            </div>
        </form>
    </body>
</html>
