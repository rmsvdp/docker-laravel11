#Configuración básica de contenedores docker para entorno de desarrollo en Laravel11

## 1. Características del proyecto
* Sistema operativo Windows 11, con Docker Desktop
* Servidor Apache en puerto 8000
* Php 8.2
* Laravel 11
* MySQL 8.0
* Configuración de trabajo en carpeta medioambiente

## 2. Despliegue

1. Crear contenedores
   > docker compose up -d
3. Crear proyecto tipo
4. > docker exec -it laravel_app bash
   #> cd /var/www/html/medioambiente
   #> composer create-project --prefer-dist laravel/laravel .
   > cd /var/www/html/medioambiente
   > cd ..
   > chmod -R 777 .
5. Desde navegador comprobar http://localhost:8000
6. Copiar archivos fuentes en sus carpetas
7. Desde navegador comprobar http://localhost:8000/hola



   
