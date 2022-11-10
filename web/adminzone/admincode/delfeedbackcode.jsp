<%@page import="mypack.DBManager"%>
<%
String id=request.getParameter("id");
String q="delete from feedback where id='"+id+"'";
DBManager db=new DBManager();
String msg=(db.executeNonQuery(q)==true)?"feedback is deleted":"feedback is not deleted";
out.print(db.getAlert(msg, "../feedbackmgmt.jsp"));
%>
