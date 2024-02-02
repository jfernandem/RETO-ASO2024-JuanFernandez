#!/bin/bash

# Actualizar el sistema
sudo apt update


# Instalar PostgreSQL
sudo apt install postgresql postgresql-contrib -y

# Iniciar y habilitar PostgreSQL
sudo systemctl start postgresql
sudo systemctl enable postgresql

# Configurar PostgreSQL para aceptar conexiones desde todas las direcciones
sudo sed -i "s/#listen_addresses = 'localhost'/listen_addresses = '*'/g" /etc/post>echo "host    all             all             0.0.0.0/0               md5" | sudo >
# Reiniciar PostgreSQL para aplicar los cambios
sudo systemctl restart postgresql

echo "La instalación de PostgreSQL se ha completado correctamente."
