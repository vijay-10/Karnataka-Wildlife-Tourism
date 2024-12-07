<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Wildlife Tourism Booking</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
            margin-bottom: 30px;
        }
        .btn-custom {
            background-color: #4CAF50;
            color: white;
        }
        .btn-custom:hover {
            background-color: #45a049;
        }
        .errmsg{
            background: green;
            padding: 10px;
            width: 50%;
            color: white;
            font-weight: bold;
        }
        .error{   
            color:red;
        }
    </style>
</head>
<body>

<center>
        <% if (request.getAttribute("status") != null) {%>
        <h1 class="errmsg"> <%= request.getAttribute("status")%></h1>
        <%}%>
        <br>
<div class="container">

    <h2>Wildlife Tourism Booking Form</h2>
    <form action="register" method="post">
        <div class="form-group">
            <label for="dname">Destination Name:</label>
            <input type="text" class="form-control" id="dname" name="dname" value="<%=session.getAttribute("Dname")%>" required>
        </div>

        <div class="form-group">
            <label for="uname">User Name:</label>
            <input type="text" class="form-control" id="uname" name="uname" value="<%=session.getAttribute("uname")%>" required>
        </div>

        <div class="form-group">
            <label for="uid">User ID:</label>
            <input type="number" class="form-control" id="uid" name="uid" value="<%=session.getAttribute("id")%>" required>
        </div>

        <div class="form-group">
            <label for="pamount">Package Amount:</label>
            <input type="number" class="form-control" id="pamount" name="pamount" value="<%=session.getAttribute("Amount")%>" required>
        </div>

        <div class="form-group">
            <label for="tripdate">Trip Date:</label>
            <input type="date" class="form-control" id="tripdate" name="tripdate" required>
        </div>

        <div class="form-group">
            <label for="phoneNumber">Phone Number:</label>
            <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" required>
        </div>

        <div class="form-group">
            <label for="noOfTravellers">Number of Travellers:</label>
            <input type="number" class="form-control" id="noOfTravellers" name="noOfTravellers" required>
        </div>

        <div class="form-group">
            <label for="requirements">Requirements (Optional):</label>
            <input type="text" class="form-control" id="requirements" name="requirements">
        </div>

        <button type="submit" name="book" class="btn btn-custom btn-block">Book Now</button>
    </form>
</div>

<!-- Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.3/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
