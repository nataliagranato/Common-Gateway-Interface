
#!/bin/bash
echo "Content-type: text/html"
echo ""
cat <<EOT
<!DOCTYPE html>
<html>
<head>
        <title>Calculadora Jack Experts</title>
	<meta charset=utf-8>
</head>
<body style="font-family: sans-serif; font-size=5em; background-color:#ccccff; ">
<div style="width:500px; text-align:center; margin:0 auto; background-color:#dcd0ff; padding-top:20px; padding-bottom:40px ">        <h3>Digite os valores:</h3>
        <form action="info.sh" method="get">
                <input type="text" name="n1" size="3"> + <input type="text" name="n2" size="3"> <button type="submit">Somar</button>
        </form>
</div>
</body>
</html>
EOT
