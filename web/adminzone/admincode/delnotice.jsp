<%@page import="mypack.DBManager"%>
<%
String id=request.getParameter("id");
String q="delete from notice where id='"+id+"'";
DBManager db=new DBManager();
String msg=(db.executeNonQuery(q)==true)?"Notification is deleted":"Notification is not deleted";
out.print(db.getAlert(msg, "../welcomeadmin.jsp"));
%>