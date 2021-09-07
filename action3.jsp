<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%
    String state=request.getParameter("state");
    String Vid=request.getParameter("vid");
     String fname=request.getParameter("fname");
      String lname=request.getParameter("lname");
    String email=request.getParameter("email");
     String mobile=request.getParameter("mobile");
      String gender=request.getParameter("gender");
    String address=request.getParameter("address");
     String aadhar_number=request.getParameter("Anumber");
    String username=request.getParameter("uname");
    String pass=request.getParameter("pwd");
     String Constituency=request.getParameter("constituency");
     String myloc=request.getParameter("images"); 
     File image= new File(myloc);
     
        //out.print("First Name :"+fname+"myloc="+myloc);

 try
 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
    FileInputStream fis=new FileInputStream(image);
   PreparedStatement ps=con.prepareStatement("insert into voters values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
   ps.setString(1, state);
   ps.setString(2, Vid);
   ps.setString(3, fname);
   ps.setString(4, lname);
   ps.setString(5, email);
   ps.setString(6, mobile);
   ps.setString(7, gender);
   ps.setString(8, address);
   ps.setString(9, aadhar_number);
   ps.setString(10, username);
   ps.setString(11, pass);
   ps.setString(12, Constituency);
   fis=new FileInputStream(image);
ps.setBinaryStream(13, (InputStream) fis, (int) (image.length()));
     int x=ps.executeUpdate();
   if(x!=0)
   {
   out.print("signup successfully...");
}
else
{
out.print("something went wrong");
}
   
}
catch(Exception e)
{
out.print(e);
}



%>


   
   
    
  