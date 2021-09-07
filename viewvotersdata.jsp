<%@ page import="java.sql.*" %>
<%@ page import="java.io.*"%>

    <html>
    <head>
    <title>view data of voters</title>
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
    <h1> view voters details</h1>
    <table border="1">
    <tr>
    <td>voter id</td>
    <td>first name</td>
    <td>last name</td>
    <td>email id</td>
    <td>mobile number</td>
    <td>gender</td>
    <td>address</td>
    <td>aadhar number</td>
    <td>username</td>
    <td>constituency</td>
    
    <td>image</td>
    
    </tr>
    
    <%
try{
 Class.forName("oracle.jdbc.driver.OracleDriver");
 Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
 Statement st=con.createStatement();
 
 ResultSet rs=null;
String sql="select*from voters";
 rs=st.executeQuery(sql);
 
 while(rs.next())
 {
 %>
    <tr>
        
<td><%=rs.getString("voter_id") %></td>
<td><%=rs.getString("first_name") %></td>
<td><%=rs.getString("last_name") %></td>
<td><%=rs.getString("email") %></td>
<td><%=rs.getString("mobile") %></td>
<td><%=rs.getString("gender") %></td>
<td><%=rs.getString("address") %></td>
<td><%=rs.getString("aadhar_number") %></td>
<td><%=rs.getString("username") %></td>
<td><%=rs.getString("constituency") %></td>
<td><div class="div1"><IMG src="showvoters.jsp?name=<%= rs.getString("username")%>"> </div></td>
    
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
       
    