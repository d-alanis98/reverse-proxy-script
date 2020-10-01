#!/bin/bash
echo 'Configurando el reverse proxy del servidor Apache'
echo 'Vaciando archivo de configuración existente'
cat /dev/null > /etc/apache2/sites-enabled/000-default.conf
echo 'Copiando el archivo de configuración en /etc/apache2/sites-enabled/000-default.conf'
cat 000-default.conf.txt >  /etc/apache2/sites-enabled/000-default.conf
echo 'Habilitando modulos de Apache'
a2enmod proxy proxy_ajp proxy_http rewrite deflate headers proxy_balancer proxy_connect proxy_html
echo 'Reiniciando servidor Apache ...'
service apache2 restart
echo 'Configuración finalizada'


