# Garantindo os hosts
 HOSTS=$(head -n7 /etc/hosts)
 echo -e "$HOSTS" > /etc/hosts
 echo '10.100.35.10 ansible-server.reivs.example' >> /etc/hosts
 echo '10.100.35.20 webserver-01.reivs.example' >> /etc/hosts
 echo '10.100.35.30 webserver-02.reivs.example ' >> /etc/hosts