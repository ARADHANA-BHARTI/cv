<%-- 
    Document   : vreg.jsp
    Created on : 17-Jan-2021, 9:21:56 pm
    Author     : rajbi
--%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>voter registration page</title>
        <style>
            h1{
                color:red;
                text-shadow:none;
                font-size: 25pt;
            }
            form{
                color:#660066;
                border:none;
                font-size: 15pt;
                
            }
            
            button{
                color:blue;
            }
        </style>
    </head>
    <body>
    <center>
        <h1>Party Registration Form</h1>
        <form action="action5.jsp">
            <table>
                
                  
                        
                
                
                    <tr>
                        <td>Party Id</td>
                        <td><input type="text" name="pid"></td>
                    </tr>
                    <tr>
                        <td>Party Name</td>
                        <td><input type="text" name="pname"></td>
                            
                    </tr>
                    
                    <tr>
                        <td> Party Email</td>
                        <td><input type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td> party Mobile</td>
                        <td><input type="text" name="mobile"></td>
                    </tr>
                    
                    <tr>
                        <td> Party Address</td>
                        <td><input type="text" name="address"></td>
                    </tr>
                    <tr>
                        <td>Aadhar Number</td>
                        <td><input type="text" name="Anumber"></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="uname"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="upass"></td>
                    </tr>
                    <tr>
                        <td>Party Symbol</td>
                        <td><input type="file" name="images" accept="image/png,image/jpeg" multiple="multiple"></td>
                        <td><input type="submit"  name="upload" value="uploadfile"></td>
                    </tr>
                    v
                    
                    
                    <tr>
                        <td><input type="submit" value="Register"></td>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
                
            </table>

        </form>
        </center>
    </body>
</html>
