<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer Login | ABC Restaurant</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <!-- Include Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Playfair+Display:ital,wght@0,400;0,500;0,600;0,700;1,400;1,500;1,600;1,700|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">
    <style>
        /* General Body Styling */
        body {
            padding-top: 56px;
            background-color: #f9f9f9; /* Light grey background for better contrast */
            color: #333; /* Dark text color */
            font-family: 'Poppins', sans-serif;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            height: 100vh;
            margin: 0;
        }

        /* Header Styling */
        .header {
            background-color: #f8f9fa; /*  header */
            padding: 15px;
            text-align: center;
            font-family: 'Freestyle Script', cursive;
            font-size: 50px;
            color: #ff6600; /* White text color */
            font-weight: 500;
            letter-spacing: 1px;
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000;
        }

        /* Container Styling */
        .container {
            max-width: 400px;
            background-color: #ffffff; /* White background for the form */
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            margin-top: 60px;
        }

        /* Form Element Styling */
        .form-group label {
            color: #ff6600; /* Orange color for labels */
            font-weight: 600;
        }

        .form-control {
            background-color: #f0f0f0; /* Light grey input background */
            border: 1px solid #cccccc; /* Light grey border */
            color: #333; /* Dark text color */
        }

        .form-control:focus {
            border-color: #ff6600; /* Orange border on focus */
            box-shadow: none;
        }

        .form-control::placeholder {
            color: #999999; /* Light grey placeholder text */
        }

        /* Button Styling */
        .btn-primary {
            background-color: #ff6600; /* Orange button color */
            border: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }

        .btn-primary:hover {
            background-color: #e65c00; /* Darker orange on hover */
        }

        .btn-secondary {
            background-color: #6c757d;
            border: none;
            font-weight: bold;
        }

        .btn-secondary:hover {
            background-color: #5a6268;
        }

        /* Alert Styling */
        .alert-danger {
            background-color: #f8d7da; /* Light red background for alert */
            color: #721c24; /* Dark red text */
            border: none;
            margin-top: 15px;
            padding: 10px;
            font-weight: 600;
            text-align: center;
        }

        /* Link Styling */
        a {
            color: #ff6600; /* Orange link color */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Centering the "Home" button */
        .text-center.mt-4 {
            margin-top: 30px;
        }
    </style>
</head>
<body>

    <!-- Header -->
    <div class="header">
        ABC Restaurant
    </div>

    <!-- Login Form Container -->
    <div class="container">
        <h1 class="text-center">LOGIN</h1>
        <form action="customer?action=login" method="post" class="mt-4">
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group mt-3">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
            </div>
            <button type="submit" class="btn btn-primary mt-4 w-100">Login</button>
        </form>
        <c:if test="${not empty error}">
            <div class="alert alert-danger">${error}</div>
        </c:if>
        <div class="text-center mt-4">
            <p>Not registered? <a href="customer?action=register">Register here</a></p>
        </div>
        <div class="text-center mt-4">
            <a href="index.jsp" class="btn btn-secondary w-100">Home</a>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
