# Common Gateway Interface
CGI (sigla em inglês para Common Gateway Interface), em português, Interface Comum de Porta de entrada.
Interface: elemento que proporciona uma ligação física ou lógica entre dois sistemas ou partes de um sistema que não poderiam ser conectados diretamente.

## História
Levando em conta a velocidade com a qual as inovações acontecem, CGI pode ser considerado antigo, levando em consideração a criação do computador pode se dizer que está na meia-idade.

Em 1993, a equipe o National Center for Supercomputing Applications (NCSA),escreveu uma especificação para chamar executáveis ​​de linha de comando na www-talk lista de emails. No entanto, NCSA não hospeda a especificação.

Outros desenvolvedores adotaram a especificação, e tem sido um padrão para servidores web desde então. Um grupo presidido por Ken Coar começou em novembro de 1997 um trabalho para obter a definição NCSA de CGI mais formalmente definida. Este trabalho resultou em RFC3875 , que especifica a versão CGI 1.1. Expressamente mencionados na RFC são os contribuintes que se segue:

Rob McCool (autor do NCSA HTTPd Web Server ) John Franks (autor do Web Server GN) Ari Luotonen (o desenvolvedor do CERN httpd servidor Web) Tony Sanders (autor do servidor Plexus Web) George Phillips (mantenedor do servidor Web na University of British Columbia ).

Como alternativa pode considerar:

* FastCGI
* PSGI(Perl Web Server Gateway Interface)
* Rack (web server interface)
* WSGI(Web Server Gateway Interface)

## Instalando o Apache2
```
cd /usr/lib/cgi-bin apt install apache2
a2enmod cgid
a2enmod rewrite
```

## Reiniciando o serviço
```
systemctl restart apache2
```
## Certifique-se de que o módulo cgi esteja sendo carregado
```
nano /etc/apache2/mods-available/cgi.load  
```
## Agora verifique se o CGI está habilitado
```
nano /etc/apache2/mods-enabled/cgi.load
```
## Informando ao apache qual o formato dos seus scripts
```
nano /etc/apache2/mods-enabled/mime.conf
```
![image](https://user-images.githubusercontent.com/91998391/163693503-84d5752b-53c3-4e66-a0f0-a8365991d274.png)

Geralmente, o servidor HTTP tem um diretório (pasta), que é designado como uma coleção de documentos(arquivos), que podem ser enviados para navegadores da Web ligados a este servidor.
CGI estende esse sistema, permitindo ao proprietário do servidor Web designar um diretório dentro da coleção de documento contendo scripts executáveis (ou arquivos binários) em vez de páginas pré-escritas, isto é conhecido como um diretório CGI.
```
cd /usr/lib/cgi-bin
```

Estrutura geral de scripts CGI:
•	Leitura e descodificação de dados (e/ou campos de informação de um pacote HTTP);
•	Processamento dos dados (gravar informação em bases de dados, realizar cálculos, recuperar dados);
•	Criação de uma página Web com os resultados produzidos.

Exemplos de aplicação de CGI's
Processamento de dados submetidos através de formulários;

Servir de interface com a bases de dados, fazendo a conversão da
transação de HTML para SQL e formatar em HTML as respostas obtidas,
enviando em seguida os resultados para o cliente;

* Converter dados do sistema para HTML e retornar o resultado para o
cliente;
* Criação de documentos personalizados;
* Gerir contadores de acesso;
* Processamento de mapas.


```
curl http://54.204.218.188/cgi-bin/formularios.sh
curl http://54.204.218.188/cgi-bin/hwinfo.cgi
```
