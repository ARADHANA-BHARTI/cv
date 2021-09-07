<%-- 
    Document   : Adlogin
    Created on : 17-Jan-2021, 6:00:39 pm
    Author     : rajbi
--%>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin login Page</title>
        <style>
            .form{
                text-align:center;
                padding:10px;
                background-color:none;
                color: black;
                width:50%;
                height: 100%;
                
                
            }
            .div3{
                width:-50%;
                hieght:auto;
                 text-shadow:2px 2px 3px yellow ;
                text-align:center;
                
                   
                
            }
            .input{
                color:#ff33ff;
                padding: 15px;
                
            }
            .button{
                color: #ffff99;
                    background-color:rgba;
                    
            }
            .a:hover{
                opacity:0.5;
                color:greenyellow;
                background-color: #ff3333;
            }
            </style>
    </head>
    <body>
        
        
        <div class="div3"><h1>Admin Login<h1></div>
                <div class="form"><form action="action1.jsp">
                        username:<input type="password" name="uname"><br><br>
                        Password:<input type="password" name="pwd"><br><br>
                    <input type="reset" value="Reset">
                        <input type="submit" value="Login">
            
            </form>
            
                
                
                   
        </div>
    </body>
</html>
