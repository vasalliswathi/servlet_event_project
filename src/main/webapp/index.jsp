<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Index Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            padding: 50px;
        }
        h1 {
            color: #4682b4;
        }
        a button {
            background-color: #4682b4;
            color: white;
            border: none;
            padding: 15px 32px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 12px;
            transition: background-color 0.3s ease;
        }
        a button:hover {
            background-color: #5a9bd4;
        }
    </style>
</head>
<body>

    <h1>Welcome to Event Management System</h1>
    
    <a href="create.jsp"> <button>Create Event</button> </a><br><br>
    <a href="all"> <button>View All Events</button> </a>
</body>
</html>
