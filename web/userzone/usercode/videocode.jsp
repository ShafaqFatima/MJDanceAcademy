<%@page import="mypack.DBManager"%>
<%
    String video=request.getParameter("video");
    String name=session.getAttribute("uname")+"";
    DBManager db=new DBManager();
    String dt=db.getCurrentDate();
    String query="insert into video(name,video,dt)values('"+name+"','"+video+"','"+dt+"')";
    String msg=(db.executeNonQuery(query)==true)?"Video is submitted":"Video is not submitted";
   out.print( db.getAlert(msg, "../video.jsp"));
    
    %>