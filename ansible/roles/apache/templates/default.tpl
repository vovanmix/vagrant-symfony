<VirtualHost *:80>
    DocumentRoot {{ doc_root }}
    <Directory {{ doc_root }}>
        # enable the .htaccess rewrites
        AllowOverride All
        Order allow,deny
        Allow from All
    </Directory>

    ErrorLog /var/log/apache2/error.log
    CustomLog /var/log/apache2/access.log combined
</VirtualHost>
