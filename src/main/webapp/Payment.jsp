


<%@page import="java.util.Iterator"%>
<%@page import="Model.Registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Model.Booking"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Bootstrap CRUD Data Table for Database with Modal Form</title>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
<style>
body {
	color: #566787;
	background: #f5f5f5;
	font-family: 'Varela Round', sans-serif;
	font-size: 17px;
}

.navbar {
	display: flex;
	align-items: center;
	padding: 10px;
	width: 100%;
}

.container {
	max-width: 1500px;
	margin: auto;
	padding-left: 25px;
	padding-right: 25px;
}

nav {
	flex: 1;
	text-align: right;
}

nav ul {
	display: inline-block;
	list-style-type: none;
}

nav ul li {
	display: inline-block;
	margin-right: 20px;
}

nav ul li a {
	text-decoration: none;
	color: #555;
}

nav ul li p {
	color: #555;
}

.selectpicker {
	color: #35475e;
	margin-left: 5px;
	font-size: 15px;
}

.table-responsive {
	margin: 30px 0;
}

.table-wrapper {
	background: #fff;
	padding: 20px 25px;
	border-radius: 3px;
	min-width: 1000px;
	box-shadow: 0 1px 1px rgba(0, 0, 0, .05);
}

.table-title {
	padding-bottom: 15px;
	background: #35475e;
	color: #fff;
	padding: 16px 30px;
	min-width: 100%;
	margin: -20px -25px 10px;
	border-radius: 3px 3px 0 0;
}

.pagination {
	float: right;
	margin: 0 0 5px;
}

.pagination li a {
	border: none;
	font-size: 13px;
	min-width: 30px;
	min-height: 30px;
	color: #999;
	margin: 0 2px;
	line-height: 30px;
	border-radius: 2px !important;
	text-align: center;
	padding: 0 6px;
}

.pagination li a:hover {
	color: #666;
}

.pagination li.active a, .pagination li.active a.page-link {
	background: #03A9F4;
}

.pagination li.active a:hover {
	background: #0397d6;
}

.pagination li.disabled i {
	color: #ccc;
}

.pagination li i {
	font-size: 16px;
	padding-top: 6px
}

.hint-text {
	float: left;
	margin-top: 10px;
	font-size: 13px;
}
/* Custom checkbox */
.cost {
	float: left;
	font-size: 25px;
	color: black;
	padding-top: 30px;
	/*                padding-right: 300px;*/
}
/* Modal styles */
.modal .modal-dialog {
	max-width: 400px;
}

.modal .modal-header, .modal .modal-body, .modal .modal-footer {
	padding: 20px 30px;
}

.modal .modal-content {
	border-radius: 3px;
	font-size: 14px;
}

.modal .modal-footer {
	background: #ecf0f1;
	border-radius: 0 0 3px 3px;
}

.modal .modal-title {
	display: inline-block;
}

.modal .form-control {
	border-radius: 2px;
	box-shadow: none;
	border-color: #dddddd;
}

.modal textarea.form-control {
	resize: vertical;
}

.modal .btn {
	border-radius: 2px;
	min-width: 100px;
}

.modal form label {
	font-weight: normal;
}

/*            wrappppp*/
.wrapp {
	max-width: 1200px;
	border-radius: 20px;
	margin: auto;
	background: rgba(0, 0, 0, 0.1);
	box-sizing: border-box;
	padding: 40px;
	color: #555;
	font-size: 15px;
	margin-top: 100px;
	float: center;
}

h1 {
	text-align: center;
}

input[type=text], input[type=password], input[type=number] {
	width: 100%;
	box-sizing: border-box;
	padding: 12px 5px;
	background: rgba(0, 0, 0, 0.10);
	outline: none;
	border: none;
	border-bottom: 3px double #fff;
	color: #555;
	border-radius: 5px;
	margin: 5px;
	font-weight: bold;
}

input[type=submit] {
	width: 100%;
	box-sizing: border-box;
	padding: 10px 0;
	margin-top: 30px;
	outline: none;
	border: none;
	background: #60adde;
	opacity: 0.7;
	border-radius: 20px;
	font-size: 20px;
	color: #555;
}

/*footer*/
.footer {
	background: #000;
	color: #8a8a8a;
	font-size: 14px;
	padding: 60px 0 20px;
}

.footer p {
	color: #8a8a8a;
}

.footer h3 {
	color: #fff;
	margin-bottom: 20px;
}

.footer-col-1, .footer-col-2, .footer-col-3, .footer-col-4 {
	min-width: 250px;
	margin-bottom: 20px;
}

.footer-col-1 {
	flex-basis: 30%;
}

.footer-col-2 {
	flex: 1;
	text-align: center;
}

.footer-col-2 {
	width: 160px;
	margin-bottom: 30px;
}

.footer-col-3, .footer-col-4 {
	flex-basis: 12%;
	text-align: center;
}

ul {
	list-style-type: none;
}

.app-logo {
	margin-top: 20px;
}

.app-logo img {
	width: 140px;
}

.footer hr {
	border: none;
	background: #b5b5b5;
	height: 1px;
	margin: 20px 0;
}

.copyright {
	text-align: center;
}
</style>

</head>
<body>
	<%@include file="header1.jsp"%>
	<br>
	<br>
	<br>
	<br>

	<div class="header">
		<div class="container"></div>
	</div>
	<% if (session.getAttribute("uname") != null) {%>
	<div class="container-xl">
		<div class="table-responsive">
			<div class="table-wrapper">
				<div class="table-title">
					<div class="row">
						<div class="col-sm-4">
							<h2>
								<b>Payment Form</b>
							</h2>
						</div>
					</div>
				</div>


				<% 
                            Registration s1 = new Registration(session);
                            ArrayList<Booking> ar = s1.getpaymentinfo();
                            Iterator<Booking> itr = ar.iterator();
                            while (itr.hasNext()) {
                                Booking s = itr.next();
                                
                                int numberOfPeople = s.getNumberOfTravellers();
                                double tripAmount = s.getPackageAmount();
                                double total = numberOfPeople * tripAmount;
                             

                   
                    %>



				<br>
				<form action="register" method="POST">
					<div style="font-size: 20px">
						Passenger Name :
						<%= session.getAttribute("uname")%></div>
					<br> <label for="price">Destination name : <%=session.getAttribute("Dname") %></label>
					<br> <label for="price">Booking ID : <%=session.getAttribute("Booking-Id") %></label>
					<br> <label for="No of People">No of people: <%= s.getNumberOfTravellers() %></label>
					<br> <label for="price">Trip Amount: <%= s.getPackageAmount() %></label>
					<br> <label>Total Amount:<%= total %></label>
					<hr>

					<div class="cost"></div>
					<br>
					<br>
					<br> <br>
					<center>
						Payment Method: <select class="selectpicker">
							<option>Phone pe</option>
						</select>
					</center>
					<br> <input type="submit" name="pay" value="pay" class="btn"><br>
				</form>
				<%} %>
			</div>
		</div>
	</div>
	<%} %>


</body>
</html>