
        <%@ page import="java.sql.*" %>
        <%@ page import="java.io.*" %>
         <%
        String name=request.getParameter("name");
        try{
           // String username = request.getParameter("username");
           

            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("Jdbc:oracle:thin:@localhost:1521:xe","system","jyoti");

            String sql=null;
            
            sql="select image from parties where username=?"; //for retriving user image

           
             PreparedStatement pst = con.prepareStatement(sql);
          
              pst.setString(1,name);
             
              ResultSet rs= pst.executeQuery();

            if(rs.next()){
                Blob blob = rs.getBlob(1);
                
                byte byteArray[] = blob.getBytes(1,(int)blob.length());
                response.setContentType("image/gif");
                OutputStream os = response.getOutputStream();
                os.write(byteArray);
                os.flush();
                os.close();
            }
            rs.close();  	
            con.close();
              }
            catch(Exception e){
            out.println(e);
            
            }

        %>
       
            
