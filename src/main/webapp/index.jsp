<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <title>Greeting</title>
    <script>
        function getGreeting() {
            var currentHour = new Date().getHours();
            var name = "MD Rakib"; // Change this to your name
            var message = (currentHour < 12)
                ? "Good morning, " + name + ", Welcome to COMP367"
                : "Good afternoon, " + name + ", Welcome to COMP367";
            document.getElementById("greeting").innerText = message;
        }
    </script>
</head>
<body onload="getGreeting()">
    <h1 id="greeting"></h1>
</body>
</html>