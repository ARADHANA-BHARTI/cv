<%@ page import="java.sql.*" %>
<%
    
            String select_party=request.getParameter("select party");
            String username=request.getParameter("uname");
             try
 {
 Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
     PreparedStatement ps=con.prepareStatement("insert into votingcount values(?,?)");
       ps.setString(1, select_party);
   ps.setString(2, username);
   int x=ps.executeUpdate();
   if(x!=0)
   {
   out.print("your voting is completed...");
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


}