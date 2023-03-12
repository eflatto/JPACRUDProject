
<%@ page contentType="text/css; charset=UTF-8" language="java" %>


body {
    background-color: #f7f7f7;
    font-family: Arial, sans-serif;
    font-size: 16px;
    line-height: 1.6;
}

.form-container {
    background-color: #fff;
    border-radius: 5px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    margin: 30px auto;
    max-width: 800px;
    padding: 30px;
  
}

.form-container h1 {
    font-size: 28px;
    font-weight: bold;
    margin: 0 0 30px;
    text-align: center;
}

.form-group {
    margin-bottom: 30px;
}

.form-group label {
    display: block;
    font-size: 18px;
    font-weight: bold;
    margin-bottom: 10px;
}

.form-group input[type="text"],
.form-group input[type="number"],
.form-group textarea {
    border: 1px solid #ccc;
    border-radius: 5px;
    font-size: 16px;
    padding: 10px;
    width: 100%;
}

.form-group textarea {
    height: 150px;
}

.form-group input[type="submit"] {
    background-color: #4CAF50;
    border: none;
    border-radius: 5px;
    color: #fff;
    cursor: pointer;
    font-size: 16px;
    padding: 10px 20px;
}

.form-group input[type="submit"]:hover {
    background-color: #3e8e41;
}

.error {
    color: red;
    font-size: 14px;
    margin-top: 5px;
}

.success {
    color: green;
    font-size: 14px;
    margin-top: 5px;
}
