<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="Model.Package"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap" rel="stylesheet">

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <title>Package Details</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://www.pixelstalk.net/wp-content/uploads/2016/08/Wildlife-Wallpaper-Download-Free.jpg'); /* Background image */
            background-size: cover;
            background-position: center;
            background-attachment: fixed; /* Fixed background effect */
            color: #637654;
        }
        .container {
            margin-top: 50px;
            background-color: rgba(255, 255, 255, 0.8); /* Slightly transparent white */
            padding: 20px;
            border-radius: 10px;
        }
        .destination-card {
            background-color: rgba(0, 0, 0, 0.6); /* Transparent black background */
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
             margin-top: 200px; 
            margin-left: auto; /* Center horizontally */
            margin-right: auto; /* Center horizontally */
            width: 60%; /* Adjust width to center it well */
            text-align: center; /* Align text to the center */
        }
        .destination-info {
            padding: 20px;
        }
        .destination-info h1 {
            font-size: 28px;
            font-weight: 600;
            margin-bottom: 15px;
            color: #ff523b;
        }
        .category, .description {
            margin-bottom: 10px;
            font-size: 16px;
            color: #fff; /* White text on dark background */
        }
        .category strong, .description strong {
            color: #ff523b;
        }
        .book-btn {
            background: #ff523b;
            color: #fff;
            padding: 10px 30px;
            border-radius: 30px;
            text-decoration: none;
            transition: background 0.3s;
            display: inline-block;
            margin-top: 20px;
        }
        .book-btn:hover {
            background: #ff2a00;
        }
        img {
            padding-left: 0;
            border-radius: 10px; /* Rounded corners */
            width: 100%;
            height: auto;
        }
    </style>
</head>
<body>

    <% 
        Registration r1 = new Registration(session);
        ArrayList<Package> ar = r1.getPackageinfo(request.getParameter("animalname"));
        Iterator<Package> itr = ar.iterator();
        while (itr.hasNext()) {
            Package s = itr.next();
    %>
        <div class="row destination-card">
            <div class="col-md-12">
                <h1>Package Details</h1>
                <p class="category"><strong>Package Amount:</strong> <%= s.getPamount() %></p>
                <p class="category"><strong>Season To Visit:</strong> <%= s.getSeason_to_visit() %></p>
                <p class="category"><strong>Famous For:</strong> <%= s.getFamous_for() %></p>
                <p class="category"><strong>Transportation:</strong> <%= s.getTransport_info() %></p>
                <p class="category"><strong>Places To Visit:</strong> <%= s.getPlaces_to_visit() %></p>

                <% if (session.getAttribute("uname") != null) { %>
                    <a href="Booking.jsp?Package_id=<%= s.getPid() %>" class="book-btn">Book Now</a>
                <% } else { 
                    session.setAttribute("logoutredirect", "Home.jsp?Wildlifecategory=" + request.getParameter("animal"));
                %>
                
                    <a href="Login.jsp" class="book-btn">Book Now</a>
                <% } %>
            </div>
        </div>
    <% } %>

</body>
</html>
