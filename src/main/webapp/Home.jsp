<%@page import="Model.Destination"%>
<%@page import="Model.Registration"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Iterator" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Karnataka Wildlife Tourism</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap" rel="stylesheet">
    <style>
    *{
    margin: 0;
    }
        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f9f9f9;
        }

        

        .hero {
            position: relative;
            width: 100%;
            height: 600px;
            background-size: cover;
            background-position: center;
            display: flex;
            align-items: center;
            justify-content: center;
            color: white;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.7);
            overflow: hidden; /* Ensure the hero section doesn't overflow */
        }

        .hero::after {
            content: "";
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
            border-radius: 15px;
            z-index: 1;
        }

        .hero h1 {
            position: relative;
            z-index: 2;
        }

        .category-title {
            color: #5d7e36;
            font-size: 2.5em;
            text-align: center;
            margin: 20px 0;
        }

        .card {
            border: none;
            border-radius: 15px;
            overflow: hidden;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            height: 100%;
            transition: transform 0.3s, box-shadow 0.3s;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }

        .card img {
            border-radius: 15px 15px 0 0;
        }

        .facilities-title {
            color: #5d7e36;
            font-size: 2.5em;
            text-align: center;
            margin: 40px 0 20px 0;
        }

        footer {
            background-color: #5d7e36;
            color: white;
            text-align: center;
            padding: 15px 0;
            margin-top: 30px;
        }

        .facility-icon {
            font-size: 40px;
            color: #5d7e36;
            margin-bottom: 15px;
        }

        .card-body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 200px;
        }
    </style>
</head>

<body>


 
 
<%@include file="header1.jsp"%> 
 
    <div id="heroCarousel" class="carousel slide" data-ride="carousel" data-interval="2000" data-pause="hover">
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="hero" style="background-image: url('https://i.pinimg.com/736x/23/a9/a3/23a9a3768d56e28c69e427f8dc715965.jpg');">
                    <h1>Discover Karnataka's Wildlife</h1>
                </div>
            </div>
            <div class="carousel-item">
                <div class="hero" style="background-image: url('https://i0.wp.com/kaziranganationalparkassam.in/wp-content/uploads/2021/07/IMG-20210711-WA0007.jpg?ssl=1');">
                    <h1>Experience Nature's Wonders</h1>
                </div>
            </div>
            <div class="carousel-item">
                <div class="hero" style="background-image: url('https://cdn.pixabay.com/photo/2022/10/23/03/45/bird-7540435_1280.jpg');">
                    <h1>Adventure Awaits in Karnataka</h1>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev" href="#heroCarousel" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#heroCarousel" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
        </a>
    </div>


    <div class="container">
        <h2 class="category-title">Explore Categories</h2>
        <div class="row">
            <!-- National Parks -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://stateofwatourism.com/wp-content/uploads/2022/05/olympic-national-park.jpg" class="card-img-top" alt="National Park" height="300px">
                    <div class="card-body">
                        <h5 class="card-title">National Parks</h5>
                        <p class="card-text">Experience the diverse flora and fauna in Karnataka's breathtaking national parks.</p>
                        <a href="Wildlifecategory.jsp?animal=National Park" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
            <!-- Wildlife Sanctuaries -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://tse2.mm.bing.net/th?id=OIP.cAin1t7H_hwrP6uRDV1_bQHaFo&pid=Api&P=0&h=180" class="card-img-top" alt="Wildlife Sanctuary" height="300px">
                    <div class="card-body">
                        <h5 class="card-title">Wildlife Sanctuaries</h5>
                        <p class="card-text">Explore the rich biodiversity and conservation efforts in Karnataka's wildlife sanctuaries.</p>
                        <a href="Wildlifecategory1.jsp?animal=Wildelife Sanctuary" class="btn btn-primary">Learn More</a>

                    </div>
                </div>
            </div>
            <!-- Bird Sanctuaries -->
            <div class="col-md-4">
                <div class="card">
                    <img src="https://www.wallpapertip.com/wmimgs/37-371224_kumarakom-bird-bird-sanctuary-kerala.jpg" class="card-img-top" alt="Bird Sanctuary" height="300px">
                    <div class="card-body">
                        <h5 class="card-title">Bird Sanctuaries</h5>
                        <p class="card-text">Witness the beauty of Karnataka's avian life in its stunning bird sanctuaries.</p>
                        <a href="Wildlifecategory2.jsp?animal=Bird Sanctuary" class="btn btn-primary">Learn More</a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Facilities Section -->
        <h2 class="facilities-title">Facilities Available</h2>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-bed facility-icon"></i>
                        <h5 class="card-title">Accommodation</h5>
                        <p class="card-text">Comfortable lodging options close to the national parks and sanctuaries ensure a pleasant stay.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-utensils facility-icon"></i>
                        <h5 class="card-title">Food</h5>
                        <p class="card-text">Enjoy a variety of local and international cuisines at nearby restaurants and cafes.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-bus facility-icon"></i>
                        <h5 class="card-title">Transport</h5>
                        <p class="card-text">Various transport services are available, including guided tours and rental options.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-user-tie facility-icon"></i>
                        <h5 class="card-title">Mentorship</h5>
                        <p class="card-text">Experienced guides enhance your wildlife experience with their knowledge.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-ambulance facility-icon"></i>
                        <h5 class="card-title">Emergency Services</h5>
                        <p class="card-text">Emergency medical services are readily available for your safety during your visit.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card">
                    <div class="card-body">
                        <i class="fas fa-map-signs facility-icon"></i>
                        <h5 class="card-title">Road Guidance</h5>
                        <p class="card-text">Expert road guidance services help you navigate your journey to the parks and sanctuaries.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h5>Contact Us</h5>
                    <p>Email: info@karnatakawildlifetourism.com</p>
                    <p>Phone: +91 12345 67890</p>
                    <p>Address: Karnataka Wildlife Tourism Office,<br>123 Forest Road, Bengaluru, Karnataka, India</p>
                </div>
                <div class="col-md-4">
                    <h5>Follow Us</h5>
                    <p>
                        <a href="#" class="text-white"><i class="fab fa-facebook-square"></i> Facebook</a><br>
                        <a href="#" class="text-white"><i class="fab fa-twitter"></i> Twitter</a><br>
                        <a href="#" class="text-white"><i class="fab fa-instagram"></i> Instagram</a><br>
                        <a href="#" class="text-white"><i class="fab fa-youtube"></i> YouTube</a>
                    </p>
                </div>
                <div class="col-md-4">
                    <h5>Quick Links</h5>
                    <p>
                        <a href="#" class="text-white">Home</a><br>
                        <a href="#" class="text-white">About</a><br>
                        <a href="#" class="text-white">Services</a><br>
                        <a href="#" class="text-white">Contact</a>
                    </p>
                </div>
            </div>
        </div>
        <div class="text-center" style="padding: 10px;">
            <p>&copy; 2024 Karnataka Wildlife Tourism. All Rights Reserved.</p>
        </div>
    </footer>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.0.7/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script>
        window.onscroll = function() {
            const navbar = document.querySelector('.navbar');
            if (window.pageYOffset > 50) {
                navbar.classList.add('scrolled');
            } else {
                navbar.classList.remove('scrolled');
            }
        };
    </script>
     <script>
        window.addEventListener('scroll', function() {
            var header = document.getElementById('main-header');
            if (window.scrollY > 50) {
                header.classList.add('scrolled');
            } else {
                header.classList.remove('scrolled');
            }
        });
    </script>
</body>

</html>
    