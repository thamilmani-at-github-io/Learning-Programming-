<html>
    <body>
        <h1>Enter Limit for fetch Prime numbers</h1>
       <p>
            <input type="text" onkeyup="showHint(this.value)" >
        </p>
        <p id="txtHint">

        </p>
        
        <script>
            function showHint(str)
            {
                if(str.length==0){
                    document.getElementById("txtHint").innerHTML="";
                    return;
                }
                const xhttp=new XMLHttpRequest();
                xhttp.onload=function(){
                    document.getElementById("txtHint").innerHTML=this.responseText;
                }
                xhttp.open("GET","generatePrimeNumber.php?name="+str);
                xhttp.send();
            }
        </script>
    </body>
</html>