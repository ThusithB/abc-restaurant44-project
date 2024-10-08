<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register Staff | ABC Restaurant</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <!-- Include Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
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
            background-color: #f8f9fa; /* Light grey header */
            padding: 15px;
            text-align: center;
            font-family: 'Freestyle Script', cursive;
            font-size: 50px;
            color: #ff6600; /* Orange text color */
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

        /* Link Styling */
        a {
            color: #ff6600; /* Orange link color */
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        /* Title Styling */
        h1.text-center {
            font-size: 36px; /* Adjusted font size for title */
            font-weight: 600;
            margin-bottom: 20px;
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

    <!-- Register Form Container -->
    <div class="container">
        <h1 class="text-center">REGISTER STAFF</h1>
        <form action="staff?action=register" method="post" class="mt-4">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" name="name" class="form-control" id="name" placeholder="Enter your name" required>
            </div>
            <div class="form-group mt-3">
                <label for="email">Email</label>
                <input type="email" name="email" class="form-control" id="email" placeholder="Enter your email" required>
            </div>
            <div class="form-group mt-3">
                <label for="phoneNumber">Phone Number</label>
                <input type="text" name="phoneNumber" class="form-control" id="phoneNumber" placeholder="Enter your phone number" required>
            </div>
            <div class="form-group mt-3">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Enter your password" required>
            </div>
            <div class="form-group mt-3">
                <label for="role">Role</label>
                <select name="role" class="form-control" id="role" required>
                    <option value="Staff">Staff</option>
                    <option value="Manager">Manager</option>
                </select>
            </div>
            <button type="submit" class="btn btn-primary mt-4 w-100">Register</button>
        </form>
        <div class="text-center mt-4">
            <p>Already a Member? <a href="staff?action=login">Login here</a></p>
        </div>
    </div>

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
