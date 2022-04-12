# apache2-cgi
Implementação do servidor web Apache com módulo CGI. O CGI (Common Gateway Interface) é um serviço server-based o qual adiciona funcionalidade extra a uma página. Esta funcionalidade é fornecida por um 'pequeno' programa ou 'script' que é executado no servidor onde a página web fica. Estes programas podem ser feitos em diversas linguagens como Perl, PHP, C, Shell Script, etc.

# Instalando o servidor Apache e habilitando o módulo chamado CGID.
```apt-get install apache2
a2enmod cgid
a2enmod rewrite```

# Reinicie o serviço apache
```systemctl restart apache2
```
