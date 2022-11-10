<%@page import="mypack.CaptchaGenerator"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/generalstyle.css" rel="stylesheet"/>
           
    </head>
    <body>
        <form action="generalcode/registrationcode.jsp" method="post">
            <div id="wrapper">
                <%@include file="generalmaster/head.jsp" %>
                <div id="container">
                    <%@include file="generalmaster/left.jsp" %>
                    <div id="main">
                        
                        <br/>
                                <center><div id="en" style="height:700px;width:500px;margin-top: 50px;overflow: scroll; background-color: lightcoral;box-shadow:5px 5px 25px black;">
                                  <h1>Registration Form</h1>
                                  <hr/><br/>
                                <table style="text-align: left;" cellpadding="2">
                                 <tr>
       
                                <th> Student Name:<br/><br/></th>
                                <td><input type="text" name="studentname" required /><br/><br/></td>
                            </tr>
                             <tr>
       
                                <th>Gender:<br/><br/></th>
                               
                                <td><input type="radio" name="gender" value="male"/>Male
                                    <input type="radio" name="gender" value="female" />Female<br/><br/></td>
                            </tr>
                             <tr>
       
                                <th> Father Name:<br/><br/></th>
                                <td><input type="text" name="fathername" required /><br/><br/></td>
                            </tr>
                            <tr>
                                <th> Address:<br/><br/></th>
                                <td><textarea name="address" required="" style="resize: none;"></textarea><br/><br/></td>
                            </tr>
                            <tr>
                                <th>Contact No:<br/><br/></th>
                                <td><input type="number" name="contactno" required /><br/><br/></td>
                            </tr>
                             <tr>
       
                                <th>Email Address:<br/><br/></th>
                                <td><input type="email" name="emailaddress" /><br/><br/></td>
                            </tr>
                             <tr>
       
                                <th>Dance form:<br/><br/></th>
                                <td><input type="checkbox" name='dance' value='salsa'>Salsa
                                    <input type="checkbox" name='dance' value="kathak">Kathak
                                    <input type="checkbox" name='dance' value="bharatnatyam">Bharatnatyam
<input type="checkbox" name='dance' value="ballet">Ballet
<input type="checkbox" name='dance' value="Aerial">Aerial
<input type="checkbox" name='dance' value="Belly">Belly<br/><br/></td>
                            </tr>
                             <tr>
       
                                <th>Password:<br/><br/></th>
                                <td><input type="password" name="password" required /><br/><br/></td>
                            </tr>
                             <tr>
       
                                <th>Confirm Password:<br/><br/></th>
                                <td><input type="password" name="confirmpassword" required /><br/><br/></td>
                            </tr>
                            
                            
                              <tr>
       
                                <th>Captcha Code:</th>
                                <td>
                                <% 
                                CaptchaGenerator cg=new CaptchaGenerator();
                                String capcode=cg.getCode();
                                %>
                                <h2><%=capcode%></h2>
                                <input type="hidden" name="capcode" value="<%=capcode%>"/>
                                </td>
                            </tr>
                             <tr>
       
                                <th>Enter Captcha code:<br/><br/></th>
                                <td><input type="text" name="captchacode" required /><br/><br/></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center"><input style="height:50px;width: 100px; background-color: darkseagreen;color: white;"  type="submit" name="Register"/></td>
                            </tr>
                            </table>
                            </center>
                        
                         </div>
                </div>
                    <%@include file="generalmaster/foot.jsp" %>   
            </div>
        </form>
    </body>
</html>
