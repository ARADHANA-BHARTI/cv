<%-- 
    Document   : votingform
    Created on : 27-Jan-2021, 2:48:58 pm
    Author     : rajbi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>voting form</title>
    </head>
    <body>
        <h1>for voting process</h1>
    <center>
       <form action="processvotingcount.jsp">
            <table>
                <tr>
                    <td>Select Party </td>
                    <td><select name="select party"> <option value="select party..." selected disabled>select party...</option>
                
<option value="BJP">BJP</option>
<option value="CONGRESS">CONGRESS</option>
<option value="BSP">BSP</option>
<option value="LJP">LJP</option>
<option value="NDA">NDA</option></td>
                    <tr><td>Username </td>
                        <td><input type="password" name="uname" >
                                   
                        
                       </tr>
                       <tr>
                           
                               <td><input type="submit" value="vote"></td>
                       </tr>
            </table> </form> 
                       </center>
    </body>
</html>
