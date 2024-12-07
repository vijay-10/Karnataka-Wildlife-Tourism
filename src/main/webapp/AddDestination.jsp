<%@page import="Model.Destination"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Karnataka Wildlife Tourism - Add Destination</title>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
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

<div class="container">
    <center>
        <%
            if (request.getAttribute("status") != null) {
        %>
        <div id="msg">
            <%=request.getAttribute("status")%>
        </div>
        <%
            }
        %>
    </center>
    <div class="signup-container">
            <form action="register" class="login" method="post">
                <h2>Add Destination</h2>
                   
                <!-- Destination Category Dropdown -->
               
                <div class="field">
                    <select required name="category">
                        <option value="" disabled selected>Destination Category</option>
                        <option value="National Park">National Park</option>
                        <option value="Wildlife Sanctuary">Wildlife Sanctuary</option>
                        <option value="Bird Sanctuary">Bird Sanctuary</option>
                    </select>
                </div>
              
                <!-- Destination Name Field -->
                <div class="field">
                    <input type="text" placeholder="Destination Name" required name="name">
                </div>
             
                <!-- Destination Image Field -->
                <div class="field">
                    <input type="text" placeholder="Destination Image URL" required name="image">
                </div>
                
                <!-- Destination Info Field -->
                <div class="field">
                    <input type="text" placeholder="Destination Info" required name="info">
                </div>
                
                <!-- Submit Button -->
                <div class="field btn">
                    <button name="adddestination">Submit</button>
                </div>
            </form>
        </div>
    </div>


<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>

</body>
</html>
