<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Model.Package"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>Delete Destination</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f7f7f7;
             background-image: url('http://wallup.net/wp-content/uploads/2016/01/142387-landscape-animals.jpg' ); /* Background image */
        background-size: cover; }
        .delete-form {
            max-width: 500px;
            margin: 50px auto;
            padding: 30px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .delete-form h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }
        .delete-form label {
            font-weight: 600;
        }
        .delete-form input[type="text"] {
            border-radius: 4px;
        }
        .delete-form input[type="submit"] {
            background-color: #dc3545;
            color: white;
            border: none;
            padding: 10px 20px;
            border-radius: 4px;
            cursor: pointer;
        }
        .delete-form input[type="submit"]:hover {
            background-color: #c82333;
        }
        #msg {
            background: green;
            color: black;
            border: 1px solid red;
            width: 80%;
            font-weight: bold;
            font-size: 25px;
            padding-left: 50px;
            margin-bottom: 20px;
        }
       
        .signup-container {
          background-color: rgba(0, 0, 0, 0.6); /* Transparent black background */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
             margin-top:100px; 
            margin-left: auto; /* Center horizontally */
            margin-right: auto; /* Center horizontally */
            width: 60%; /* Adjust width to center it well */
            text-align: center;
        
        }
    </style>
</head>
<body>
   
        <center>
            <% if (request.getAttribute("status") != null) { %>
                <div id="msg">
                    <%=request.getAttribute("status")%>
                </div>
            <% } %>
        </center>
           <div class="signup-container">
        <div class="delete-form">
            <h2>Delete Destination</h2>
            <form action="register" method="post">
                
                    <label for="destination_name">Destination Name:</label>
                    <input type="text" class="form-control" id="destination_name" name="destination_name" required placeholder="Enter destination name">
                </div>
                <button type="submit" class="btn btn-danger btn-block" name="DeleteDestination">Delete Destination</button>
            </form>
        </div>


    <!-- Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.6/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
