<%@ page import="java.sql.*" %>
<% 
    String partyId=request.getParameter("pid");
    String partyname=request.getParameter("pid");
     String Email=request.getParameter("email");
      String Mobile=request.getParameter("mobile");
    String Address=request.getParameter("address");
     String Aadhar=request.getParameter("Anumber");
      String Username=request.getParameter("uname");
       String pass=request.getParameter("upass");
    
     
     


 try
 {
  Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
   PreparedStatement ps=con.prepareStatement("insert into parties values(?,?,?,?,?,?,?,?)");
   ps.setString(1,partyId);
   ps.setString(2,  partyname);
   ps.setString(3,Email);
   ps.setString(4, Mobile);
   ps.setString(5, Address);
   ps.setString(6,Aadhar );
   ps.setString(7, Username);
   ps.setString(8,pass);
   
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


   
   
    
  