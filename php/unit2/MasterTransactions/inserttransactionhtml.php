<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="insert.php" method="post" >
        <label for="Product Name">Select Product</label>
        <select name="product" id="product"></select>
            <option value=""></option>

            <option value="<? =$row['product_name'] ; ?>" ></option>
        <label for="Product Price">Product Quantity</label>
            <input type="text" name="value"><br>
            <input type="submit" name="submit">
    </form>
</body>
</html>

<?php
$product="select * from master";
    while($row=$product->())
?>