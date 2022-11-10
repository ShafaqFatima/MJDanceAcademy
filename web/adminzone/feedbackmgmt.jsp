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
        <form>
         <div id="outer">
             <%@include file="adminheader.jsp" %>
             <div id="container">
                 <br>
                  <center><div id="en" style="height:800px;width:600px;margin-top: 50px; background-color:yellowgreen;box-shadow:2px 2px 25px black;">
                 <br/>
                          <h1 style="text-align: center;">Feedback Management</h1> <hr/> 
                 <br/>
                 <table border="1px solid" cellspacing="5" cellpadding="5" style="margin: 0px auto; width: 90%;text-align: center;">
                     <tr>
                         <th>SNo.</th>
                         <th>Name</th>
                         <th>Feedback text</th>
                          <th>Date</th>
                         <th>Delete</th>
                     </tr>
                     <%
                     String q="select * from feedback";
                     DBManager db=new DBManager();
                     ResultSet rs=db.getRecord(q);
                     int n=1;
                     while(rs.next())
                     {
                     %>
                     <tr>
                         <td><%=n%></td>
                         <td><%=rs.getString(2)%></td>
                         <td><%=rs.getString(3)%></td>
                         <td><%=rs.getString(4)%></td>
                         <td><a href="admincode/delfeedbackcode.jsp?id=<%=rs.getInt(1) %>">Delete</a></td>
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
