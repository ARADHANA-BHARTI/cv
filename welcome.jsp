<%@ page import="java.util.*" %>
<html>
    <head>
        <title>welcome page</title>
        <style>
            body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: none;
}

.topnav a {
  float: left;
  color: black;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #4CAF50;
  color: white;
}
</style>
    </head>
    <body>
    <center>
        <h1 style="color:#999900">Welcome Admin page</h1>
    </center>
    
    <div class="topnav">
        <b> <a href="home">Home</a>
            <a href="viewvotersdata.jsp">view voters</a>
            <a href="viewpartiesdata.jsp">view parties</a>
            <a href="viewcandidatesdata.jsp">view candidates</a>
            <a href="retrievecount.jsp">view votes</a>
            <a href="index.html">logout</a></b>
            
        </div>
    </body>
</html>
