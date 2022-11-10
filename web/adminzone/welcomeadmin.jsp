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
       <form action="admincode/notificationcode.jsp" method="post">
         <div id="outer">
             <%@include file="adminheader.jsp" %>
            <div id="container">
                <br/>
                     <center><div id="en" style="height:800px;width:600px;margin-top: 50px; background-color:yellowgreen;box-shadow:2px 2px 25px black;">
                             <br>
                             <h1>Notification Form</h1>
                    <hr/><br>
                    <table cellspacing="5" cellpadding="5"style="text-align: center;">
                        <tr>
                            <td colspan="2">Enter Notification Text</td>
                        </tr>
                        <tr>
                            <td>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                                <textarea name="notice"required=""style="height: 100px;width: 300px;resize: none;"></textarea>
                            </td>
                            
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td><input style="height:50px;width: 150px; background-color: green;color: white;"type="submit" value="Add Notification"</td>
                        </tr>
                        
                    </table>
                    <br><br>
                    <table border="1px" cellspacing="3" cellpadding="3" style="margin: 0px auto; width: 70%;text-align: center;">
                        <tr>
                            <th>SNo.</th>
                            <th>Notification Text</th>
                            <th>Notification date</th>
                            <th>Delete</th>
                        </tr>
                        <%
                        DBManager db=new DBManager();
                        String q="select * from notice";
                        ResultSet rs=db.getRecord(q);
                        int n=1;
                        while(rs.next())
                        {
                        %>
                        <tr>
                            <td><%=n%></td>
                            <td><%=rs.getString(2)%></td>
                            <td><%=rs.getString(3)%></td>
                            <td><a href="admincode/delnotice.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
                        </tr>
                        <%
                        n++;}
                        %>
                        
                    </table>
                         </div>
                </center>
            </div>
             <%@include file="adminfooter.jsp" %>
        </div>
        </form>
    </body>
</html>
