<%@page import="mypack.DBManager"%>
<%
    String oldpass=request.getParameter("oldpass").trim();
    String newpass=request.getParameter("newpass").trim();
    String cpass=request.getParameter("cpass").trim();
    String q="update login set password='"+newpass+"'where userid='"+session.getAttribute("uid") +"'and password='"+oldpass+"' ";
   String msg="";
    if(newpass.equals(cpass))
    {
        DBManager db=new DBManager();
        msg=(db.executeNonQuery(q)==true)?"Password is changed":"old password is not matched";
    }
    else
    {
        msg="Password is not confirmed";
    }
 %>
 <script>
     alert('<%=msg%>');
     window.location.href='../changepwd.jsp';
     </script>