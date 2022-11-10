<%@page import="java.sql.ResultSet"%>
<%@page import="mypack.DBManager"%>
<%
   String userid=request.getParameter("userid");
   String password=request.getParameter("password");
   DBManager db=new DBManager();
   String query="select usertype from login where userid='"+userid+"' and password='"+password+"'";
   ResultSet rs=db.getRecord(query);
   if(rs.next()==true)
   {
       String usertype=rs.getString(1);
       if(usertype.equals("user"))
       {
            // out.println("<script>alert('welcome to user zone');</script>");
           session.setAttribute("uid", userid);
           String q="select studentname from studentinfo where contactno='"+userid+"'";
           ResultSet rsname=db.getRecord(q);
           String name="";
           if(rsname.next())
           {
               name=rsname.getString(1);
           }
           session.setAttribute("uname", name
           );
           response.sendRedirect("../userzone/welcomeuser.jsp");
       }
       else if(usertype.equals("admin"))
       {
            // out.println("<script>alert('welcome to admin zone');</script>");
           session.setAttribute("aid", userid);
           response.sendRedirect("../adminzone/welcomeadmin.jsp");
       }
   }
   else
   {
         out.println("<script>alert('invalid user');window.location.href='../login.jsp';</script>");
   }
%>