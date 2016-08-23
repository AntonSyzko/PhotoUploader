<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Page Not found</title>
</head>
<body>
<p>Enter a number and click OK:</p>

<input id="id1" type="number" min="100" max="300">
<button onclick="myFunction()">OK</button>

<p>If the number is less than 100 or greater than 300, an error message will be displayed.</p>

<p id="demo"></p>

<script>
    function myFunction() {
        var inpObj = document.getElementById("id1");

        var x = document.getElementById("id1").value;
        if (inpObj.checkValidity() == false) {
            document.getElementById("demo").innerHTML = inpObj.validationMessage;
        } else {
            document.getElementById("demo").innerHTML = "Input OK";
        }
        if(inpObj.validity.rangeOverflow){
            document.getElementById("demo").style.color = "red";
            document.getElementById("demo").innerHTML =x + " too high";
        }else if(inpObj.validity.rangeUnderflow){
            document.getElementById("demo").style.color = "blue";
            document.getElementById("demo").innerHTML =x + " to low";
        }else{
            document.getElementById("demo").style.color = "green";
            document.getElementById("demo").innerHTML = "Input OK   " + x;

        }
    }

</script>


</body>
</html>