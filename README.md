# Common Gateway Interface
CGI (sigla em inglês para Common Gateway Interface), em português, Interface Comum de Porta de entrada.
Interface: elemento que proporciona uma ligação física ou lógica entre dois sistemas ou partes de um sistema que não poderiam ser conectados diretamente.



## Instalando o Apache2
cd /usr/lib/cgi-bin apt install apache2
a2enmod cgid
a2enmod rewrite

## Reiniciando o serviço
systemctl restart apache2

## Certifique-se de que o módulo cgi esteja sendo carregado
nano /etc/apache2/mods-available/cgi.load  

## Agora verifique se o CGI está habilitado
nano /etc/apache2/mods-enabled/cgi.load

## Informando ao apache qual o formato dos seus scripts
nano /etc/apache2/mods-enabled/mime.conf

![image](https://user-images.githubusercontent.com/91998391/163693503-84d5752b-53c3-4e66-a0f0-a8365991d274.png)

Geralmente, o servidor HTTP tem um diretório (pasta), que é designado como uma coleção de documentos(arquivos), que podem ser enviados para navegadores da Web ligados a este servidor.
CGI estende esse sistema, permitindo ao proprietário do servidor Web designar um diretório dentro da coleção de documento contendo scripts executáveis (ou arquivos binários) em vez de páginas pré-escritas, isto é conhecido como um diretório CGI.
cd /usr/lib/cgi-bin


Estrutura geral de scripts CGI:
•	Leitura e descodificação de dados (e/ou campos de informação de um pacote HTTP);
•	Processamento dos dados (gravar informação em bases de dados, realizar cálculos, recuperar dados);
•	Criação de uma página Web com os resultados produzidos.

curl http://54.204.218.188/cgi-bin/formularios.sh
curl http://54.204.218.188/cgi-bin/hwinfo.cgi
