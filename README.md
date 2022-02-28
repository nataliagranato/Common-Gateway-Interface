# apache2-cgi
Implementação do servidor web Apache com módulo CGI. O CGI (Common Gateway Interface) é um serviço server-based o qual adiciona funcionalidade extra a uma página. Esta funcionalidade é fornecida por um 'pequeno' programa ou 'script' que é executado no servidor onde a página web fica. Estes programas podem ser feitos em diversas linguagens como Perl, PHP, C, Shell Script, etc.

# Instalando o Apache2 e Python no Debian
```sudo su
apt install apache2 python3
```

# Adicionar o módulo CGI e rewrite às configurações do apache
```a2enmod cgi
a2enmod cgid
a2enmod rewrite
```

# Configurar o cgi-bin no apache2
nano /etc/apache2/conf-available/serve-cgi-bin.conf




```<IfModule mod_alias.c>
        <IfModule mod_cgi.c>
                Define ENABLE_USR_LIB_CGI_BIN
        </IfModule>
       <IfModule mod_cgid.c>
                Define ENABLE_USR_LIB_CGI_BIN
        </IfModule>
        <IfDefine ENABLE_USR_LIB_CGI_BIN>
                ScriptAlias /cgi-bin/ /var/www/cgi-bin/
                <Directory "/var/www/cgi-bin">
                        AllowOverride None
                        Options +ExecCGI 
                </Directory>
        </IfDefine>
</IfModule>
# vim: syntax=apache ts=4 sw=4 sts=4 sr noet
```


# Configuração do arquivo de host virtual padrão
nano /etc/apache2/sites-enabled/000-default.conf



```<VirtualHost *:80>
        ServerAdmin granatonatalia@gmail.com
        DocumentRoot /var/www/
        <Directory />
                Options FollowSymLinks
                AllowOverride all
        </Directory>
        <Directory /var/www/>
                Options FollowSymLinks
                AllowOverride all
                Order allow,deny
                allow from all
                Options ExecCGI Indexes FollowSymLinks MultiViews
                AddHandler cgi-script .cgi
        </Directory>
        ErrorLog ${APACHE_LOG_DIR}/error.log
        CustomLog ${APACHE_LOG_DIR}/access.log combined
RewriteEngine on
</VirtualHost>
```



# Recarregar o Apache2
systemctl restart apache2


# Criar os arquivos HTML e CGI
nano /var/www/index.html


```<!DOCTYPE html>
<html>
<head><meta charset="UTF-8"></head>
 <body>
  <form action="add.cgi" method="POST">
   <fieldset>
     <legend>Digite dois números a serem somados</legend>
     <label>primeiro número: <input type="number" name="num1"></label><br/>
     <label>segundo número: <input type="number" name="num2"></label><br/>
   </fieldset>
   <button>Somar</button>
  </form>
 </body>
</html>
```

nano /var/www/add.cgi 


```#!/usr/bin/env python3
import cgi, cgitb cgitb.enable()
input_data = cgi.FieldStorage()
print('Content-Type: text/html')
print('')
print('<h2>Resultado</h2>')
try:
    num1 = int(input_data["num1"].value)
    num2 = int(input_data["num2"].value)
except:
    print('<output>Desculpe, esse script funciona apenas números (integrais).</output>')
    raise SystemExit(1)
print('<output>{0} + {1} = {2}</output>'.format(num1, num2, num1 + num2))
```

# Adicionar permissões de acesso
```chmod 777 /var/www/index.html```
```chmod 777 /var/www/add.cgi```

## Verificando a aplicação
http://35.208.23.51/
