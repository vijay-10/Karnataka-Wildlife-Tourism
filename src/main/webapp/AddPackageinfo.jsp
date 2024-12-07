<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="Model.Package"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width">
    <title>Karnataka Wildlife Tourism - Add Package</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-image: url('https://getwallpapers.com/wallpaper/full/2/4/f/91822.jpg');
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

        

        
.container {
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin-left: auto;
            margin-right: auto;
            width: 60%;
            text-align: center;
        }

        .field input {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 5px;
            margin-bottom: 20px;
            font-size: 16px;
            background-color: transparent;
            color :White;
        }

        .field input::placeholder {
            font-style: italic;
            
        }

        .btn-layer {
            background-color: #28a745;
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            transition: all 0.4s ease;
        }

        .btn:hover .btn-layer {
            background-color: #218838;
        }

     .btn input {
            background-color: transparent;
            color: white;
            border: none;
            font-size: 18px;
            padding: 10px 20px;
            cursor: pointer;
            
        }

        .btn {
            position: relative;
            overflow: hidden;
            display: inline-block;
            background-color:  #ff523b;
            border-radius: 5px;
        }

        h2 {
            color: #007bff;
            text-transform: uppercase;
            letter-spacing: 1.5px;
            font-weight: bold;
        }

        .container {
            position: relative;
            z-index: 1;
        }

        .overlay {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.4);
            z-index: -1;
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
        
    </style>
</head>

<body>
   
    <div class="container">
         <center>
            <% if (request.getAttribute("status") != null) { %>
                <div id="msg"><%=request.getAttribute("status")%></div>
            <% } %>
        </center>
                <form action="register" class="signup" method="post">
                    <h2 class="text-center mb-4">Add Wildlife Tourism Package</h2>

                    <div class="field">
                        <input type="text" placeholder="Destination Name" required name="name">
                    </div>
                    <div class="field">
                        <input type="text" placeholder="Package Amount" required name="amount">
                    </div>
                    <div class="field">
                        <input type="text" placeholder="Best Season to Visit" required name="season">
                    </div>
                    <div class="field">
                        <input type="text" placeholder="Famous For" required name="famousfor">
                    </div>
                    <div class="field">
                        <input type="text" placeholder="Transportation Information" required name="transportation">
                    </div>
                    <div class="field">
                        <input type="text" placeholder="Nearby Places to Visit" required name="placestovisit">
                    </div>

                    <div class="field btn">
                        <button name="addpackage">Submit</button>
                    </div>
                </form>
            </div>
     

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
