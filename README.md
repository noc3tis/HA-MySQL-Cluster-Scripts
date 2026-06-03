# Clúster MySQL de Alta Disponibilidad y Observabilidad

Este repositorio contiene los scripts y archivos de configuración utilizados para desplegar una arquitectura de base de datos tolerante a fallos en Oracle Cloud Infrastructure (OCI).

## 🏗️ Arquitectura del Proyecto
* **Base de Datos:** MySQL 8.0 InnoDB Cluster (3 Nodos).
* **Balanceador:** MySQL Router.
* **Monitoreo:** Prometheus + mysqld_exporter.
* **Visualización:** Grafana.

## 📂 Estructura del Repositorio
El proyecto está dividido por funciones para facilitar su despliegue:

1. **`1-networking/`**: Scripts de `iptables` para habilitar la comunicación interna en la VCN.
2. **`2-database/`**: Configuraciones de inicialización del Group Replication y MySQL Router.
3. **`3-monitoring/`**: Archivos `.yml` y `.cnf` para la extracción de métricas.
4. **`4-security/`**: Scripts SQL para la habilitación del Audit Plugin.

## 🚀 Instrucciones de Uso
1. Clone este repositorio en la instancia de destino.
2. Otorgue permisos de ejecución a los scripts de shell: `chmod +x 1-networking/*.sh`
3. Copie los archivos `.cnf` y `.yml` a sus rutas restrictivas (ej. `/etc/prometheus/`) asegurando que los permisos sean `644` por seguridad.

## 👥 Equipo
- David Avalos Gonzalez #22130597
- Adrián Ríos Ramos #22130518
- Erik Gabriel Pérez Castro #22130850