# Proyecto de Gestión de Usuarios

Este proyecto es una aplicación web que permite gestionar los usuarios, mostrar su información, y realizar acciones como ver, editar y eliminar registros. Está diseñado con **React** en el frontend.

## Características

- Ver registros de usuarios.
- Editar registros de usuarios.
- Eliminar registros de usuarios.
- Interfaz de usuario limpia y responsiva.
- Modal emergente para ver los detalles de cada usuario.

## Tecnologías

- **React**: Framework de JavaScript para la construcción de la interfaz.
- **React Router**: Para la navegación entre diferentes vistas de la aplicación.
- **React Icons**: Para mostrar iconos en la interfaz de usuario.
- **CSS**: Estilos para el diseño de la interfaz.

## Instalación

### Clonar el repositorio

Primero, clona el repositorio en tu máquina local:

### ```bash

git clone https://github.com/alegoncer/proyectointegradoDAW.git

### Instalar las dependencias para el FRONTEND

Luego, instala las dependencias necesarias:

cd proyectointegradoDAW
npm install

## Ejecutar la aplicación

Para ejecutar la aplicación localmente, usa el siguiente comando:

npm start

La aplicación debería estar disponible en http://localhost:3000.

## Uso

    Cuando accedas a la aplicación, verás la lista de usuarios.
    Haz clic en los iconos de cada usuario para ver, editar o eliminar el registro.
    Los detalles del usuario se mostrarán en un modal emergente cuando selecciones "Ver registro".
    Se pueden realizar cambios en los usuarios y sus registros directamente desde los botones de "Editar" o "Eliminar".

## Contribuciones

Si deseas contribuir a este proyecto, por favor sigue los siguientes pasos:

    Haz un fork del repositorio.
    Crea una nueva rama (git checkout -b mi-nueva-rama).
    Realiza tus cambios y haz commit de los mismos (git commit -am 'Añadir nueva característica').
    Sube tus cambios a tu repositorio forked (git push origin mi-nueva-rama).
    Crea un pull request para que tus cambios sean revisados.

## Instalación para el BACKEND

### Clonar el repositorio

### Primero, clona el repositorio en tu máquina local:

git clone https://github.com/alegoncer/proyectointegradoDAW.git

### Instalar las dependencias para el BACKEND

### Luego, navega a la carpeta del backend e instala las dependencias necesarias:

cd proyectointegradoDAW/Back
composer install

### Configurar el entorno

Asegúrate de tener configurado el archivo .env con las credenciales adecuadas para tu base de datos y otras configuraciones. Si no tienes el archivo .env, puedes copiar el archivo de ejemplo:

cp .env.example .env

Edita el archivo .env y configura los valores de la base de datos, como el nombre de la base de datos, el usuario y la contraseña.
Generar la clave de la aplicación

### Para generar una clave única para tu aplicación, ejecuta el siguiente comando:

php artisan key:generate

### Ejecutar las migraciones

### Para crear las tablas en la base de datos, ejecuta las migraciones:

php artisan migrate

### Ejecutar el servidor de desarrollo

### Para ejecutar la aplicación backend localmente, utiliza el siguiente comando:

php artisan serve

El servidor debería estar disponible en http://localhost:8000.
