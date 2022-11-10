<%@page import="mypack.DBManager"%>
<%
    String feedback=request.getParameter("feedback");
    String name=session.getAttribute("uname")+"";
    DBManager db=new DBManager();
    String dt=db.getCurrentDate();
    String query="insert into feedback(name,ftext,dt)values('"+name+"','"+feedback+"','"+dt+"')";
    String msg=(db.executeNonQuery(query)==true)?"Feedback is submitted":"Feedback is not submitted";
   out.print( db.getAlert(msg, "../feedback.jsp"));
    
    %>