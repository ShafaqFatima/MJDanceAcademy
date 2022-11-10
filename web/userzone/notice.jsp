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
                       <center><h1>NOTICE</h1></center>
                       
<table border="1px" cellspacing="3" cellpadding="3" style="margin: 0px auto; width: 70%;text-align: center;">
                        <tr>
                            <th>SNo.</th>
                            <th>Notification Text</th>
                            <th>Notification date</th>
                            
                        </tr>
                        <%
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
                           
                        </tr>
                        <%
                        n++;}
                        %>
                        
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
