# apache2-cgi
Implementação do servidor web Apache com módulo CGI. O CGI (Common Gateway Interface) é um serviço server-based o qual adiciona funcionalidade extra a uma página. Esta funcionalidade é fornecida por um 'pequeno' programa ou 'script' que é executado no servidor onde a página web fica. Estes programas podem ser feitos em diversas linguagens como Perl, PHP, C, Shell Script, etc.

# Instalando o servidor apache e habilitando o módulo chamado CGID.
apt-get install apache2
a2enmod cgid
a2enmod rewrite

# Reinicie o serviço
systemctl restart apache2

# Certifique-se de que o módulo cgi esteja sendo carregado no arquivo "/etc/apache2/mods-available/cgi.load":
nano /etc/apache2/mods-available/cgi.load

# Agora verifique-se que ele esteja habilitado no arquivo "/etc/apache2/mods-enabled/cgi.load":
nano /etc/apache2/mods-enabled/cgi.load

# Informando ao apache qual o formato a ser manipulado para cgi-script no arquivo "/etc/apache2/mods-enabled/mime.conf"
nano /etc/apache2/mods-enabled/mime.conf

# Criando o primeiro script cgi
cd /usr/lib/cgi-bin
