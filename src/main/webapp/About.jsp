<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us - Karnataka Wildlife Tourism</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        /* Custom CSS */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }
        .hero-section {
            background-image: url('http://wallup.net/wp-content/uploads/2016/01/198513-animals-nature.jpg');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
            text-align: center;
            height: 500px;
        }
        .section-title {
            margin-top: 40px;
            margin-bottom: 20px;
        }
        .section-padding {
            padding: 40px 0;
        }
        .btn-primary {
            background-color: #4CAF50;
            border: none;
        }
        .icon-box img {
            width: 50px;
            height: 50px;
            margin-bottom: 15px;
        }
        .testimonial-box {
            border: 1px solid #ddd;
            padding: 20px;
            border-radius: 5px;
            background-color: white;
        }
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        /* Animations */
        .fadeIn {
            animation: fadeInAnimation 1.5s ease-in-out forwards;
            opacity: 0;
        }
        @keyframes fadeInAnimation {
            0% {
                opacity: 0;
                transform: translateY(30px);
            }
            100% {
                opacity: 1;
                transform: translateY(0);
            }
        }
        .circular-img {
            width: 100px;
            height: 100px;
            border-radius: 50%;
            object-fit: cover;
        }
    </style>
</head>
<body>
 <%@include file="header1.jsp"%> 
    <!-- Hero Section -->
    <div class="hero-section">
        <div class="container">
            <h1>Welcome to Karnataka's Wilderness!</h1>
            <p>Experience the beauty and biodiversity of Karnataka's wildlife</p>
            <a href="#offerings" class="btn btn-primary btn-lg">Explore More</a>
        </div>
    </div>

    <!-- About Us Section with Card and Animation -->
    <div class="container section-padding fadeIn">
        <h2 class="section-title text-center">About Us</h2>
        <div class="card shadow fadeIn">
            <div class="card-body">
                <p>At Karnataka Wildlife Tourism, we are passionate about conserving the stunning biodiversity of Karnataka and making it accessible for nature lovers from all around the world.</p>
                <p>Our mission is to provide eco-friendly, responsible, and enriching wildlife experiences, helping you discover the magic of the forests, wildlife sanctuaries, and national parks that make Karnataka unique.</p>
            </div>
        </div>
    </div>

    <!-- Our Story Section with Card and Animation -->
    <div class="container section-padding fadeIn">
        <h3 class="section-title text-center">Our Story</h3>
        <div class="card shadow fadeIn">
            <div class="card-body">
                <p>Karnataka is home to some of the richest ecosystems in India. Since our inception in 2010, we have been at the forefront of wildlife tourism in Karnataka, helping thousands of travelers immerse themselves in the beauty of these pristine landscapes.</p>
                <p>With a team of dedicated conservationists and hospitality experts, we ensure that every visit contributes to wildlife conservation efforts while giving you memories for a lifetime.</p>
            </div>
        </div>
    </div>

    <!-- Sustainability Section with Card and Animation -->
    <div class="container section-padding fadeIn">
        <h3 class="section-title text-center">Our Commitment to Sustainability</h3>
        <div class="card shadow fadeIn">
            <div class="card-body">
                <p>At Karnataka Wildlife Tourism, we are deeply committed to sustainable and responsible tourism. We collaborate with local communities, forest departments, and conservationists to ensure that our activities do not disturb the natural habitats, while contributing to the protection of endangered species.</p>
                <p>We follow the "Leave No Trace" principle, encouraging tourists to respect the environment and minimize human impact on nature.</p>
            </div>
        </div>
    </div>

    <!-- Our Offerings Section with Cards -->
    <div id="offerings" class="container section-padding fadeIn">
        <h3 class="section-title text-center">Our Offerings</h3>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <img src="https://wildkasarwadi.com/assets/uploads/experiences/jungle_safari.jpg" class="card-img-top" alt="Jungle Safaris">
                    <div class="card-body text-center">
                        <h5 class="card-title">Jungle Safaris</h5>
                        <p class="card-text">Explore the untamed beauty of Karnataka’s forests with guided safaris.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <img src="https://wildhawk.in/wp-content/uploads/2019/02/birds-watching.png" class="card-img-top" alt="Bird-Watching Tours">
                    <div class="card-body text-center">
                        <h5 class="card-title">Bird-Watching Tours</h5>
                        <p class="card-text">Join expert ornithologists on bird-watching trails.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow">
                    <img src="https://media.greenmatters.com/brand-img/uzknVGkw6/0x0/thala-beach-nature-reserve-main-lodge-2-1563820226824.jpg" class="card-img-top" alt="Eco-friendly Lodging" style="height: 280px;">
                    <div class="card-body text-center">
                        <h5 class="card-title">Eco-friendly Lodging</h5>
                        <p class="card-text">Stay in cottages and lodges that blend into the environment.</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-4">
                <div class="card h-100 shadow">
                    <img src="https://img.freepik.com/premium-photo/group-friends-hike-trail-up-mountain-camp-nature-landscape-extreme-adventure-holiday-team-people-explore-earth-together-hiking-trip-mountains-hill-while-vacation_590464-86160.jpg?w=2000" class="card-img-top" alt="Trekking and Nature Walks">
                    <div class="card-body text-center">
                        <h5 class="card-title">Trekking and Nature Walks</h5>
                        <p class="card-text">Join us for immersive treks in Karnataka's wilderness.</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4">
                <div class="card h-100 shadow">
                    <img src="https://ik.imagekit.io/photosafari/wp-content/uploads/2021/12/wildlife-photography-gear-reviews.jpg" class="card-img-top" alt="Wildlife Photography Workshops">
                    <div class="card-body text-center">
                        <h5 class="card-title">Photography Workshops</h5>
                        <p class="card-text">Learn wildlife photography with professional guidance.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Testimonials Section with Circular Images -->
    <div class="container section-padding">
        <h3 class="section-title text-center">What Our Guests Say</h3>
        <div class="row">
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow testimonial-box">
                    <div class="card-body text-center">
                        
                        <p>"An unforgettable safari experience! We saw tigers and leopards up close. The guides were fantastic."</p>
                        <p><strong>- Rajesh Kumar</strong></p>
                    </div>
                </div>
            </div>
           <div class="col-md-4 mb-4">
    <div class="card h-100 shadow testimonial-box">
        <div class="card-body text-center">
            <!-- Font Awesome human icon -->
            
            <p>"The bird-watching tour was incredible. So many species in one place! I loved every moment."</p>
            <p><strong>- Anjali Gupta</strong></p>
        </div>
    </div>
</div>
           
            <div class="col-md-4 mb-4">
                <div class="card h-100 shadow testimonial-box">
                    <div class="card-body text-center">
                       
                        <p>"The eco-friendly lodges were a perfect blend of comfort and nature. Can't wait to come back!"</p>
                        <p><strong>- Sanjay Patel</strong></p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
     <%@include file="Footer.jsp"%> 

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
