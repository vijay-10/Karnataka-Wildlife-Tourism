<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="Model.Package"%>
<%@ page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>Package Details & Sign Up</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://jooinn.com/images/nature-319.jpg');
            background-size: cover;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 0;
            padding: 0;
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            color: #fff;
        }
        h1, h2 {
            text-align: center;
            color: #ff523b;
            margin-bottom: 20px;
        }
        .destination-card, .signup-container {
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin-left: auto;
            margin-right: auto;
            width: 60%;
            text-align: center;
        }
        .book-btn, .btn {
            background: #ff523b;
            color: #fff;
            padding: 10px 30px;
            border-radius: 30px;
            text-decoration: none;
            transition: background 0.3s;
            margin-top: 20px;
            width: 50%;
            font-size: 16px;
            display: inline-block;
        }
        .book-btn:hover, .btn:hover {
            background: #ff2a00;
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
        .field {
            margin-bottom: 20px;
        }
        .field input {
            width: 50%;
            padding: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .field input:focus {
            border-color: #6a11cb;
            box-shadow: 0 0 5px rgba(106, 17, 203, 0.5);
        }
        .field submit{
        border-color: #6a11cb;	
        
        }
        .pass-link {
            text-align: right;
            margin-bottom: 20px;
        }
        .signup-link {
             
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>

<body>
<%@include file="header1.jsp"%> 
    <div class="signup-container">
        <center>
            <% if (request.getAttribute("status") != null) { %>
                <div id="msg"><%=request.getAttribute("status")%></div>
            <% } %>
        </center>
        <h2>Sign Up</h2>
        <form action="register" method="post" id="signup">
            <div class="field">
                <input type="text" name="name" placeholder="Enter your Name" required>
            </div>
            <div class="field">
                <input type="number" name="phone" placeholder="Enter your Mobile number" required>
            </div>
            <div class="field">
                <input type="text" name="email" placeholder="Email Address" required>
            </div>
            <div class="field">
                <input type="password" name="pw" id="pw" placeholder="Password" required>
            </div>
            <div class="field">
                <input type="password" name="cp" placeholder="Confirm password" required>
            </div>
            <button type="submit" name="register" class="btn bg-primary">Register</button>
        </form>
        <div class="signup-link bg-danger">
            Already a member? <a href="Login.jsp">Login here</a>
        </div>
    </div>

</body>
</html>
