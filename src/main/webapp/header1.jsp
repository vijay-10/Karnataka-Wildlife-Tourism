<%@ page contentType="text/html; charset=UTF-8" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
        /* Header styles */
        .header {
            position: fixed;
            width: 100%;
            top: 0;
            left: 0;
            padding: 20px 0;
            background-color: transparent; /* Initially transparent */
            transition: background-color 0.3s ease;
            z-index: 1000;
        }

        

        .a .c {
            list-style-type: none;
            margin: 0;
            padding: 0;
            display: flex;
            gap: 20px;
        }

        .a .c li {
            display: inline;
        }

        .a .c a {
            text-decoration: none;
            color: white; /* White text initially */
        }

        .header.scrolled .nav a {
            color: black; /* Change text color to black when scrolled */
        }
        .header.scrolled {
            background-color: white; /* Change text color to black when scrolled */
        }

        /* Page content styles */
        
    </style>
</head>
<body>
<!-- header.jsp -->
<header id="main-header" class="header" style="width: 100%; top:0; margin: 0;">
    <div class="container">
        <nav class="navbar a">
            <a href="#" class="navbar-brand b">Karnataka Wildlife Tourism</a>
            <ul class="nav c">
                <li><a href="Home.jsp">Home</a></li>
						<li><a href="About.jsp">About Us</a></li>
						<li><a href="Contact.jsp">Contact  Us</a></li>
                        
						
                               
						
						<% if ((session.getAttribute("uname")) != null  ) {%>
						
								
						
                              <% if (session.getAttribute("id").equals("1")) {%>
                              
                              
                              	<li><a href="AddDestination.jsp"> Add Destination</a></li>
						        <li><a href="AddPackageinfo.jsp"> Add Package</a></li>
						         <li><a href="DeleteDestination.jsp">Delete Destination</a></li>
                              <li><a href="BookedTrip.jsp">user bookings</a></li>
                              <li><a href="register?logout=yes">Logout</a></li>
						<li class="uname"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></li>
                              
                              <%} else {%>
                              <li><a href="Payment.jsp">Payment</a></li>
                                  <li><a href="BookingStatus.jsp">My bookings</a></li>
                              <li><a href="register?logout=yes">Logout</a></li>
						<li class="uname"><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;"></i><%=session.getAttribute("uname")%></li>
						<%} %>
						
						<%}else{ %>
						<li><a href="Registration.jsp">Register</a></li>
						<li><a href="Login.jsp">Login</a></li>
					
						
						
						
						<%}%>
                
                
                
                
                
                
                
                
            </ul>
        </nav>
    </div>
</header>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
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