#!/bin/bash

echo "content-type: text/html"
echo
echo
echo "

<form action="resultados.sh" method="GET">
 <div>
        <label for="nome">Nome:</label>
        <input type="text" id="nome" name="usuario_nome" />
    </div>
    <div>
        <label for="email">E-mail:</label>
        <input type="email" id="email" name="usuario_email" />
    </div>
    <div class="button">
        <input type="submit">Enviar sua mensagem</input>
    </div>
</form>"
