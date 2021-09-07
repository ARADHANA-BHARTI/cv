<%@ page import="java.sql.*" %>
<% 
            String selparty=request.getParameter("select party");
            String candidateid=request.getParameter("cid");
             String firstname=request.getParameter("fname");
              String lastname=request.getParameter("lname");
            String email=request.getParameter("email");
             String mobile=request.getParameter("mobile");

            String address=request.getParameter("Address");
               String gender=request.getParameter("gender");

            String username=request.getParameter("uname");
            String pass=request.getParameter("upass");
            String aadhar_number=request.getParameter("aadhar");
             String Constituency=request.getParameter("constituency");

     


 try
 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
   PreparedStatement ps=con.prepareStatement("insert into candidates values(?,?,?,?,?,?,?,?,?,?,?,?)");
   ps.setString(1, selparty);
   ps.setString(2, candidateid);
   ps.setString(3, firstname);
   ps.setString(4, lastname);
   ps.setString(5, email);
   ps.setString(6, mobile);
   ps.setString(7, address);
   ps.setString(8, gender);
   ps.setString(9, username);
   ps.setString(10, pass);
   ps.setString(11, aadhar_number);
   
   ps.setString(12, Constituency);
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


   
   
    
  