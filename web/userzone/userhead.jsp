<%@page import="mypack.DBManager"%>
<div id="uheader">
    <div id="ulogo">
        <img src="../images/mj.jpg" height="100px" width="100px"/>
    </div>
    <div id="utitle">
        
        <h1 style="font-weight: bolder;font-size: 30px;margin-left: 10px;"> MJ ACADEMY </h1>
    </div>
</div>
<div id="udetails">
    <div id="ld">
        <div id="id">
            <%DBManager db = new DBManager();
            %>
            <%=db.getCurrentDate()%>
        </div>
    </div>
    <div id="rd">
        Welcome !!
        <%=session.getAttribute("uname")%>

    </div>
</div>
<div id="umenu">
    <ul>
        <li><a href="welcomeuser.jsp">TIME TABLE</a></li>
        <li><a href="video.jsp">VIDEOS</a></li>
        <li><a href="needhelp.jsp">NEED HELP?</a></li>
        <li><a href="notice.jsp">NOTICE</a></li>
        <li><a href="changepwd.jsp">CHANGE PASSWORD</a></li>
         <li><a href="logout.jsp">LOGOUT</a></li>
    </ul> 
</div>
       


   
