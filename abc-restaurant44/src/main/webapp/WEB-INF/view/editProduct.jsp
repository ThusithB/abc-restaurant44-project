<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
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
        <h1 class="text-center">Edit Product</h1>
        <form action="product?action=edit" method="post" enctype="multipart/form-data">
            <input type="hidden" name="id" value="${product.productId}">
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" class="form-control" id="name" name="name" value="${product.name}" required>
            </div>
            <div class="form-group">
                <label for="description">Description:</label>
                <textarea class="form-control" id="description" name="description" required>${product.description}</textarea>
            </div>
            <div class="form-group">
                <label for="price">Price:</label>
                <input type="number" class="form-control" step="0.01" id="price" name="price" value="${product.price}" required>
            </div>
            <div class="form-group">
                <label for="category">Category:</label> <!-- New category field -->
                <input type="text" class="form-control" id="category" name="category" value="${product.category}" required>
            </div>
            <div class="form-group">
                <label for="image">Image:</label>
                <input type="file" class="form-control" id="image" name="image">
                <img src="${product.imagePath}" class="product-image" alt="Current Product Image" style="width: 100px; margin-top: 10px;">
            </div>
            <button type="submit" class="btn btn-primary">Update Product</button>
        </form>
    </div>
</body>
</html>
