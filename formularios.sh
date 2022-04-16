#!/bin/bash

echo "content-type: text/html"
echo
echo
echo "

<form method="POST" action="resultados.sh">
    Login: <input type="text" name="login" />
    Senha: <input type="text" name="senha" />
    <input type="submit" value="Enviar" />
</form>"

