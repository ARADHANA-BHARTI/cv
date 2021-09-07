<%@ page import="java.sql.*" %>
<% 
    try
    {
      String userid=request.getParameter("uname");
      String pass=request.getParameter("pwd");
      
               Class.forName("oracle.jdbc.driver.OracleDriver");
             Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
    
             Statement st=con.createStatement();
             ResultSet rs;
             rs=st.executeQuery("select * from voters WHERE username='"+userid + "' and password='"+pass+"'");
             if(rs.next())
             {
           
             
             
             
             //response.sendRedirect("home1.jsp");
             session.setAttribute("userid",userid);
             out.println("<a href='home1.jsp'>click me</a>\n\nwelcome\n\n\n"+userid);
             
             
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