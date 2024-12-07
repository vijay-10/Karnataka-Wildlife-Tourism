<%@page import="Model.Destination"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Karnataka Wildlife Tourism</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <style>
        /* General body styling */
        body {
          background-color:#f1f8e9;
            color: #4a4a4a;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        /* Hero Section */
        .hero {
            position: relative;
            height: 80vh;
            background: url('https://blog-assets.thedyrt.com/uploads/2020/06/shutterstock_360314183-1.jpg') center/cover no-repeat;
        }

        .hero-title {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            font-size: 4rem;
            color: #fff;
            font-weight: bold;
            text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.5);
        }

        /* Section Title */
        .section-title {
            color: #2c3e50;
            text-align: center;
            font-size: 2.5rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        .section-subtitle {
            text-align: center;
            margin-bottom: 2rem;
            color: #7f8c8d;
        }

        /* Cards and container */
        .container-fluid {
            padding-top: 3rem;
            padding-bottom: 3rem;
        }

        .card {
            transition: transform 0.3s, box-shadow 0.3s;
            border-radius: 15px;
        }

        .card:hover {
            transform: translateY(-10px);
            box-shadow: rgba(0, 0, 0, 0.2) 0px 10px 20px;
        }

        .card-img-top {
            height: 300px;
            border-top-left-radius: 15px;
            border-top-right-radius: 15px;
            object-fit: cover;
        }

        .card-title {
            font-size: 1.5rem;
            color: #16a085;
            margin-bottom: 1rem;
        }

        .btn-primary {
            background-color: #16a085;
            border-color: #16a085;
        }

        .btn-primary:hover {
            background-color: #149174;
            border-color: #149174;
        }

        /* Animation */
        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
            }
        }

        .fadeIn {
            animation: fadeIn 2s ease-in-out;
        }
    </style>
</head>
<body>
<%@include file="header1.jsp"%> 
    <!-- Hero Section -->
    <section class="hero">
        <div class="hero-title">Karnataka Wildlife</div>
    </section>

    <!-- Destination Section -->
    <div class="container-fluid text-center bg-light fadeIn">
        <h1 class="section-title">Explore Wildlife Destinations</h1>
        <p class="section-subtitle">Discover the beauty of nature and wildlife in Karnataka's national parks and reserves.</p>

        <div class="row justify-content-center">
            <% 
                Registration r = new Registration(session);
                ArrayList<Destination> al = r.get_wildlifeinfo(request.getParameter("animal"));
                Iterator<Destination> it = al.iterator();
                while (it.hasNext()) {
                    Destination s = it.next();
            %>
            <div class="col-lg-3 col-md-4 col-sm-6 mb-4">
                <div class="card h-100 shadow-sm">
                    <img src="<%= s.getDimage() %>" class="card-img-top" alt="<%= s.getDname() %>">
                    <div class="card-body text-center">
                        <h5 class="card-title"><%= s.getDname() %></h5>
                        <p class="card-text">Explore the wildlife of <%= s.getDname() %> and get close to nature.</p>
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
