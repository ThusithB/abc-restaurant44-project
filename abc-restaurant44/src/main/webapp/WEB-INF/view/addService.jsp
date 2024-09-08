<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Service</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        .container {
            margin-top: 50px;
            max-width: 600px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .btn-primary {
            width: 100%;
            background-color: #ff6600; /* Updated background color */
            border-color: #ff6600; /* Updated border color */
        }
        .btn-primary:hover {
            background-color: #e65c00; /* Optional: Darker shade for hover effect */
            border-color: #e65c00; /* Optional: Darker shade for hover effect */
        }
    </style>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Add Service</h1>
        <form action="service?action=add" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label for="serviceName">Service Name:</label>
                <input type="text" class="form-control" id="serviceName" name="serviceName" required>
            </div>
            
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" required></textarea>
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="file" class="form-control" id="image" name="image" required>
            </div>
            <button type="submit" class="btn btn-primary mt-3">Add Service</button>
        </form>
    </div>
</body>
</html>
