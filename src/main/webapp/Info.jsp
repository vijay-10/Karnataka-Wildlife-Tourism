<%@page import="Model.Destination"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
    <title>Destination Details</title>
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            background-image: url('https://wallup.net/wp-content/uploads/2016/01/169826-deer-animals-nature-landscape-sunlight-mammals.jpg'); /* Background image */
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
            border-left-width: 10px;
            margin-top: 100px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            padding: 20px;
            margin-bottom: 30px;
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
        Registration r = new Registration(session);
        String animalIdStr = request.getParameter("animalid");
        int animalId = Integer.parseInt(animalIdStr);
        ArrayList<Destination> al = r.get_productinfo1(animalId);
        Iterator<Destination> it = al.iterator();
        while (it.hasNext()) {
            Destination s = it.next(); %>
            <div class="row destination-card">
                <div class="col-md-4">
                    <img src="<%=s.getDimage() %>" alt="<%=s.getDname() %>" class="destination-image">
                </div>
                <div class="col-md-6 destination-info">
                    <h1><%=s.getDname() %></h1>
                    <p class="category"><strong>Category:</strong> <%=s.getDcategory() %></p>
                    <p class="description"><strong>Description:</strong> <%=s.getDinfo() %></p>
                    
                    <a href="PackageInfo.jsp?animalname=<%=s.getDname() %>" class="book-btn">Package Info</a>
                </div>
            </div>
        <% } %>

</body>
</html>
