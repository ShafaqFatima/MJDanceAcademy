<%@page import="mypack.DBManager"%>
<%
    String password=request.getParameter("password");
    String confirmpassword=request.getParameter("confirmpassword");
    if(password.equals(confirmpassword))
    {
        String capcode=request.getParameter("capcode");
        String captchacode=request.getParameter("captchacode");
        if(capcode.equals(captchacode))
        {
          String studentname=request.getParameter("studentname");
           String gender=request.getParameter("gender");
            String fathername=request.getParameter("fathername");
             String address=request.getParameter("address");
              
                 
                  String contactno=request.getParameter("contactno");
                   String emailaddress=request.getParameter("emailaddress");
                    String dance=request.getParameter("dance");
                    String status="false";
                    DBManager db=new DBManager();
                    String registrationdt=db.getCurrentDate();
                    String query1="insert into studentinfo values('"+studentname+"','"+gender+"','"+fathername+"','"+address+"','"+contactno+"','"+emailaddress+"','"+dance+"','"+password+"','"+status+"','"+registrationdt+"')";
                    String query2="insert into login values('"+contactno+"','"+password+"','user')";
                    if(db.executeNonQuery(query1)==true)
                    {
                        if(db.executeNonQuery(query2)==true)
                        {
                            out.println("<script>alert('Registration successfull');window.location.href='../index.jsp';</script>");
                        }
                        else
                        {
                            out.println("<script>alert('Login details are not saved');window.location.href='../registration.jsp';</script>");
                        }
                        
                    }
                    else
                    {
                        out.println("<script>alert('registration is not successfull');window.location.href='../registration.jsp';</script>");
                    }
        }
        else
        {
            out.println("<script>alert('Invalid captcha');window.location.href='../registration.jsp';</script>");
        }
                
    }
    else
    {
        out.println("<script>alert('password is not matched');window.location.href='../registration.jsp';</script>");
    }
 %>   