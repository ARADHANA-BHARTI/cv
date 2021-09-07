<%!
public void matchValues(String name,String pwd,String dbname,String dbpwd,HttpServletResponse response,HttpSession session)
{
      if(name.equals(dbname)){
          if(pwd.equals(dbpwd)){
             try{
               session.setAttribute("userName",name);
               session.setAttribute("userPass",pwd);
               response.sendRedirect("welcome.jsp");
            }
             catch(Exception e){
                e.printStackTrace();
             }
             
          }
          else{
            try{
               session.setAttribute("passNotfound","invalid password");
               response.sendRedirect("login.jsp");
                
            }
               catch(Exception e){
                  e.printStackTrace();
               }
          }
      }
      else{
         try{
            session.setAttribute("idNotfound","User Id Not Found");
            response.sendRedirect("index.html");
         }
            catch(Exception e){
               e.printStackTrace();
            }
      }
}

%>
<!--importing sql package-->
<%@ page import="java.sql.*" %>

<%
String name = request.getParameter("name");
String uname = request.getParameter("uname");
String pwd =request.getParameter("pwd");


try{
  Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");
   
   String sql="SELECT * FROM admin WHERE uname=?";
   PreparedStatement pst = con.prepareStatement(sql);
 
   pst.setString(1,uname);
   ResultSet rs = pst.executeQuery();
   if(rs.next()){
   String dbUname = rs.getString("uname");
   String dbpwd =rs.getString("pwd");
   matchValues(uname,pwd,dbUname,dbpwd,response,session); 
 
 }

 else{
 
   session.setAttribute("idNotfound","invalid super_admin id");
   response.sendRedirect("index.html");
   
 }
    rs.close();
    con.close();
   
}
   catch(Exception e){
      out.println(e);
   }
%> 


