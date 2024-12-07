<%@page import="Model.Destination"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Karnataka Bird Sanctuaries</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* Body Styling */
        body {
            
            color: #2e4e1f;
            font-family: 'Arial', sans-serif;
            font-size: 1rem;
            line-height: 1.6;
        }

        /* Hero Section */
        .hero {
            position: relative;
            height: 75vh;
            background: url('https://wallpapercave.com/wp/wp3176779.jpg') no-repeat center center/cover;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
        }

        .hero h1 {
            font-size: 4rem;
            color: white;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.6);
            text-transform: uppercase;
        }

        /* Section Title */
        .section-title {
            font-size: 2.5rem;
            font-weight: 700;
            color: #2c3e50;
            text-align: center;
            margin-top: 2rem;
            margin-bottom: 1rem;
        }

        .section-subtitle {
            text-align: center;
            margin-bottom: 2rem;
            font-size: 1.2rem;
            color: #7f8c8d;
        }

        /* Card and container styling */
        .container-fluid {
            padding: 2rem 0;
        }

        .card {
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            border: none;
            border-radius: 15px;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.1);
        }

        .card-img-top {
            height: 250px;
            object-fit: cover;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
        }

        .card-title {
            font-size: 1.5rem;
            font-weight: bold;
            color: #16a085;
            margin-bottom: 0.5rem;
        }

        .btn-primary {
            background-color: #16a085;
            border: none;
        }

        .btn-primary:hover {
            background-color: #149174;
        }
    </style>
</head>
<body>
    <!-- Hero Section -->
    <%@include file="header1.jsp"%>
    <div class="hero">
        <h1>Explore Karnataka Bird Sanctuaries</h1>
    </div>

    <!-- Destination Section -->
    <div class="container-fluid bg-light">
        <h2 class="section-title">Discover Sanctuaries</h2>
        <p class="section-subtitle">Explore Karnataka's natural habitats for birdwatching and wildlife</p>

        <div class="row justify-content-center">
            <% 
                Registration r = new Registration(session);
                ArrayList<Destination> al = r.get_wildlifeinfo(request.getParameter("animal"));
                Iterator<Destination> it = al.iterator();
                while (it.hasNext()) {
                    Destination s = it.next();
            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card shadow-sm">
                    <img src="<%= s.getDimage() %>" class="card-img-top" alt="<%= s.getDname() %>">
                    <div class="card-body text-center">
                        <h5 class="card-title"><%= s.getDname() %></h5>
                        <p class="card-text">Discover the beauty of <%= s.getDname() %> sanctuary, a haven for bird lovers.</p>
                        <a href="Info.jsp?animalid=<%= s.getId() %>" class="btn btn-primary">Know More</a>
                    </div>
                </div>
            </div>
            <% 
                }
            %>
        </div>
    </div>
     <%@include file="Footer.jsp"%>  
</body>
</html>
