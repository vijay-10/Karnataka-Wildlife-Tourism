<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us - Karnataka Wildlife Tourism</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
        }
        .hero-section {
            background-image: url('https://images.pexels.com/photos/247502/pexels-photo-247502.jpeg?cs=srgb&dl=animal-big-fur-247502.jpg&fm=jpg');
            background-size: cover;
            background-position: center;
            color: white;
            padding: 100px 0;
            text-align: center;
            position: relative;
            height:500px;
        }
        .hero-section::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background: rgba(0, 0, 0, 0.5); /* Darken the background image */
            z-index: 1;
        }
        .hero-section h1, .hero-section p {
            position: relative;
            z-index: 2;
        }
        .section-padding {
            padding: 40px 0;
        }
        .contact-info {
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .contact-info:hover {
            transform: scale(1.05); /* Hover effect to enlarge slightly */
        }
        .form-control, .btn-primary {
            transition: all 0.3s ease; /* Smooth transitions for input and buttons */
        }
        .form-control:focus {
            box-shadow: 0 0 5px #4CAF50;
            border-color: #4CAF50;
        }
        .btn-primary {
            background-color: #4CAF50;
            border: none;
        }
        .btn-primary:hover {
            background-color: #45a049;
            transform: translateY(-2px); /* Hover lift effect for button */
        }
        footer {
            background-color: #333;
            color: white;
            padding: 20px 0;
            text-align: center;
        }
        footer a {
            color: #4CAF50;
            text-decoration: none;
        }
        footer a:hover {
            color: #fff;
            text-decoration: underline;
        }
    </style>
</head>
<body>
<%@include file="header1.jsp"%> 
    <!-- Hero Section -->
    <div class="hero-section d-flex align-items-center justify-content-center">
        <div class="container text-center">
            <h1>Contact Karnataka Wildlife Tourism</h1>
            <p>We would love to hear from you! Get in touch with us for any inquiries.</p>
        </div>
    </div>

    <!-- Contact Form and Info Section -->
    <div class="container section-padding">
        <div class="row justify-content-between">
            <!-- Contact Form -->
            <div class="col-md-6 mb-4">
                <h2 class="mb-4">Send Us a Message</h2>
                <form action="ContactServlet" method="post">
                    <div class="mb-3">
                        <label for="name" class="form-label">Your Name</label>
                        <input type="text" class="form-control" id="name" name="name" required>
                    </div>
                    <div class="mb-3">
                        <label for="email" class="form-label">Your Email</label>
                        <input type="email" class="form-control" id="email" name="email" required>
                    </div>
                    <div class="mb-3">
                        <label for="subject" class="form-label">Subject</label>
                        <input type="text" class="form-control" id="subject" name="subject" required>
                    </div>
                    <div class="mb-3">
                        <label for="message" class="form-label">Message</label>
                        <textarea class="form-control" id="message" name="message" rows="5" required></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Send Message</button>
                </form>
            </div>

            <!-- Contact Info -->
            <div class="col-md-5">
                <div class="contact-info">
                    <h2 class="mb-4">Our Contact Information</h2>
                    <p><strong>Phone:</strong> +91 98765 43210</p>
                    <p><strong>Email:</strong> <a href="mailto:contact@karnatakawildlifetourism.com">contact@karnatakawildlifetourism.com</a></p>
                    <p><strong>Address:</strong> Karnataka Wildlife Tourism, 1234 Forest Road, Bengaluru, Karnataka, India</p>
                    <p><strong>Operating Hours:</strong> Monday to Friday, 9 AM - 6 PM</p>
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
