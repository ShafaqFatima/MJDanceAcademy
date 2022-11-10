<%-- 
    Document   : welcomeadmin
    Created on : 22 Jul, 2018, 10:12:49 AM
    Author     : hp
--%>

<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link href="../css/adminstyle.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body>
        <form action="admincode/changepasswordcode.jsp" method="post">
         <div id="outer">
             <%@include file="adminheader.jsp" %>
             <div id="container">
                 <br/>
                   <center><div id="en" style="height:400px;width:500px;margin-top: 50px; background-color:yellowgreen;box-shadow:2px 2px 25px black;">
                   <br/> 
                 <h1 style="text-align: center;">Change Password</h1>
                 <br>
                 <table cellspacing="5" cellpadding="5"style="margin: 0px auto;font-size: 20px;">
                     <tr>
                         <td>
                             Enter old password:
                         </td>
                         <td><input type="password" name="oldpass" required=""/></td>
                         
                                 
                     </tr> 
                      <tr>
                         <td>
                             Enter new password:
                         </td>
                         <td><input type="password" name="newpass" required=""/></td>
                         
                                 
                     </tr>
                      <tr>
                         <td>
                             Enter confirm password:
                         </td>
                         <td><input type="password" name="cpass" required=""/></td>
                         
                                 
                     </tr> 
                      <tr>
                         
                         
                          <td colspan="2" style="text-align: center;"><input style="height:50px;width: 150px; background-color: darkblue;color: white;" type="submit" value="Change Password"/></td>
                         
                                 
                     </tr> 
                 </table>
                       </div>
                   </center>
                 
             </div>
             <%@include file="adminfooter.jsp" %>
        </div>
        </form>
    </body>
</html>
