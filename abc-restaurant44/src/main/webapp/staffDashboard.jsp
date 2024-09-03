<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    if (session.getAttribute("staff") == null) {
        response.sendRedirect("staff?action=login"); // Redirect to login if the staff object is not found
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Staff Dashboard - ABC Restaurant</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        body {
            padding-top: 56px;
            background-color: #f8f9fa; /* Match the admin dashboard background color */
        }

        .navbar-brand {
            font-weight: bold;
        }

        .container {
            margin-top: 50px;
        }

        /* Updated Button Styles to Match Admin Dashboard Theme */
        .btn-primary, .btn-info, .btn-secondary {
            background-color: #ff6600; /* Orange button color */
            border: none;
            font-weight: bold;
            transition: background-color 0.3s ease;
            color: #ffffff; /* Ensure text color is white */
        }

        .btn-primary:hover, .btn-info:hover, .btn-secondary:hover {
            background-color: #b44c00; /* Darker orange on hover */
            color: #ffffff !important; /* Keep text color white on hover */
        }

        .navbar-text, .navbar-nav .nav-link {
            color: #ffffff;
        }

        .navbar-dark .navbar-nav .nav-link:hover {
            color: #ff6600; /* Orange color on hover */
        }

        .navbar-dark .navbar-nav .nav-link.active {
            color: #b44c00; /* Darker orange color for active links */
        }
    </style>
</head>
<body>
    <!-- Navigation Bar -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Staff Dashboard</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="customer?action=list">Manage Customers</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="product?action=list">View Products</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="reservation?action=list">View Reservation</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="staff?action=logout">Logout</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Dashboard Content -->
    <div class="container">
        <!-- Display the logged-in staff member's name -->
        <h1 class="mt-5">Welcome, <c:out value="${staff.name}"/>!</h1>
        <p class="lead">Use these options to manage Customers, Products, and Reservations.</p>

        <!-- Example Sections -->
        <div class="row mt-4">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Customers</h5>
                        <p class="card-text">View and manage customer profiles.</p>
                        <a href="customer?action=list" class="btn btn-primary">Go to Customer Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Products</h5>
                        <p class="card-text">Add, edit, or remove Products.</p>
                        <a href="product?action=list" class="btn btn-info">Go to Product Management</a>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Manage Reservations</h5>
                        <p class="card-text">Accept, Reject or Delete customer Reservations.</p>
                        <a href="reservation?action=list" class="btn btn-secondary">Go to Reservations Management</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
