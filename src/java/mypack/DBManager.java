package mypack;

import java.sql.*;
import java.text.SimpleDateFormat;

public class DBManager {

    public DBManager() throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
    }
    /* this method is used to get connection */

    public Connection getCon() {
        try {
            return DriverManager.getConnection("jdbc:mysql://localhost:3306/mjdance", "root", "");
        } catch (Exception e) {
            return null;
        }
    }
    /*this method is used to insert,update and delete record in database */

    public boolean executeNonQuery(String sql) {
        try {

            PreparedStatement ps = getCon().prepareStatement(sql);
            int n = ps.executeUpdate();
            return (n > 0) ? true : false;
        } catch (Exception e) {
            return false;
        }
    }
    /* this method is used to select record from databse*/

    public ResultSet getRecord(String sql) {
        try {
            PreparedStatement ps = getCon().prepareStatement(sql);
            return ps.executeQuery();
        } catch (Exception e) {
            return null;
        }
    }
    /* this method is used to get current date*/
    public String getCurrentDate()
    {
        java.util.Date d=new java.util.Date();
       // SimpleDateFormat sdf=new SimpleDateFormat("dd/MMMM/yyyy hh:mm:ss a");
          SimpleDateFormat sdf=new SimpleDateFormat("dd/MM/yyyy");
        return sdf.format(d);
    }
    //this method is used to get alert
    public String getAlert(String msg,String pagename)
    {
        String str="<script>alert('"+msg+"');window.location.href='"+pagename+"';</script>";
        return str;
        
    }
}

