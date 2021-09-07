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
            .img{
                
            }
        </style>
    </head>
    <body>
        
    <center>
        <h1>Candidate Registration Form </h1>
        <form action="action">
            <table>
                <tr>
                    <td>select Party</td>
                    <td><select name="select part"> <option value="select party..." selected disabled>select party...</option>
                
<option value="BJP">BJP</option>
<option value="CONGRESS">CONGRESS</option>
<option value="BSP">BSP</option>
<option value="LJP">LJP</option>
<option value="NDA">NDA</option></td>
                    
                    <tr>
                        <td>Candidate Id</td>
                        <td><input type="text" name="cid"></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname"></td>
                            
                    </tr>
                    
                    <tr>
                        <td> Last Name</td>
                        <td><input type="email" name="lname"></td>
                    </tr>
                    <tr>
                        <td> Email</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    
                    <tr>
                        <td> Mobile</td>
                        <td><input type="text" name="mobile"></td>
                    </tr>
                    <tr>
                        <td>Adress</td>
                        <td><input type="text" name="Adress"></td>
                    </tr>
                    <tr>
                        <td>Gender</td>
                        <td><select name="gender"> <option value="choose Gender..." selected disabled>choose a gender...</option>
                                <option>Male</option>
                                <option>Female</option>
                                <option>Transgender</option>
                                <optgroup
                                
                            </select></td>
                    </tr>
                    
                    <tr><td>Username </td>
                        <td><input type="text" name="uname">
                        
                       </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="pwd"></td>
                    </tr>
                    
                    <tr>
                        <td>Aadhar number</td>
                        <td><input type="text" name="aadhar"></td>>
                        
                    </tr>
                    <tr><td>Constituency</td>
                        <td><input type="text" name="constituency">
                    </tr>
                    <tr>
                        <td>Select image</td>
                        <td><input type="file" name="images" accept="image/png,image/jpeg" multiple="multiple"></td>
                        <td><input type="submit"  name="upload" value="upload file"></td>
                    </tr>
                    
                    <tr>
                    
                        <td><input type="submit" value="Register"></td>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
               
            </table>

        </form>
        </center>
    </body>
</html>
