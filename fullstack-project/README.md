# Proyecto 2: Blog Full-Stack "Autosuficiente"

Este proyecto demuestra la orquestación de múltiples contenedores utilizando **Docker Compose**.

## 🏗️ Arquitectura

- **Web**: Django 5.0 (Python 3.11)
- **Base de Datos**: PostgreSQL 15 (Alpine)
- **Orquestación**: Docker Compose

## 🚀 Cómo ejecutar

1.  **Construir y levantar los servicios:**
    ```bash
    docker-compose up -d --build
    ```

2.  **Aplicar migraciones (Inicialización de DB):**
    ```bash
    docker-compose run --rm web python manage.py migrate
    ```

3.  **Crear un Superusuario (para acceder al admin):**
    ```bash
    docker-compose run --rm web python manage.py createsuperuser
    ```

4.  **Acceder:**
    - Web: [http://localhost:8000](http://localhost:8000)
    - Admin: [http://localhost:8000/admin](http://localhost:8000/admin)

## 🔧 Detalles Técnicos

- **Persistencia**: Se utiliza un volumen de Docker (`pgdata`) para asegurar que los datos de la base de datos sobrevivan al reinicio de los contenedores.
- **Redes**: Los servicios se comunican a través de una red interna creada por Docker Compose. El servicio web accede a la base de datos utilizando el hostname `db`.
- **Variables de Entorno**: La configuración sensible (credenciales de DB) se inyecta a través del archivo `docker-compose.yml` (en un entorno real, usaríamos un archivo `.env`).
