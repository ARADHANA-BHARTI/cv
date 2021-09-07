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
        <h1>Voter Registration form</h1>
        <form action="action3.jsp">
            <table>
                
                    <tr>
                        <td>Select State</td>
                        
                    
                        <td><select name="state"> <option value="select state..." selected disabled>select state...</option>

<option value="Andhra Pradesh">Andhra Pradesh</option>
<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
<option value="Arunachal Pradesh">Arunachal Pradesh</option>
<option value="Assam">Assam</option>
<option value="Bihar">Bihar</option>
<option value="Chandigarh">Chandigarh</option>
<option value="Chhattisgarh">Chhattisgarh</option>
<option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
<option value="Daman and Diu">Daman and Diu</option>
<option value="Delhi">Delhi</option>
<option value="Lakshadweep">Lakshadweep</option>
<option value="Puducherry">Puducherry</option>
<option value="Goa">Goa</option>
<option value="Gujarat">Gujarat</option>
<option value="Haryana">Haryana</option>
<option value="Himachal Pradesh">Himachal Pradesh</option>
<option value="Jammu and Kashmir">Jammu and Kashmir</option>
<option value="Jharkhand">Jharkhand</option>
<option value="Karnataka">Karnataka</option>
<option value="Kerala">Kerala</option>
<option value="Madhya Pradesh">Madhya Pradesh</option>
<option value="Maharashtra">Maharashtra</option>
<option value="Manipur">Manipur</option>
<option value="Meghalaya">Meghalaya</option>
<option value="Mizoram">Mizoram</option>
<option value="Nagaland">Nagaland</option>
<option value="Odisha">Odisha</option>
<option value="Punjab">Punjab</option>
<option value="Rajasthan">Rajasthan</option>
<option value="Sikkim">Sikkim</option>
<option value="Tamil Nadu">Tamil Nadu</option>
<option value="Telangana">Telangana</option>
<option value="Tripura">Tripura</option>
<option value="Uttar Pradesh">Uttar Pradesh</option>
<option value="Uttarakhand">Uttarakhand</option>
<option value="West Bengal">West Bengal</option>
                            </select></td>


                    </tr>
                
                
                    <tr>
                        <td>Voter Id</td>
                        <td><input type="text" name="vid"></td>
                    </tr>
                    <tr>
                        <td>First Name</td>
                        <td><input type="text" name="fname"></td>
                            
                    </tr>
                    <tr>
                        <td>Last Name</td>
                        <td><input type="text" name="lname"></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email"></td>
                    </tr>
                    <tr>
                        <td>Mobile</td>
                        <td><input type="text" name="mobile"></td>
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
                    <tr>
                        <td>Address</td>
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
                        <td><input type="password" name="pwd"></td>
                    </tr>
                    <tr>
                        <td>Constituency</td>
                        <td><input type="text" name="constituency"></td>
                    </tr>
                    <tr>
                        <td> Selectimage</td>
                        <td><input type="file" name="images" accept="image/png,image/jpeg" multiple="multiple"></td>
                        <td><input type="submit"  name="upload" value="upload file"></td>
                    </tr>
                    
                    <tr>
                        <td><input type="submit" value="Register"></td>
                        <td><input type="reset" value="Reset"></td>
                    </tr>
                </tbody>
            </table>

        </form>
        </center>
    </body>
</html>
