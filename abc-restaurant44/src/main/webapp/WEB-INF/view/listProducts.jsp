<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Product List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" crossorigin="anonymous">
    <style>
        .container {
            margin-top: 50px;
        }
        .table {
            margin-top: 20px;
        }
        .product-image {
            width: 80px;
            height: auto;
            object-fit: cover;
            border-radius: 5px;
        }
        .search-bar {
            margin-bottom: 20px;
        }
        .btn-primary, .btn-warning, .btn-danger {
            margin-right: 5px;
        }
        .btn-primary {
            background-color: #ff6600; /* Updated background color */
            border-color: #ff6600; /* Updated border color */
        }
        .btn-primary:hover {
            background-color: #e65c00; /* Optional: Darker shade for hover effect */
            border-color: #e65c00; /* Optional: Darker shade for hover effect */
        }
    </style>
    <script>
        function searchProducts() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("searchInput");
            filter = input.value.toLowerCase();
            table = document.getElementById("productTable");
            tr = table.getElementsByTagName("tr");

            for (i = 1; i < tr.length; i++) {
                tr[i].style.display = "none"; 
                td = tr[i].getElementsByTagName("td");
                for (var j = 0; j < td.length; j++) {
                    if (td[j]) {
                        txtValue = td[j].textContent || td[j].innerText;
                        if (txtValue.toLowerCase().indexOf(filter) > -1) {
                            tr[i].style.display = "";
                            break;
                        }
                    }
                }
            }
        }
    </script>
</head>
<body>
    <div class="container">
        <h1 class="text-center">Product List</h1>

        <!-- Search bar -->
        <div class="input-group search-bar">
            <input type="text" id="searchInput" onkeyup="searchProducts()" class="form-control" placeholder="Search for products...">
            <div class="input-group-append">
                <span class="input-group-text"><i class="bi bi-search"></i></span>
            </div>
        </div>

        <table id="productTable" class="table table-hover table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Price</th>
                    <th>Description</th>
                    <th>Image</th>
                    <th>Category</th> <!-- New Category column -->
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="product" items="${products}">
                    <tr>
                        <td>${product.productId}</td>
                        <td>${product.name}</td>
                        <td class="text-right">${product.price}</td>
                        <td>${product.description}</td>
                        <td><img src="${product.imagePath}" class="product-image" alt="Product Image"></td>
                        <td>${product.category}</td> <!-- Display category -->
                        <td>
                            <a href="product?action=edit&id=${product.productId}" class="btn btn-warning btn-sm">Edit</a>
                            <a href="product?action=delete&id=${product.productId}" class="btn btn-danger btn-sm" onclick="return confirm('Are you sure you want to delete this product?');">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="text-center">
            <a href="product?action=add" class="btn btn-primary btn-lg">Add New Product</a>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" crossorigin="anonymous"></script>
</body>
</html>
