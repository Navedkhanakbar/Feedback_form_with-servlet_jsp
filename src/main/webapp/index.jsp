<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
    <title>Feedback Form</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: #f4f6f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .form-container {
            background: #fff;
            padding: 25px 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0,0,0,0.1);
            width: 350px;
        }
        h2 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }
        label {
            font-weight: bold;
            margin-top: 10px;
            display: block;
            color: #444;
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 14px;
        }
        input:focus, textarea:focus {
            border-color: #4a90e2;
            outline: none;
        }
        input[type="submit"] {
            background: #4a90e2;
            color: white;
            border: none;
            cursor: pointer;
            margin-top: 15px;
            font-size: 16px;
            font-weight: bold;
            transition: background 0.3s;
        }
        input[type="submit"]:hover {
            background: #357ab7;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Online Feedback Form</h2>
        <form action="feedback" method="post">
            <label>Name:</label>
            <input type="text" name="name" required>

            <label>Email:</label>
            <input type="email" name="email" required>

            <label>Feedback:</label>
            <textarea name="message" rows="5" required></textarea>

            <input type="submit" value="Submit Feedback">
        </form>
    </div>
</body>
</html>

