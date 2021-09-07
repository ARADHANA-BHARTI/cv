<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>

    <html>
    <head>
    <title>view count page</title>
    </head>
            <body>
    <h1> view votingcount details</h1>
    <table border="1">
    <tr>
    <td>party name</td>
    <td>username</td>
     
    </tr>
    
    <%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
 Statement st=con.createStatement();
 
 ResultSet rs=null;
String sql="select*from votingcount";
 rs=st.executeQuery(sql);
 
 while(rs.next())
 {
 %>
    <tr>
        
<td><%=rs.getString("select_party") %></td>
<td><%=rs.getString("username") %></td>
</tr>
<%
    }
    con.close();
    rs.close();
    
    }
    catch(Exception e)
    {
      out.print(e);
      }
%>
</table>
            </body> 
    </html>
       