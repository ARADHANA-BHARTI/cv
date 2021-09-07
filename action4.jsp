<%@ page import="java.sql.*" %>
<% 
    try
    {
      String username=request.getParameter("uname");
      String pass=request.getParameter("upass");
      
               Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
    
             Statement st=con.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from parties WHERE username='"+username+ "' and password='"+pass+"'");
             if(rs.next())
             {
           
             
             session.setAttribute("username",username);
             out.print("login success");
             
             
            }
                      else
                   {
                    out.println("Invalid password <a href='index.html'>try again</a>");
            }
            }
                  catch(Exception e)
                    {
                    out.println(e);
                    }

                 %>        