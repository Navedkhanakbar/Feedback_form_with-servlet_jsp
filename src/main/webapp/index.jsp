<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Feedback Form</title>
</head>
<body>
    <h2>Online Feedback Form</h2>
    <form action="feedback" method="post">
        <label>Name:</label><br>
        <input type="text" name="name" required><br><br>

        <label>Email:</label><br>
        <input type="email" name="email" required><br><br>

        <label>Feedback:</label><br>
        <textarea name="message" rows="5" cols="30" required></textarea><br><br>

        <input type="submit" value="Submit Feedback">
    </form>
</body>
</html>
