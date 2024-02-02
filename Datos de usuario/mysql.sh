#!/bin/bash

# Actualizar el sistema
sudo apt update
# Instalar MySQL
sudo apt install mysql-server -y

# Iniciar y habilitar MySQL
sudo systemctl start mysql
sudo systemctl enable mysql

echo "La instalación de MySQL se ha completado correctamente."
