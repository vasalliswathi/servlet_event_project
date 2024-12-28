<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Update Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            padding: 50px;
        }
        form {
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            display: inline-block;
            padding: 20px;
            margin-top: 20px;
        }
        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
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
        button:hover {
            background-color: #5a9bd4;
        }
    </style>
</head>
<body>

    <h1>Update Event</h1>

	<%ResultSet rs = (ResultSet) request.getAttribute("rs");%>
    <form action="update">
        <input type="text" name="id" value="<%=rs.getInt(1)%>" readonly="readonly">
        <input type="text" name="title" value="<%=rs.getString(2)%>">
        <input type="text" name="loc" value="<%=rs.getString(3)%>">
        <input type="text" name="date" value="<%=rs.getString(4)%>">
        <input type="text" name="guest" value="<%=rs.getString(5)%>"><br>
        <button type="submit">SUBMIT</button>
    </form>
</body>
</html>
