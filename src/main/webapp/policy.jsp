<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<script>

function createPolicy(){
	alert("inside create ");
	var form = document.getElementById("polcyForm");
	
	form.action="createpolicy";
	//alert (document.getElementById("polcyForm").action);
	form.method="POST";
	form.method.type="POST";
	//alert (document.getElementById("polcyForm").method);
	form.submit();
}

function updatePolicy(){
	var form = document.getElementById("polcyForm");
	form.action="updatepolicy";
	form.method="PUT";
	form.method.type="PUT";
	form.submit();
}

function deletePolicy(){
	var form = document.getElementById("polcyForm");
	form.action="deletepolicy";
	form.method="DELETE";
	form.method.type="DELETE";
	form.submit();
}
</script>    
    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insurance Policy Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(45deg, #FF0000, #FF7F00, #FFFF00, #00FF00, #0000FF, #4B0082, #8B00FF);
            background-size: 1600% 1600%;
            animation: rainbow 10s ease infinite;
        }

        @keyframes rainbow {
            0% {
                background-position: 0% 0%;
            }
            100% {
                background-position: 100% 100%;
            }
        }

        #container {
            max-width: 800px;
            margin: 0 auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 5px;
        }

        form {
            margin-bottom: 20px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="submit"],
        input[type="button"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<div id="container">
    <h2>Insurance Policy Management</h2>
    <form action="addpolicy" id="polcyForm" method="POST">
        <label for="id">Enter your ID:</label>
        <input type="text" name="id" id="id" size="20">
        <br>
        <label for="name">Enter your name:</label>
        <input type="text" name="name" id="name" size="20">
        <br>
        <label for="address">Enter your address:</label>
        <input type="text" name="address" id="address" size="50">
        <br>
        <label for="contact">Enter your contact:</label>
        <input type="text" name="contact" id="contact" size="50">
        <br>
        <input type="submit" value="Create Insurance" onclick="createPolicy()">
        <input type="button" value="Update Insurance" onclick="updatePolicy()">
        <input type="button" value="Delete Insurance" onclick="deletePolicy()">
    </form>
    <table>
        <thead>
        <tr>
            <th>Policy ID</th>
            <th>Customer Name</th>
            <th>Customer Address</th>
            <th>Contact Number</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${policyList}" var="policy">
            <tr>
                <td>${policy.policyId}</td>
                <td>${policy.customerName}</td>
                <td>${policy.customerAddress}</td>
                <td>${policy.contactNumber}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
</body>
</html>
