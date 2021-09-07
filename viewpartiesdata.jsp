<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>

    <html>
    <head>
    <title>view data of parties</title>
    <style>
        .div1{
            height:100px;
            width:150px;
            border:1px solid black;
            
        }
        img{
            width:100%;
            height:100%;
        }
    </style>
            </head>
            <body>
    <h1> view party details</h1>
    <table border="1">
    <tr>
    <td>Party Id</td>
    <td>Party Name</td>
    <td>Party Email id</td>
    <td> Party Mobile number</td>
    <td>Party Address</td>
    <td>Username</td>
    <td>Image</td>
    
    </tr>
    
    <%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
 Statement st=con.createStatement();
 
 ResultSet rs=null;
String sql="select*from parties";
 rs=st.executeQuery(sql);
 
 while(rs.next())
 {
 %>
    <tr>
        
<td><%=rs.getString("party_id") %></td>
<td><%=rs.getString("party_name") %></td>
<td><%=rs.getString("party_email") %></td>
<td><%=rs.getString("party_mobile") %></td>
<td><%=rs.getString("party_address") %></td>
<td><%=rs.getString("username") %></td>

<td><div class="div1"><IMG src="showparty.jsp?name=<%= rs.getString("username")%>"></div></td>
    
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
       
    