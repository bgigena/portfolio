# Proyecto 3: Stack de Monitoreo y Logging

Este proyecto implementa una solución completa de observabilidad para el Homelab.

## 🛠️ Componentes

- **Prometheus**: Base de datos de series temporales para métricas.
- **Grafana**: Visualización y dashboards.
- **Node Exporter**: Métricas del host (CPU, Memoria, Disco).
- **cAdvisor**: Métricas de contenedores Docker.

## 🚀 Cómo ejecutar

```bash
docker-compose up -d
```

## 📊 Acceso

- **Prometheus**: [http://localhost:9090](http://localhost:9090)
- **Grafana**: [http://localhost:3000](http://localhost:3000)
    - Usuario: `admin`
    - Contraseña: `admin`
- **cAdvisor**: [http://localhost:8090](http://localhost:8090)

## ⚙️ Configuración Inicial en Grafana

1.  Loguéate en Grafana.
2.  Ve a **Connections** -> **Data Sources**.
3.  Agrega **Prometheus**.
4.  URL: `http://prometheus:9090`.
5.  Guarda y prueba.
6.  Importa el Dashboard ID `1860` (Node Exporter Full) para ver métricas del host instantáneamente.
