# Portfolio Contenerizado

Este proyecto representa el **Pilar 1** de mi roadmap DevOps: un sitio web estático servido eficientemente mediante un contenedor Docker optimizado.

## 🚀 Tecnologías

- **Frontend**: HTML5, CSS3 (Diseño Responsivo), JavaScript Vanilla.
- **Infraestructura**: Docker.
- **Servidor Web**: Nginx (Alpine Linux).

## 📋 Prerrequisitos

- Docker instalado y corriendo.

## 🛠️ Construcción y Despliegue

### 1. Construir la Imagen
Utilizamos un `Dockerfile` basado en `nginx:alpine` para mantener la imagen ligera.

```bash
docker build -t portfolio:v1 .
```

### 2. Ejecutar el Contenedor
Mapeamos el puerto 80 del contenedor al puerto 8080 del host.

```bash
docker run -d -p 8080:80 --name mi-portfolio portfolio:v1
```

### 3. Verificar
Abre tu navegador en [http://localhost:8080](http://localhost:8080).

## 📂 Estructura del Proyecto

```
.
├── Dockerfile      # Configuración de la imagen optimizada
├── index.html      # Estructura semántica del sitio
├── styles.css      # Estilos modernos y responsivos
├── script.js       # Interactividad básica
└── .dockerignore   # Exclusiones para el contexto de build
```

## 🔍 Decisiones de Diseño

- **Imagen Base**: Se eligió `nginx:alpine` por su tamaño reducido (<40MB) comparado con la imagen estándar de Nginx o Ubuntu.
- **Capas**: Se minimizó el número de capas en el Dockerfile copiando los assets directamente.
