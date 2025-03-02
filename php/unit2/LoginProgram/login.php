<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login page</title>
    <link rel="stylesheet" href="login.css">
    <script>
        function moveFocus(event, nextElementId) {
            if (event.key === 'Enter') {
                document.getElementById(nextElementId).focus();
            }
        }
    </script>
</head>
<body>
    <div>
        <div class="header">
            <h1>Login Page </h1>
        </div>        
        <div class="form-design">
            <form action="validate.php" method="post">
                <input type="text" id="name" placeholder="Enter the username : " name="name" autofocus onkeydown="moveFocus(event, 'pwd')"><br>
                <input type="password"  id="pwd" placeholder="Enter the password : " name="pwd" ><br>
                <input type="button" onclick="submit()" id="login" value="login">                
            </form>
        </div>
    </div>
</body>
</html>