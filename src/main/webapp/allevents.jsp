<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>View All Events Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f8ff;
            text-align: center;
            padding: 50px;
        }
        table {
            width: 80%;
            margin: 0 auto;
            border-collapse: collapse;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            border: 1px solid #ddd;
            text-align: left;
        }
        th {
            background-color: #4682b4;
            color: white;
        }
        td {
            background-color: #f2f2f2;
        }
        tr:nth-child(even) td {
            background-color: #e6e6e6;
        }
        tr:hover td {
            background-color: #ddd;
        }
        button {
            background-color: #4682b4;
            color: white;
            border: none;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 14px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 8px;
            transition: background-color 0.3s ease;
        }
        button:hover {
            background-color: #5a9bd4;
        }
    </style>
</head>
<body>

    <h1>View All Events</h1>

    <table rules="all" border="2" align="center">
        <tr>
            <th>Id</th>
            <th>Title</th>
            <th>Location</th>
            <th>Date</th>
            <th>Guest</th>
            <th colspan="2" style="text-align: center;">Action</th>
        </tr>
        <%
        ResultSet rs = (ResultSet) request.getAttribute("rs");
        while (rs.next()) {
        %>
        <tr>
            <td><%=rs.getInt(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><%=rs.getString(4)%></td>
            <td><%=rs.getString(5)%></td>
            <td> <a href="delete?id=<%=rs.getInt(1)%>"> <button>DELETE</button> </a> </td>
            <td> <a href="updatepage?id=<%=rs.getInt(1)%>"> <button>UPDATE</button> </a> </td>
        </tr>
        <%
        }
        %>
    </table>

</body>
</html>
