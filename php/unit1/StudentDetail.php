<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student's Details</title>
    <link rel="stylesheet" href="studentdetails.css">
</head>
<body>
    <h1 class="heading">Student Details</h1>
    <table>
        <form action = "Helloworld.php" method = "post">    
            <tr>
                <td>
                    <label for="name">Enter the Name : </label>
                </td>
                <td>
                    <input type="text" id="name" name="name" autofocus >
                </td>
            </tr>
            <tr>
                <td>
                    <label for="Age">Enter the Age : </label>
                </td>
                <td>
                    <input type="text" id="Age" name="Age"><br>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="mark">Enter the Mark : </label>
                </td>
                <td>
                    <input type="text" id="mark" name="mark"><br>
                </td>
            </tr>
            <tr>
                <td colspan=2>
                    <button>submit</button>
                </td>
            </tr>            
        </form>
    </table>
</body>
</html>