#!/bin/bash

echo "Después de 'docker pull store/oracle/database-enterprise:12.2.0.1'"

# Instalar netstart para poder tener herramientas de red
sudo apt install net-tools

# A continuación vamos a iniciar el contenedor del 'Oracle DB'
# IMPORTANTE, tener en cuenta que los puertos deben estar libres y abiertos
  # Puerto por defecto para Oracle (1521)
netstat -vap | grep 1521
  # Página de inicio de la BBDD, APEX (8080)
netstat -vap | grep 8080
docker run -d -p 8080:8080 -p 1521:1521 --name real-oracle-db store/oracle/database-enterprise:12.2.0.1
